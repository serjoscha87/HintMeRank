-- Notes for me:
-- _G[varName] => das gleiche wie "getglobal(varName)" => "Get a global variable, from a string." ;; "getglobal("globalName")"

local PLAYER_LEVEL = UnitLevel("PLAYER") 

local CACHE = {
    -- will be used as cache for the maximum ranks for all spells available at the current player's level (therefor we need to reset that cache when the player levels up)
    maxSkillRanksAtLevel = {}
    classSpellIds = {}
}

local LevelUpEventBus = CreateFrame('Frame')
LevelUpEventBus:RegisterEvent('PLAYER_LEVEL_UP')
LevelUpEventBus:SetScript('OnEvent', 
    function(self, event, level) -- param list: level, healthDelta, powerDelta, numNewTalents, numNewPvpTalentSlots, strengthDelta, agilityDelta, staminaDelta, intellectDelta

        print("LEVEL UP!!")
        print("you are now level " .. level)

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
            print("I am casting:", castGUID, spellID)
        end
    end
);

local ActionBars = {
    Action = "Main Bar",
    MultiBarBottomLeft = "Bottom Left Bar",
    MultiBarBottomRight = "Bottom Right Bar",
    MultiBarRight = "Second Side Bar",
    MultiBarLeft = "First Side Bar"
}
function PrintOutrankedSpells()
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
                        -- TODO gelassenheit fällt damit zB auch weg .. ich muss also irgendwie rausfinden wie ich castbare spells identifiziere
                        --if not (minRange == 0 and maxRange == 0 and castTime == 0) then -- thow out spells that dont have cast time or range (like cooking, first aid etc)
                        --if isClassSpell(id) then
                            -- castTime, minRange, maxRange, actionType, actionSubType
                            --print(button:GetName(), GetSpellLink(id), actionRank, "RANK:", rank, 'ID:' .. id) -- ,actionName
                            --isMostCurrentSpellRank(id, rank)
                            local max_rank = findMaxAvailableRank(actionName)

                            --print('max rank for', actionName, 'is', max_rank)

                            if rank < max_rank then
                                print(actionName .. ' @ position ' .. button_index .. ' in ' .. human_readable_bar_name .. ' has rank ' .. rank .. '. Max available rank for you at level ' .. PLAYER_LEVEL .. ' is ' .. max_rank .. '!')
                            end

                            --print(actionName)
                        --end
                    end
                end
            end
        end
    end
end

--local maxAvailCache = {} -- todo use cache var ....

function findMaxAvailableRank(spell_name)

    if CACHE.maxSkillRanksAtLevel[spell_name] ~= nil then
        return CACHE.maxSkillRanksAtLevel[spell_name]
    end

    local max_rank = -1
    for level_req_for_spell, sub_table in pairs(_G["SpellsByLevel"]) do
        if level_req_for_spell <= PLAYER_LEVEL then
            for index, skill_row in pairs(sub_table) do

                local spell_name_internal = GetSpellInfo(skill_row["id"])
                --local rank = tonumber(string.match(GetSpellSubtext(skill_row["id"]), '%S+$'))

                --print(spell_name, spell_name_internal, GetSpellSubtext(skill_row["id"]))

                local SpellSubtext = GetSpellSubtext(skill_row["id"])

                if(SpellSubtext ~= nil) then
                    local rank = tonumber(string.match(SpellSubtext, '%S+$'))
                    if spell_name_internal == spell_name then
                        if rank > max_rank then
                            max_rank = rank
                        end
                    end
                end
                
                --print(actionName, actionRank)
            end
        end
    end
    --print('max rank for', spell_name, 'is', max_rank)
    CACHE.maxSkillRanksAtLevel[spell_name] = max_rank
    return max_rank
end

function isClassSpell(spellId)
    if CACHE.classSpellIds[spellId] ~= nil then
        return CACHE.classSpellIds[spellId]
    end
    for level_req_for_spell, sub_table in pairs(_G["SpellsByLevel"]) do
        for index, skill_row in pairs(sub_table) do
            if skill_row["id"] === spellId then
                CACHE.classSpellIds[spellId] = true
                return true
            end
        end
    end
    CACHE.classSpellIds[spellId] = false
    return false
end

--local SpellsByLevel = ...

--print(SpellsByLevel)
--print("==============")
--print(_G["SpellsByLevel"])

function TestPrintSkills()

    for level, sub_table in pairs(_G["SpellsByLevel"]) do
        if level <= PLAYER_LEVEL then
            print("============= \n level: " .. level)
            for index, skill_row in pairs(sub_table) do
                --print(index, skill_row)
                --for index2, foo in pairs(skill_row) do
                    --print(index2, foo)
                --end

                local actionName = GetSpellInfo(skill_row["id"])
                local actionRank = GetSpellSubtext(skill_row["id"])

                --print(skill_row["cost"])
                print(actionName, actionRank)
            end
        end
    end

