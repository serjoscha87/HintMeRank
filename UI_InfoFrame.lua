-- for frames cannot be disposed we need to reuse them - so in order to not have thousands of buttons when one calls the ui of the addon multiple times - we need to reuse buttons

infoRowsUi = {} -- NOTE: this ui element holder table can ONLY GROW! (reason: see above)
infoRowAmount = 0 -- the overall amount of info rows - also this can only grow
infoRowAmountCurrent = 1 -- the amount of currently visible rows, start from 1 because of bottom buttons
infoRowMaxWidth = -1 -- the maximum width over all rows
function renderInfoRows()

    -- at first: hide all previous buttons
    for i=1,infoRowAmount,1 do
        infoRowsUi[i]["container"]:Hide()
    end

    infoRowAmountCurrent = 1

    -- then process the list of buttons we need ...
    for rowIndex, rowTable in pairs(infoRowsData) do

        infoRowAmountCurrent = infoRowAmountCurrent + 1

        local currentSpellId = rowTable["currentSpellId"]
        local maxRankSpellId = rowTable["maxRankSpellId"]
        local actionButtonInstance = rowTable["actionButtonInstance"]
        
        local actionName = GetSpellInfo(currentSpellId)

        --
        -- STEP 1: freshly create all elements (because they do not yet exist)
        -- 
        if rowIndex > infoRowAmount then
            infoRowAmount = infoRowAmount + 1

            infoRowsUi[rowIndex] = {
                ["container"] = nil,
                -- container's components:
                ["spellNameLabel"] = nil,
                ["previousRankBtn"] = nil,
                ["textLabel1"] = nil, -- filler text
                ["highestRankBtn"] = nil,
                ["textLabel2"] = nil, -- outro text
                ["textLabel3"] = nil, -- or text
                ["ignoreOneBtn"] = nil,
                ["ignoreAllBtn"] = nil,
                ["textDot"] = nil, -- dot text
                ["uprankBtn"] = nil
            }

            -- info row container frame
            infoRowsUi[rowIndex]["container"] = CreateFrame("Frame", nil, f, BackdropTemplateMixin and "BackdropTemplate")
            infoRowsUi[rowIndex]["container"]:SetPoint("TOPLEFT", 5, -1*(35*rowIndex)) -- x, y
            infoRowsUi[rowIndex]["container"]:SetBackdrop({
                -- https://github.com/Gethe/wow-ui-textures/tree/classic
                bgFile = "Interface/FrameGeneral/UI-Background-Rock",
                edgeFile = "Interface/glues/Common/TextPanel-Border",
                tile = true,
                edgeSize = 8,
                tileSize = 256
            })

            --
            -- info row elements
            --            

            -- SPELL NAME
            infoRowsUi[rowIndex]["spellNameLabel"] = infoRowsUi[rowIndex]["container"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            infoRowsUi[rowIndex]["spellNameLabel"]:SetPoint("LEFT", 10, 0)

            -- PREVIOUS RANK BTN
            infoRowsUi[rowIndex]["previousRankBtn"] = CreateFrame("Button", nil, infoRowsUi[rowIndex]["container"], "UIPanelButtonTemplate")

            -- FILLER TEXT
            infoRowsUi[rowIndex]["textLabel1"] = infoRowsUi[rowIndex]["container"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            infoRowsUi[rowIndex]["textLabel1"]:SetText(i18n["info row chunks"][1]) -- static text

            -- HIGHEST RANK BTN
            infoRowsUi[rowIndex]["highestRankBtn"] = CreateFrame("Button", nil, infoRowsUi[rowIndex]["container"], "UIPanelButtonTemplate") 

            -- OUTRO TEXT
            infoRowsUi[rowIndex]["textLabel2"] = infoRowsUi[rowIndex]["container"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            infoRowsUi[rowIndex]["textLabel2"]:SetText(i18n["info row chunks"][2]) -- static text

            -- OR TEXT
            infoRowsUi[rowIndex]["textLabel3"] = infoRowsUi[rowIndex]["container"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            infoRowsUi[rowIndex]["textLabel3"]:SetText(i18n["info row chunks"][5]) -- static text

            -- IGNORE BTNS
            infoRowsUi[rowIndex]["ignoreOneBtn"] = CreateFrame("Button", nil, infoRowsUi[rowIndex]["container"], "UIPanelButtonTemplate")
            infoRowsUi[rowIndex]["ignoreAllBtn"] = CreateFrame("Button", nil, infoRowsUi[rowIndex]["container"], "UIPanelButtonTemplate")

            -- DOT TEXT
            infoRowsUi[rowIndex]["textDot"] = infoRowsUi[rowIndex]["container"]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            infoRowsUi[rowIndex]["textDot"]:SetText(".") -- static text

            -- UP-RANK BTN
            infoRowsUi[rowIndex]["uprankBtn"] = CreateFrame("Button", nil, infoRowsUi[rowIndex]["container"], "UIPanelButtonTemplate")

        end

        --
        -- STEP 2: elements exist - reuse them 
        -- 

        -- container
        infoRowsUi[rowIndex]["container"]:SetScript("OnEnter", function()
            _G.ActionButton_ShowOverlayGlow(actionButtonInstance)
        end)
        infoRowsUi[rowIndex]["container"]:SetScript("OnLeave", function()
            _G.ActionButton_HideOverlayGlow(actionButtonInstance)
        end)

        local nextElemPos = 0 -- helper var that is successively increased after each component in order for the next component to know where to be placed on the x axis

        -- SPELL NAME
        infoRowsUi[rowIndex]["spellNameLabel"]:SetText(actionName)

        nextElemPos = infoRowsUi[rowIndex]["spellNameLabel"]:GetStringWidth() + 15

        -- PREVIOUS RANK BTN
        infoRowsUi[rowIndex]["previousRankBtn"]:SetText(GetSpellSubtext(currentSpellId))
        infoRowsUi[rowIndex]["previousRankBtn"]:SetSize(infoRowsUi[rowIndex]["previousRankBtn"]:GetTextWidth()+20, 22)
        infoRowsUi[rowIndex]["previousRankBtn"]:SetPoint("LEFT", nextElemPos, 0)
        infoRowsUi[rowIndex]["previousRankBtn"]:SetScript("OnClick", function()
            --local tooltip = CreateFrame("GameTooltip", nil, f, "GameTooltipTemplate")
            --tooltip:SetOwner(f.MessagesButton, "CENTER") -- change frameToFocusOn and "CENTER" as appropriate
            --tooltip:SetHyperlink(GetSpellLink(spellId))
            --tooltip:Show()

            GameTooltip_SetDefaultAnchor(GameTooltip, UIParent)
            GameTooltip:SetHyperlink(GetSpellLink(currentSpellId))
            GameTooltip:Show()
        end)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["previousRankBtn"]:GetTextWidth() + 25

        -- FILLTER TEXT ("kann auf")
        infoRowsUi[rowIndex]["textLabel1"]:SetPoint("LEFT", nextElemPos, 0)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["textLabel1"]:GetStringWidth() + 5

        -- HIGHTEST RANK BTN
        infoRowsUi[rowIndex]["highestRankBtn"]:SetText(GetSpellSubtext(maxRankSpellId))
        infoRowsUi[rowIndex]["highestRankBtn"]:SetSize(infoRowsUi[rowIndex]["highestRankBtn"]:GetTextWidth()+20, 22)
        infoRowsUi[rowIndex]["highestRankBtn"]:SetPoint("LEFT", nextElemPos, 0)
        infoRowsUi[rowIndex]["highestRankBtn"]:SetScript("OnClick", function()
            GameTooltip_SetDefaultAnchor(GameTooltip, UIParent)
            GameTooltip:SetHyperlink(GetSpellLink(maxRankSpellId))
            GameTooltip:Show()
        end)

        -- disable spell rank info buttons in vanilla
        -- => https://www.wowinterface.com/forums/showthread.php?t=58991 
        -- * "GetSpellLink wasn't added until 2.4.0. It should be available in BCC but it's not in Classic."
        -- * "I don't know about TBCC, but Classic Era doesn't support spell links."
        if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
            infoRowsUi[rowIndex]["previousRankBtn"]:Disable()
            infoRowsUi[rowIndex]["highestRankBtn"]:Disable()
        end

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["highestRankBtn"]:GetTextWidth() + 25 

        -- OUTRO TEXT
        infoRowsUi[rowIndex]["textLabel2"]:SetPoint("LEFT", nextElemPos, 0)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["textLabel2"]:GetStringWidth() + 5

        -- UP-RANK BTN
        infoRowsUi[rowIndex]["uprankBtn"]:SetPoint("LEFT", nextElemPos, 0)
        if IsSpellKnown(maxRankSpellId) then 
            infoRowsUi[rowIndex]["uprankBtn"]:Enable()
            infoRowsUi[rowIndex]["uprankBtn"]:SetText(i18n["info row chunks"][3])
        else
            infoRowsUi[rowIndex]["uprankBtn"]:Disable()
            infoRowsUi[rowIndex]["uprankBtn"]:SetText(i18n["info row chunks"][4])
        end
        infoRowsUi[rowIndex]["uprankBtn"]:SetSize(infoRowsUi[rowIndex]["uprankBtn"]:GetTextWidth()+20, 22)
        infoRowsUi[rowIndex]["uprankBtn"]:SetScript("OnClick", function()
            if IsSpellKnown(maxRankSpellId) then 
                ClearCursor()
                PickupSpell(maxRankSpellId)
                local slot = ActionButton_GetPagedID(actionButtonInstance) or ActionButton_CalculateAction(actionButtonInstance) or actionButtonInstance:GetAttribute('action') or 0 -- TODO copy paste from main lua file
                PlaceAction(slot)
                ClearCursor() 

                -- just print success message
                local linkOldRank, _ = GetSpellLink(currentSpellId)
                local linkNewRank, _ = GetSpellLink(maxRankSpellId)
                print(string.format(i18n["uprank successful"], linkOldRank, GetSpellSubtext(currentSpellId), linkNewRank, GetSpellSubtext(maxRankSpellId)))

                -- update ui
                -- TODO would be nicer to just remove the current index from the data table and then recall renderInfoRows instead of running the complete logic of collectOutrankedSpells
                collectOutrankedSpells()
                renderInfoRows()
            else
                print(i18n["uprank failed because spell not learned"])
            end
        end)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["uprankBtn"]:GetTextWidth() + 25

        -- OR TEXT
        infoRowsUi[rowIndex]["textLabel3"]:SetPoint("LEFT", nextElemPos, 0)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["textLabel3"]:GetStringWidth() + 5

        --IGNORE ONE RANK BTN
        infoRowsUi[rowIndex]["ignoreOneBtn"]:SetPoint("LEFT", nextElemPos, 0)
        infoRowsUi[rowIndex]["ignoreOneBtn"]:SetText(i18n["ignored one rank"])
        infoRowsUi[rowIndex]["ignoreOneBtn"]:SetSize(infoRowsUi[rowIndex]["ignoreOneBtn"]:GetTextWidth()+20, 22)
        infoRowsUi[rowIndex]["ignoreOneBtn"]:SetScript("OnClick", function()
            ignoreSpellRank(currentSpellId)
            ClearCursor()
            -- update ui
            collectOutrankedSpells()
            renderInfoRows()
        end)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["ignoreOneBtn"]:GetTextWidth() + 25

        -- IGNORE ALL RANKS BTN
        infoRowsUi[rowIndex]["ignoreAllBtn"]:SetPoint("LEFT", nextElemPos, 0)
        infoRowsUi[rowIndex]["ignoreAllBtn"]:SetText(i18n["ignored all ranks"])
        infoRowsUi[rowIndex]["ignoreAllBtn"]:SetSize(infoRowsUi[rowIndex]["ignoreAllBtn"]:GetTextWidth()+20, 22)
        infoRowsUi[rowIndex]["ignoreAllBtn"]:SetScript("OnClick", function()
            ignoreAllSpellRanks(currentSpellId)
            ClearCursor()
            -- update ui
            collectOutrankedSpells()
            renderInfoRows()
        end)

        nextElemPos = nextElemPos + infoRowsUi[rowIndex]["ignoreAllBtn"]:GetTextWidth() + 20

        -- DOT
        infoRowsUi[rowIndex]["textDot"]:SetPoint("LEFT", nextElemPos, 0)

        --end of components

        -- resize the row container
        local rowWidth = nextElemPos + infoRowsUi[rowIndex]["textDot"]:GetStringWidth() + 25
        if rowWidth > infoRowMaxWidth then
            infoRowMaxWidth = rowWidth
        end

        -- make it visible
        infoRowsUi[rowIndex]["container"]:Show()

    end -- end of main data iteration

    -- make all info rows having the same with
    for index, components in pairs(infoRowsUi) do
        components["container"]:SetSize(infoRowMaxWidth, 30)
    end

    -- hide 'clear ignored' btn when there is nothing to clear
    if tcount(SpellIgnoreList) == 0 then
        f.ClearIgnoredBtn:Hide()
    else
        f.ClearIgnoredBtn:Show()
    end

    -- adust master frame height according to the info rows we have
    if outranked_spells_found > 0 then -- var outranked_spells_found comes through HintMeRank.lua
        local height_modifier = -18
        if outranked_spells_found > 1 then
            f.UprankAllBtn:Show()
        else
            f.UprankAllBtn:Hide() -- because we don't need the 'uprank all' btn if there is actually only one btn
            if not f.ClearIgnoredBtn:IsShown() and not f.UprankAllBtn:IsShown() then
                height_modifier = 0
                infoRowAmountCurrent = infoRowAmountCurrent - 1 -- because no buttons are shown at the bottom
            end
        end
        f:SetSize(infoRowMaxWidth + 12, 40 + (infoRowAmountCurrent * 35) + height_modifier )
    else
        f:SetSize(mainFrameBounds[1], mainFrameBounds[2])
        f.UprankAllBtn:Hide()
    end
end

mainFrameBounds = {400, 200}
function createMainWindow()
    f = CreateFrame("Frame", "HMRMainFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
    tinsert(UISpecialFrames, f:GetName()) -- make frame closeable with esc
    f:SetSize(mainFrameBounds[1], mainFrameBounds[2])
    f:SetPoint("CENTER")
    f:SetFrameStrata("BACKGROUND")

    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", function(self) self:StartMoving() end)
    f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

    f:SetBackdrop({
        -- https://github.com/Gethe/wow-ui-textures/tree/classic
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 16
    })
    -- to show texture use anything else then 0,0,0
    f:SetBackdropColor(0,0,0, 0.5)

    f.Close = CreateFrame("Button", nil, f)
    f.Close:SetSize(24, 24)
    f.Close:SetPoint("TOPRIGHT")
    f.Close:SetNormalTexture("Interface/Buttons/UI-Panel-MinimizeButton-Up")
    f.Close:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
    f.Close:SetHighlightTexture("Interface/Buttons/UI-Panel-MinimizeButton-Highlight", "ADD")
    f.Close:SetScript("OnClick", function(self)
        self:GetParent():Hide()
    end)

    local frameHeadline = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    frameHeadline:SetText("HintMeRank")
    frameHeadline:SetPoint("TOPLEFT", 10, -15)

    -- info label
    f:CreateFontString("allSpellsMaxRankInfoText", "ARTWORK", "GameFontNormal") -- From doc: 1. param: The name for a global variable that points to the newly created font string. If nil, the texture is anonymous and no global variable will be created.
    allSpellsMaxRankInfoText:SetText(i18n["all spells on max rank"])
    allSpellsMaxRankInfoText:SetPoint("CENTER")
    allSpellsMaxRankInfoText:Hide()

    -- clear ignored btn
    f.ClearIgnoredBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    f.ClearIgnoredBtn:SetText(i18n["clear ignored"])
    f.ClearIgnoredBtn:SetSize(f.ClearIgnoredBtn:GetTextWidth()+20, 22)
    f.ClearIgnoredBtn:SetPoint("BOTTOMLEFT", 5, 5) -- x, y
    f.ClearIgnoredBtn:SetScript("OnClick", function()
        table.wipe(SpellIgnoreList)
        ClearCursor()
        print(i18n["all ignored cleared"])
        -- update ui
        collectOutrankedSpells()
        renderInfoRows()
    end)

    -- uprank all btn
    f.UprankAllBtn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    f.UprankAllBtn:SetText(i18n["uprank all"])
    f.UprankAllBtn:SetSize(f.UprankAllBtn:GetTextWidth()+20, 22)
    f.UprankAllBtn:SetPoint("BOTTOMRIGHT", -5, 5) -- x, y
    f.UprankAllBtn:SetScript("OnClick", function(self)
        for i=1,infoRowAmount,1 do
            C_Timer.After(0.2*(i-1), function() 
                infoRowsUi[1]["uprankBtn"]:Click() -- (1 instead of i because the ui re-renders on click causing the first button always to represent the very next spell that needs an uprank)
            end)
        end
    end)

    -- initially hide the window after its creation
    f:Hide()
end

--
-- Frame for the fading info messages in the middle of the screen
--
fadingFrame = CreateFrame("ScrollingMessageFrame", nil, UIParent)
fadingFrame:SetPoint("CENTER")
fadingFrame:SetSize(800,100)
fadingFrame:SetTimeVisible(8); -- seconds
fadingFrame:SetFading(true)
fadingFrame:SetMaxLines(10);
fadingFrame:SetFontObject(GameFontNormal);
fadingFrame:SetIndentedWordWrap(true);
fadingFrame:SetJustifyH("CENTER")
--fadingFrame:SetTextScale(8)
