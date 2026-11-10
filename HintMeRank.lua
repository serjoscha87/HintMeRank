-- Notes for me:
-- _G[varName] => das gleiche wie "getglobal(varName)" => "Get a global variable, from a string." ;; "getglobal("globalName")"
 
local PLAYER_CLASS = select(2, UnitClass("player")) -- contains the UPPERCAE class name (unlocalized)

Spells = _G["SpellsById"][PLAYER_CLASS]

-- TODO for rewriting the codebase I removed caching to keep it simple - for sake of performance it should probably be readded in the main funcs
local CACHE = {
    -- will be used as cache for the maximum ranks for all spells available at the current player's level (therefor we need to reset that cache when the player levels up)
    maxSkillRanksAtLevel = {},
    classSpellIds = {},
    notifications = {}, -- used as cache for the chat area notifications about outranked spells
    outrankedSpellsUsed = {},
}

-- initially set set notification delay to an default val if it was not set by the user yet
local AddonLoadedEventBus = CreateFrame('Frame')
AddonLoadedEventBus:RegisterEvent("ADDON_LOADED")
AddonLoadedEventBus:SetScript('OnEvent', function(self, event, addonName)
    if addonName == "HintMeRank" then
        if type(NotificationDelay) ~= "number" then
            NotificationDelay = 10
            print(string.format("|cffFF0000[HMR] Broken Notification-Delay fixed! Resetted to 10 minutes again.|r"))
        end
        if SpellIgnoreList == nil then
            SpellIgnoreList = {}
        end
    end
end)

local LevelUpEventBus = CreateFrame('Frame')
LevelUpEventBus:RegisterEvent('PLAYER_LEVEL_UP')
LevelUpEventBus:SetScript('OnEvent', 
    function(self, event, level) -- params passed to this event handler: level, healthDelta, powerDelta, numNewTalents, numNewPvpTalentSlots, strengthDelta, agilityDelta, staminaDelta, intellectDelta
        -- set the new level to the global var (that is used at various spots) and reset the cache so functions that use the cache are foreced to re-run their logic
        CACHE.maxSkillRanksAtLevel = {}
    end
)

local SpellWatchEventBus = CreateFrame('Frame')
SpellWatchEventBus:RegisterEvent("UNIT_SPELLCAST_SENT"); -- if we need to hook sucessfully casting: UNIT_SPELLCAST_SUCCEEDED
SpellWatchEventBus:SetScript("OnEvent", -- WHEN PLAYER CASTS A SPELL
    function(self, event, unit, target, castGUID, spellId)
        -- https://stackoverflow.com/questions/58754983/how-to-catch-the-event-of-a-instant-or-casting-spell
        if (event == "UNIT_SPELLCAST_SENT" and unit == "player") then 
            -- prevent notifications for x minutes after a notification has been shown
            if CACHE.notifications[spellId] ~= nil and CACHE.notifications[spellId] > time() - (NotificationDelay*60) then
                return
            else
                CACHE.notifications[spellId] = nil
            end

            local actionRankRaw = getSpellSubtext(spellId)
            if actionRankRaw ~= nil then
                local rankNumeric = tonumber(string.match(actionRankRaw, '%S+$')) -- pulls out the number from the rank string
                if rankNumeric ~= nil and isClassSpell(spellId) and isSpellOutranked(spellId) and not isSpellIgnored(spellId) then
                    local actionName = getSpellInfo(spellId)
                    local maxRank_SpellId = findMaxAvailableRank(spellId) -- returns the spell-id of the max avail. rank
                    -- 1. (en) chat msg format str:   %s %s used. Max available rank for you at level %d is: %s %s!
                    -- Example out.:                  [Moonfire] Rank X used. Max available rank for you at level Y is [Moonfire] Rank Z
                    print(string.format(i18n["outranked spell used chat"], getSpellLink(spellId), actionRankRaw, UnitLevel("PLAYER"), getSpellLink(maxRank_SpellId), getSpellSubtext(maxRank_SpellId) or "?"))
                    fadingFrame:AddMessage(string.format(i18n["outranked spell used fading"], actionName, actionRankRaw, UnitLevel("PLAYER"), getSpellSubtext(maxRank_SpellId)))
                    CACHE.notifications[spellId] = time()
                    -- PlaySound(3175) -- does not work however
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

function collectOutrankedSpells() 
    outranked_spells_found = 0

    infoRowsData = {} -- just reset the data we collected before

    for buttonName, actionButtonInstance in pairs(_G) do
        local barName, buttonIndex
        if type(buttonName) == "string" then
            barName, buttonIndex = buttonName:match("^(.-)Button(%d+)$")
        end
        local isActionBarButton = barName == "Action" or barName == "MainMenuBar" or (barName and barName:match("^MultiBar"))
        if isActionBarButton and tonumber(buttonIndex) <= 12 and actionButtonInstance then
            local slot = getActionButtonSlot(actionButtonInstance)

            if type(slot) == "number" and slot > 0 and HasAction(slot) then
                local actionType, spellId = GetActionInfo(slot)
                if actionType == "spell" and isClassSpell(spellId) and isSpellOutranked(spellId) and not isSpellIgnored(spellId) then
                    local slotRankNumeric = tonumber(Spells[spellId]["rank"])
                    local maxRankSpellId = findMaxAvailableRank(spellId)
                    local maxRankNumeric = maxRankSpellId and tonumber(Spells[maxRankSpellId]["rank"])
                    if slotRankNumeric and maxRankNumeric and slotRankNumeric < maxRankNumeric then
                        table.insert(infoRowsData, {
                            ["currentSpellId"] = spellId,
                            ["maxRankSpellId"] = maxRankSpellId,
                            ["actionButtonInstance"] = actionButtonInstance
                        })
                        outranked_spells_found = outranked_spells_found + 1
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

mainFrameInitialized = false

--
-- register slash commands
--
SLASH_HINTMERANK1, SLASH_HINTMERANK2 = '/hmr', '/hintmerank';
SlashCmdList["HINTMERANK"] = function(paramStr)
    local cmd, cmd_param = paramStr:match("^(%S*)%s*(.-)$")
     -- dump shami skills
    if cmd == "debug" then
        HMR_ShowDebugWindow()
    elseif cmd == "dump" then
        if cmd_param == "shaman" then
            print ("NYI: dump shaman spells")
        elseif cmd_param == "paladin" then
            print("NYI: dump pala spells")
        end
    elseif cmd == "notification-delay" or cmd == "nd" then
        if cmd_param == "get" then
            print(string.format("|cffFFFF00[HMR] Current Notification-Delay: " .. NotificationDelay .. " minutes.|r"))
        else
            local newDelay = tonumber(cmd_param)
            if newDelay ~= nil and newDelay > 0 then
                NotificationDelay = newDelay
                print(string.format("|cffFFFF00[HMR] Notification-Delay successfully set to " .. newDelay .. " minutes.|r"))
            else
                print(string.format("|cffFFFF00[HMR] ERROR. Notification-Delay could not be set. Please try again and only pass a posive number.|r"))
            end
        end
    elseif cmd == "cache" then
        if cmd_param == "clear" then
            CACHE.maxSkillRanksAtLevel = {}
            print(string.format("|cffFFFF00[HMR] Cache cleared.|r"))
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
