local currentTooltipSpellId = nil
local SpellInfoFrameTitleLabel = nil  -- set in createMainWindow

local function ShowSpellInfo(spellId)
    -- toggle: gleicher Rang nochmal geklickt → schließen
    if SpellInfoFrame:IsShown() and currentTooltipSpellId == spellId then
        SpellInfoFrame:Hide()
        currentTooltipSpellId = nil
        return
    end
    currentTooltipSpellId = spellId

    -- Titel setzen (Spell-Name + Rang)
    if SpellInfoFrameTitleLabel then
        local spellName = GetSpellInfo(spellId)
        local spellRank = GetSpellSubtext(spellId)
        if spellRank and spellRank ~= "" then
            SpellInfoFrameTitleLabel:SetText((spellName or "") .. " (" .. spellRank .. ")")
        else
            SpellInfoFrameTitleLabel:SetText(spellName or "")
        end
    end

    -- Tooltip befüllen
    SpellInfoFrameSpellTooltip:SetOwner(UIParent, "ANCHOR_NONE")
    SpellInfoFrameSpellTooltip:ClearLines()
    SpellInfoFrameSpellTooltip:SetSpellByID(spellId)

    -- Zauberzeit manuell ergänzen
    local _, _, _, castTime = GetSpellInfo(spellId)
    if castTime then
        local castText = castTime == 0 and "Sofort" or string.format("%.1f sek", castTime / 1000)
        SpellInfoFrameSpellTooltip:AddDoubleLine("Zauberzeit:", castText, 0.5, 0.5, 0.5, 1, 1, 1)
    end

    -- Manakosten manuell ergänzen
    if GetSpellPowerCost then
        local powerCosts = GetSpellPowerCost(spellId)
        if powerCosts then
            for _, v in pairs(powerCosts) do
                if v.cost and v.cost > 0 and v.name then
                    SpellInfoFrameSpellTooltip:AddDoubleLine(v.name .. ":", tostring(v.cost), 0.5, 0.5, 0.5, 0.4, 0.7, 1)
                end
            end
        end
    end

    SpellInfoFrameSpellTooltip:Show()

    -- Titelleiste an die Oberkante des Hauptfensters heften
    SpellInfoFrame:ClearAllPoints()
    SpellInfoFrame:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 0, 5)
    SpellInfoFrame:Show()

    -- Nach einem Frame-Cycle hat der Tooltip seine echte Größe
    C_Timer.After(0, function()
        if not SpellInfoFrame:IsShown() then return end

        local tipW = SpellInfoFrameSpellTooltip:GetWidth()
        local tipH = SpellInfoFrameSpellTooltip:GetHeight()
        if tipW == 0 or tipH == 0 then return end

        -- Titelleiste auf Tooltip-Breite anpassen
        SpellInfoFrame:SetSize(math.max(tipW, 200), 28)

        -- Tooltip direkt oberhalb der Titelleiste verankern
        SpellInfoFrameSpellTooltip:ClearAllPoints()
        SpellInfoFrameSpellTooltip:SetPoint("BOTTOMLEFT", SpellInfoFrame, "TOPLEFT", 0, 2)
    end)
end

-- ==============================

local function ShowFakeGlow(button)
    if button.glow then 
        button.glow:Show()
        return 
    end

    local glow = button:CreateTexture(nil, "OVERLAY")
    glow:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
    glow:SetAllPoints(button)
    glow:SetBlendMode("ADD")
    --glow:SetAllPoints(button)
    glow:SetPoint("TOPLEFT", button, -10, 10)
    glow:SetPoint("BOTTOMRIGHT", button, 10, -10)
    glow:SetVertexColor(1.0, 0.7, 0.0)

    local ag = glow:CreateAnimationGroup()

    -- Fade in
    local fadeIn = ag:CreateAnimation("Alpha")
    fadeIn:SetFromAlpha(0.3)
    fadeIn:SetToAlpha(1.0)
    fadeIn:SetDuration(0.6)
    fadeIn:SetSmoothing("IN_OUT")
    fadeIn:SetOrder(1)

    -- Fade out
    local fadeOut = ag:CreateAnimation("Alpha")
    fadeOut:SetFromAlpha(1.0)
    fadeOut:SetToAlpha(0.3)
    fadeOut:SetDuration(0.6)
    fadeOut:SetSmoothing("IN_OUT")
    fadeOut:SetOrder(2)

    ag:SetLooping("REPEAT")
    ag:Play()

    button.glow = glow
end

local function HideFakeGlow(button)
    if button.glow then
        button.glow:Hide()
    end
end

-- ==============================

-- General note: for frames cannot be disposed we need to reuse them - so in order to not have thousands of buttons when one calls the ui of the addon multiple times - we need to reuse buttons

