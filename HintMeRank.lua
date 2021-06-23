-- Notes for me:
-- _G[varName] => das gleiche wie "getglobal(varName)" => "Get a global variable, from a string." ;; "getglobal("globalName")"

local PLAYER_LEVEL = UnitLevel("PLAYER") 

local CACHE = {
    -- will be used as cache for the maximum ranks for all spells available at the current player's level (therefor we need to reset that cache when the player levels up)
    maxSkillRanksAtLevel = {},
    classSpellIds = {},
    notifications = {}, -- used as cache for the chat area notifications about outranked spells
    outrankedSpellsUsed = {},
    outrankedSpellsUsedCOUNT = 0
}

local LevelUpEventBus = CreateFrame('Frame')
LevelUpEventBus:RegisterEvent('PLAYER_LEVEL_UP')
LevelUpEventBus:SetScript('OnEvent', 
    function(self, event, level) -- param list: level, healthDelta, powerDelta, numNewTalents, numNewPvpTalentSlots, strengthDelta, agilityDelta, staminaDelta, intellectDelta

        -- set the new level to the global var (that is used at various spots) and reset the cache so functions that use the cache are foreced to re-run their logic
        PLAYER_LEVEL = level -- never use UnitLevel("PLAYER") ... the docs say that this function may return a value that is out of sync and therefor wrong
        CACHE.maxSkillRanksAtLevel = {}

        -- CACHE.classSpellIds = {} -- nope - why should we reset this? its level independent

    end
)

local SpellWatchEventBus = CreateFrame('Frame')
SpellWatchEventBus:RegisterEvent("UNIT_SPELLCAST_SENT");
--SpellWatchEventBus:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED");
SpellWatchEventBus:SetScript("OnEvent",
    function(self, event, unit, target, castGUID, spellID)
        -- https://stackoverflow.com/questions/58754983/how-to-catch-the-event-of-a-instant-or-casting-spell
        if (event == "UNIT_SPELLCAST_SENT" and unit == "player") then
            -- prevent notifications for 10 minutes after a notification has been shown
            if CACHE.notifications[spellID] ~= nil and CACHE.notifications[spellID] > time() - 600 then
                return
            else
                CACHE.notifications[spellID] = nil
            end

            -- TODO this is mostly copied from the search / print loop... optimize this!
            -- => create function "isOutranked" or something
            local actionName = GetSpellInfo(spellID)
            local actionRank = GetSpellSubtext(spellID)
            local rank = tonumber(string.match(actionRank, '%S+$'))
            if rank ~= nil and isClassSpell(spellID) then
                local max_rank = findMaxAvailableRank(actionName)
                if rank < max_rank then
                    print(GetSpellLink(spellID) .. ' Rank ' .. rank .. ' used. Max available rank for you at level ' .. PLAYER_LEVEL .. ' is rank ' .. max_rank .. '!')
                    CACHE.notifications[spellID] = time()
                    --[[
                    if CACHE.outrankedSpellsUsed[spellID] == nil then
                        f.Messages:AddMessage(msg)
                        --f.Messages:SetMaxLines(CACHE.outrankedSpellsUsedCOUNT++)
                        CACHE.outrankedSpellsUsed[spellID] = true
                    end
                    ]]
                end
            end
        end
    end
)

local ActionBars = {
    Action = "Main Bar",
    MultiBarBottomLeft = "Bottom Left Bar",
    MultiBarBottomRight = "Bottom Right Bar",
    MultiBarRight = "Second Side Bar",
    MultiBarLeft = "First Side Bar"
}
function PrintOutrankedSpells() -- + push messages to the ui window
    -- source: https://www.wowinterface.com/forums/showthread.php?t=45731
    for barName, human_readable_bar_name in pairs(ActionBars) do -- iterate all bars
        for button_index = 1, 12 do -- 1 to 12: because we got 12 skill slots on each bar
            local button = _G[barName .. 'Button' .. button_index]
            local slot = ActionButton_GetPagedID(button) or ActionButton_CalculateAction(button) or button:GetAttribute('action') or 0
            if HasAction(slot) then
                local actionName, actionRank, _ -- _ => wozu ??
                --local actionType, id = GetActionInfo(slot)
                local actionType, id, actionSubType = GetActionInfo(slot) -- TODO refacter ID: call it spellId or so

                --if actionType == 'macro' then _, _ , id = GetMacroSpell(id) end
                --if actionType == 'item' then
                    --actionName = GetItemInfo(id)
                --elseif actionType == 'spell' or (actionType == 'macro' and id) then
                if actionType == 'spell' then
                    --actionName, nilRank, icon, castTime, minRange, maxRange = GetSpellInfo(id) -- the second parameter has been changes by blizzard to now always return NIL - not the rank anymore... 
                    actionName = GetSpellInfo(id)
                    actionRank = GetSpellSubtext(id)
                end
                if actionName then
                    local rank = tonumber(string.match(actionRank, '%S+$'))
                    if rank ~= nil and isClassSpell(id) then
                        --print(button:GetName(), GetSpellLink(id), actionRank, "RANK:", rank, 'ID:' .. id) -- ,actionName
                        local max_rank = findMaxAvailableRank(actionName)

                        --print('max rank for', actionName, 'is', max_rank)

                        if rank < max_rank then
                            --print(GetSpellLink(id) .. ' @ position ' .. button_index .. ' in ' .. human_readable_bar_name .. ' has rank ' .. rank .. '. Max available rank for you at level ' .. PLAYER_LEVEL .. ' is ' .. max_rank .. '!')
                            addMessage(GetSpellLink(id) .. ' @ position ' .. button_index .. ' in ' .. human_readable_bar_name .. ' has rank ' .. rank .. '. Max available rank for you at level ' .. PLAYER_LEVEL .. ' is ' .. max_rank .. '!')
                        end

                        --print(actionName)
                    end
                end
            end
        end
    end
end

function findMaxAvailableRank(spellName)

    if CACHE.maxSkillRanksAtLevel[spellName] ~= nil then
        return CACHE.maxSkillRanksAtLevel[spellName]
    end

    local max_rank = -1
    for level_req_for_spell, spell_ids in pairs(_G["SpellsByLevel"]) do
        if level_req_for_spell <= PLAYER_LEVEL then
            for _, skill_id in ipairs(spell_ids) do

                local spell_name = GetSpellInfo(skill_id)
                local SpellSubtext = GetSpellSubtext(skill_id)

                if(SpellSubtext ~= nil) then
                    local rank = tonumber(string.match(SpellSubtext, '%S+$'))
                    if spell_name == spellName then
                        if rank > max_rank then
                            max_rank = rank
                        end
                    end
                end
                
            end
        end
    end

    CACHE.maxSkillRanksAtLevel[spellName] = max_rank

    return max_rank
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

-- register slash commands...
SLASH_HINTMERANK1, SLASH_HINTMERANK2 = '/hmr', '/hintmerank';
SlashCmdList["HINTMERANK"] = function()
    
    --TestPrintSkills()
    --TestCreateTextFrame()
    --TestCreateTextFrameTwo()

    --TestCreateTextFrameThree()

    --TestCreateTextFrameFour()

    f.Messages:Clear()
    PrintOutrankedSpells()
    f:Show()

    --TestPrintSkilMatch()
end 