-- Notes for me:
-- _G[varName] => das gleiche wie "getglobal(varName)" => "Get a global variable, from a string." ;; "getglobal("globalName")"

local PLAYER_LEVEL = UnitLevel("PLAYER") 

local CACHE = {
    -- will be used as cache for the maximum ranks for all spells available at the current player's level (therefor we need to reset that cache when the player levels up)
    maxSkillRanksAtLevel = {},
    classSpellIds = {},
    notifications = {}, -- used as cache for the chat area notifications about outranked spells
    outrankedSpellsUsed = {},
    --outrankedSpellsUsedCOUNT = 0
}

local AddonLoadedEventBus = CreateFrame('Frame')
AddonLoadedEventBus:RegisterEvent("ADDON_LOADED")
AddonLoadedEventBus:SetScript('OnEvent', function(self, event, addonName)
    if addonName == "HintMeRank" then
        if NotificationDelay == nil then
            NotificationDelay = 10
        end
        print(
            string.format(
                "|cffFFFF00%s|r", 
                "HintMeRank loaded. Type /hmr to analyze your actionbars.\nCurrent notification delay is: " .. NotificationDelay
            )
        )
    end
end)

local LevelUpEventBus = CreateFrame('Frame')
LevelUpEventBus:RegisterEvent('PLAYER_LEVEL_UP')
LevelUpEventBus:SetScript('OnEvent', 
    function(self, event, level) -- params passed to this event handler: level, healthDelta, powerDelta, numNewTalents, numNewPvpTalentSlots, strengthDelta, agilityDelta, staminaDelta, intellectDelta
        -- set the new level to the global var (that is used at various spots) and reset the cache so functions that use the cache are foreced to re-run their logic
        PLAYER_LEVEL = level -- NOTE to my self: never use UnitLevel("PLAYER") ... the docs say that this function may return a value that is out of sync and therefor wrong
        CACHE.maxSkillRanksAtLevel = {}
    end
)

local SpellWatchEventBus = CreateFrame('Frame')
SpellWatchEventBus:RegisterEvent("UNIT_SPELLCAST_SENT"); -- if we need to hook sucessfully casting: UNIT_SPELLCAST_SUCCEEDED
SpellWatchEventBus:SetScript("OnEvent", -- WHEN PLAYER CASTS A SPELL
    function(self, event, unit, target, castGUID, spellID)
        -- https://stackoverflow.com/questions/58754983/how-to-catch-the-event-of-a-instant-or-casting-spell
        if (event == "UNIT_SPELLCAST_SENT" and unit == "player") then 
            -- prevent notifications for x minutes after a notification has been shown
            if CACHE.notifications[spellID] ~= nil and CACHE.notifications[spellID] > time() - (NotificationDelay*60) then
                return
            else
                CACHE.notifications[spellID] = nil
            end

            -- TODO this is mostly copied from the search / print loop... optimize this!
            -- => create function "isOutranked" or something
            local actionName = GetSpellInfo(spellID)
            local actionRank = GetSpellSubtext(spellID) -- raw formatted as string
            if actionRank == nil then -- => fixt möglicherweise den fehler den die zeile hier drunter schon mal verursacht hat, wenn man zB türen geöffnet hat
                return
            end
            local rank = tonumber(string.match(actionRank, '%S+$')) -- TODO hier knallt es wenn man zB die tür zum kloster auf macht ---> fixed mit den drei zeilen hier drüber?
            if rank ~= nil and isClassSpell(spellID) then
                local max_rank, max_rank_spell_id = findMaxAvailableRank(actionName)
                if rank < max_rank then
                    print(string.format(i18n["outranked spell used chat"], GetSpellLink(spellID), actionRank, PLAYER_LEVEL, GetSpellLink(max_rank_spell_id), GetSpellSubtext(max_rank_spell_id)))
                    fadingFrame:AddMessage(string.format(i18n["outranked spell used fading"], actionName, actionRank, PLAYER_LEVEL, GetSpellSubtext(max_rank_spell_id)))
                    CACHE.notifications[spellID] = time()
                    PlaySound(3175)
                end
            end
        end
    end
)

infoRowsData = {
    -- map with:
    -- {
    --   spellId (int)  
    --   maxRankSpellId (int) 
    --   actionButtonInstance (object / instance of a button or something)
    -- }
    -- => this data then will be used by the renderInfoRows function (see UI_InfoFrame)
}