end

function TestCreateTextFrame()

    local f1 = CreateFrame("ScrollFrame",nil,UIParent)
    f1:SetWidth(640) 
    f1:SetHeight(480) 
    -- f1:SetAlpha(.90);
    f1:SetPoint("CENTER",0,0)
    f1.text = f1:CreateFontString(nil,"ARTWORK") 
    f1.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
    f1.text:SetPoint("CENTER",0,0)
    f1:Hide()
    
     
    local function displayupdate(show, message)
        if show == 1 then
            f1.text:SetText(message)
            f1:Show()
        else
            f1:Hide()
        end
    end
     
    displayupdate(1, "|cffffffffmyobjective1")
    --or 
    --displayupdate(2, "|cffffffffmyobjective2")
    --or 
    --displayupdate() -- to just hide both
    --or possibly display both objectives in the one fontstring
    --displayupdate(1, "myobjective1\nmyobjective2")
     
    --To use variables:
    --local objective1 = "myobjective1"
    --local objective2 = "myobjective2"
    --displayupdate(1, objective1.."\n"..objective2)

end 

function TestCreateTextFrameTwo()
    local f = CreateFrame("ScrollingMessageFrame",nil,UIParent)
    f:SetFrameStrata("BACKGROUND")
    f:SetWidth(128) -- Set these to whatever height/width is needed 
    f:SetHeight(64) -- for your Texture

    local t = f:CreateTexture(nil,"BACKGROUND")
    t:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Factions.blp")
    t:SetAllPoints(f)
    f.texture = t

    f:SetPoint("CENTER",0,0)
    f:Show()
end

function TestCreateTextFrameThree()
    --parent frame 
    local frame = CreateFrame("Frame", "MyFrame", UIParent) 
    frame:SetSize(650, 200) 
    frame:SetPoint("CENTER") 
    local texture = frame:CreateTexture() 
    texture:SetAllPoints() 
    texture:SetColorTexture(0,0,0,.6) 
    frame.background = texture 

    --scrollframe 
    scrollframe = CreateFrame("ScrollFrame", nil, frame) 
    scrollframe:SetPoint("TOPLEFT", 10, -10) 
    scrollframe:SetPoint("BOTTOMRIGHT", -10, 10) 
    --local texture = scrollframe:CreateTexture() 
    --texture:SetAllPoints() 
    --texture:SetTexture(.1,.5,.5,.3) 
    frame.scrollframe = scrollframe 

    --scrollbar 
    scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate") 
    scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", 4, -16) 
    scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 4, 16) 
    scrollbar:SetMinMaxValues(1, 200) 
    scrollbar:SetValueStep(1) 
    scrollbar.scrollStep = 1 
    scrollbar:SetValue(0) 
    scrollbar:SetWidth(16) 
    scrollbar:SetScript("OnValueChanged", 
        function (self, value) 
            self:GetParent():SetVerticalScroll(value) 
        end
    ) 
    --local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND") 
    --scrollbg:SetAllPoints(scrollbar) 
    --scrollbg:SetTexture(0, 0, 0, 0.4) 
    frame.scrollbar = scrollbar 

    --content frame 
    local content = CreateFrame("Frame", nil, scrollframe) 
    content:SetSize(128, 128) 
    --local texture = content:CreateTexture() 
    --texture:SetAllPoints() 
    --texture:SetTexture("Interface\\GLUES\\MainMenu\\Glues-BlizzardLogo") 
    --content.texture = texture 

    content.text = content:CreateFontString(nil,"ARTWORK") 
    content.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
    content.text:SetPoint("CENTER",0,0)

    content.text:SetText('das ist ein test')

    scrollframe.content = content 

    scrollframe:SetScrollChild(content)





    frame:EnableMouse(true)
    frame:SetMovable(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
    frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
    frame:SetFrameStrata("FULLSCREEN_DIALOG")

    local button = CreateFrame("button","MyAddonButton", frame, "UIPanelButtonTemplate")
    button:SetHeight(20)
    button:SetWidth(22)
    button:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0)
    button:SetText("X")
    button:SetScript("OnClick", 
        function(self) 
            --PlaySound("igMainMenuOption") 
            self:GetParent():Hide() 
        end
    )


end

-- register slash commands...
SLASH_HINTMERANK1, SLASH_HINTMERANK2 = '/hmr', '/hintmerank';
SlashCmdList["HINTMERANK"] = function()
   PrintOutrankedSpells()
   --TestPrintSkills()
   --TestCreateTextFrame()
   --TestCreateTextFrameTwo()
   
   --TestCreateTextFrameThree()

   --TestPrintSkilMatch()
end 