infoRowsUi = {} -- NOTE: this ui element holder table can ONLY GROW! (reason: see above)
infoRowAmount = 0 -- the overall amount of info rows - also this can only grow
infoRowAmountCurrent = 0 -- the amount of currently visible rows
infoRowMaxWidth = -1 -- the maximum width over all rows
function renderInfoRows()

    -- at first: hide all previous buttons
    for i=1,infoRowAmount,1 do
        infoRowsUi[i]["container"]:Hide()
    end

    infoRowAmountCurrent = 0

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

            -- UP-RANK BTN
            infoRowsUi[rowIndex]["uprankBtn"] = CreateFrame("Button", nil, infoRowsUi[rowIndex]["container"], "UIPanelButtonTemplate")

        end

        --
        -- STEP 2: elements exist - reuse them 
        -- 

        -- container
        infoRowsUi[rowIndex]["container"]:SetScript("OnEnter", function()
            if _G.ActionButton_ShowOverlayGlow then
                _G.ActionButton_ShowOverlayGlow(actionButtonInstance) -- as of WOTLK
            else
                ShowFakeGlow(actionButtonInstance) -- vanilla + tbc
            end
        end)
        infoRowsUi[rowIndex]["container"]:SetScript("OnLeave", function()
            if _G.ActionButton_HideOverlayGlow then
                _G.ActionButton_HideOverlayGlow(actionButtonInstance)
            else
                HideFakeGlow(actionButtonInstance)
            end
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

            ShowSpellInfo(currentSpellId)
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
            ShowSpellInfo(maxRankSpellId)
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
                local slot  = nil 
                if(ActionButton_GetPagedID) then -- old api
                    slot = ActionButton_GetPagedID(actionButtonInstance) or ActionButton_CalculateAction(actionButtonInstance) or actionButtonInstance:GetAttribute('action') or 0 -- TODO copy paste from main lua file
                else -- new api
                    slot = actionButtonInstance.action or nil
                end
                if (slot and HasAction(slot)) then
                    ClearCursor()
                    PickupSpell(maxRankSpellId)

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
                end
            else
                print(i18n["uprank failed because spell not learned"])
            end
        end)

        -- end of components

        -- resize the row container
        local rowWidth = nextElemPos + infoRowsUi[rowIndex]["uprankBtn"]:GetTextWidth() + 25
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

    -- adust master frame height according to the info rows we have
    if outranked_spells_found > 0 then -- var outranked_spells_found comes through HintMeRank.lua
        local height_modifier = 0
        if outranked_spells_found > 1 then
            infoRowAmountCurrent = infoRowAmountCurrent+1 -- because if there is more then 1 spell the "uprank all btn is shown"
            height_modifier = -18
            f.UprankAllBtn:Show()
        else
            f.UprankAllBtn:Hide() -- because we don't need the 'uprank all' btn if there is actually only one btn
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

    -- Spell-Info: schmale Titelleiste (Titel + Close-Button)
    SpellInfoFrame = CreateFrame("Frame", "MySpellWindow", UIParent, "BackdropTemplate")
    SpellInfoFrame:SetSize(300, 28)
    SpellInfoFrame:SetPoint("CENTER")
    SpellInfoFrame:SetFrameStrata("DIALOG")
    SpellInfoFrame:SetMovable(true)
    SpellInfoFrame:EnableMouse(true)
    SpellInfoFrame:RegisterForDrag("LeftButton")
    SpellInfoFrame:SetScript("OnDragStart", SpellInfoFrame.StartMoving)
    SpellInfoFrame:SetScript("OnDragStop", SpellInfoFrame.StopMovingOrSizing)
    SpellInfoFrame:SetScript("OnHide", function()
        SpellInfoFrameSpellTooltip:Hide()
        currentTooltipSpellId = nil
    end)
    SpellInfoFrame:Hide()

    SpellInfoFrame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    SpellInfoFrame:SetBackdropColor(0, 0, 0, 1)

    -- Close Button (X)
    local SpellInfoFrameCloseButton = CreateFrame("Button", nil, SpellInfoFrame, "UIPanelCloseButton")
    SpellInfoFrameCloseButton:SetPoint("TOPRIGHT", -5, -5)

    -- Titel-Label (Spell-Name + Rang wird in ShowSpellInfo gesetzt)
    SpellInfoFrameTitleLabel = SpellInfoFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    SpellInfoFrameTitleLabel:SetPoint("LEFT", SpellInfoFrame, "LEFT", 8, 0)
    SpellInfoFrameTitleLabel:SetPoint("RIGHT", SpellInfoFrame, "RIGHT", -26, 0)
    SpellInfoFrameTitleLabel:SetJustifyH("LEFT")
    SpellInfoFrameTitleLabel:SetWordWrap(false)

    -- GameTooltip als eigenständiger Top-Level-Frame (NICHT child von SpellInfoFrame)
    -- => verhindert Render-Konflikte beim SetOwner-Aufruf
    SpellInfoFrameSpellTooltip = CreateFrame("GameTooltip", "HMRSpellTooltip", UIParent, "GameTooltipTemplate")
    SpellInfoFrameSpellTooltip:SetFrameStrata("DIALOG")
    SpellInfoFrameSpellTooltip:SetClampedToScreen(true)
    SpellInfoFrameSpellTooltip:Hide()

    -- ==================

    local frameHeadline = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    frameHeadline:SetText("HintMeRank")
    frameHeadline:SetPoint("TOPLEFT", 10, -15)

    -- info label
    f:CreateFontString("allSpellsMaxRankInfoText", "ARTWORK", "GameFontNormal") -- From doc: 1. param: The name for a global variable that points to the newly created font string. If nil, the texture is anonymous and no global variable will be created.
    allSpellsMaxRankInfoText:SetText(i18n["all spells on max rank"])
    allSpellsMaxRankInfoText:SetPoint("CENTER")
    allSpellsMaxRankInfoText:Hide()

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