local ActionBars = {
    Action = "Main Bar",
    MultiBarBottomLeft = "Bottom Left Bar",
    MultiBarBottomRight = "Bottom Right Bar",
    MultiBarRight = "Second Side Bar",
    MultiBarLeft = "First Side Bar"
}
function collectOutrankedSpells() 

    outranked_spells_found = 0

    infoRowsData = {} -- just reset the data we collected before

    -- source: https://www.wowinterface.com/forums/showthread.php?t=45731
    for barName, human_readable_bar_name in pairs(ActionBars) do -- iterate all bars
        for button_index = 1, 12 do -- 1 to 12: because we got 12 skill slots on each bar
            local actionButtonInstance = _G[barName .. 'Button' .. button_index]
            local slot = ActionButton_GetPagedID(actionButtonInstance) or ActionButton_CalculateAction(actionButtonInstance) or actionButtonInstance:GetAttribute('action') or 0
            if HasAction(slot) then
                local actionName, actionRankRaw
                --local actionType, id = GetActionInfo(slot)
                local actionType, spellId, actionSubType = GetActionInfo(slot)

                --if actionType == 'macro' then _, _ , id = GetMacroSpell(id) end
                --if actionType == 'item' then
                    --actionName = GetItemInfo(id)
                --elseif actionType == 'spell' or (actionType == 'macro' and id) then
                if actionType == 'spell' then
                    --actionName, nilRank, icon, castTime, minRange, maxRange = GetSpellInfo(id) -- the second parameter has been changes by blizzard to now always return NIL - not the rank anymore... 
                    actionName = GetSpellInfo(spellId)
                    actionRankRaw = GetSpellSubtext(spellId)
                end
                if actionName then
                    local rank = tonumber(string.match(actionRankRaw, '%S+$'))
                    if rank ~= nil and isClassSpell(spellId) then
                        local max_rank, max_rank_spell_id = findMaxAvailableRank(actionName)

                        if rank < max_rank then
                            table.insert(infoRowsData, {
                                ["currentSpellId"] = spellId,
                                ["maxRankSpellId"] = max_rank_spell_id,
                                ["actionButtonInstance"] = actionButtonInstance
                            })

                            outranked_spells_found = outranked_spells_found + 1
                        end
                    end
                end
            end
        end
    end
    if outranked_spells_found == 0 then
        allSpellsMaxRankInfoText:Show()
    else
        allSpellsMaxRankInfoText:Hide()
    end
end

function findMaxAvailableRank(spellName)

    if CACHE.maxSkillRanksAtLevel[spellName] ~= nil then
        return CACHE.maxSkillRanksAtLevel[spellName][1], CACHE.maxSkillRanksAtLevel[spellName][2] -- lost 40 minutes again because I forgot that lua uses 1 as first slot for arrays/tables - not 0; thanks for that
    end

    local max_rank = -1
    local max_rank_spell_id = -1
    for level_req_for_spell, spell_ids in pairs(_G["SpellsByLevel"]) do
        if level_req_for_spell <= PLAYER_LEVEL then
            for _, skill_id in ipairs(spell_ids) do

                local spell_name = GetSpellInfo(skill_id)
                local SpellSubtext = GetSpellSubtext(skill_id)

                if(SpellSubtext ~= nil) then
                    local rank = tonumber(string.match(SpellSubtext, '%S+$'))
                    if spell_name ~= nil then -- on mages at some level this line caueses lua erros - however this var MAY BE empty... so lets check for this
                        if spell_name == spellName then
                            if rank > max_rank then
                                max_rank = rank
                                max_rank_spell_id = skill_id
                            end
                        end
                    else
                        max_rank = 1 -- TODO this seems to cause problems - perhaps return nil and check for nil within the functions that call findMaxAvailRank..
                    end
                end
                
            end
        end
    end

    CACHE.maxSkillRanksAtLevel[spellName] = { max_rank, max_rank_spell_id }

    return max_rank, max_rank_spell_id
end

function isClassSpell(spellId)
    if CACHE.classSpellIds[spellId] ~= nil then
        return CACHE.classSpellIds[spellId]
    end
    for _, spell_ids in pairs(_G["SpellsByLevel"]) do
        for _, spell_id in ipairs(spell_ids) do
            if spell_id == spellId then
                CACHE.classSpellIds[spellId] = true
                return true
            end
        end
    end
    CACHE.classSpellIds[spellId] = false
    return false
end

mainFrameInitialized = false

--
-- register slash commands
--
SLASH_HINTMERANK1, SLASH_HINTMERANK2 = '/hmr', '/hintmerank';
SlashCmdList["HINTMERANK"] = function(paramStr)
    local cmd, cmd_param = paramStr:match("^(%S*)%s*(.-)$")
     -- dump shami skills
    if cmd == "dump" then
        if cmd_param == "shaman" then
            print ("NYI: dump shaman spells")
        elseif cmd_param == "paladin" then
            print("NYI: dump pala spells")
        end
    elseif cmd == "notification-delay" or cmd == "nd" then
        if cmd_param == "get" then
            print("Notification-Delay: " .. NotificationDelay)
        else
            NotificationDelay = cmd_param
        end
    elseif cmd == "cache" then
        if cmd_param == "clear" then
            CACHE.maxSkillRanksAtLevel = {}
            print("HMR: Cache cleared")
        end
    else
        if mainFrameInitialized == false then
            createMainWindow()
            mainFrameInitialized = true
        end
        collectOutrankedSpells()
        renderInfoRows()
        f:Show()
    end
end 
