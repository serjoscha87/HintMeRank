local function valueOrUnknown(value)
    if value == nil or value == "" then
        return "nicht verfügbar"
    end
    return tostring(value)
end

local function getAddonMetadata(key)
    if C_AddOns and C_AddOns.GetAddOnMetadata then
        return C_AddOns.GetAddOnMetadata("HintMeRank", key)
    end
    if GetAddOnMetadata then
        return GetAddOnMetadata("HintMeRank", key)
    end
end

local function getDebugSpellRankInfo(spellId, playerLevel)
    if type(Spells) ~= "table" then
        return nil, nil, false, nil, nil, "aktive Spell-Tabelle fehlt"
    end
    if type(spellId) ~= "number" then
        return nil, nil, false, nil, nil, "keine gültige Spell-ID vom Aktionsleisten-Slot"
    end

    local spellData = Spells[spellId]
    if type(spellData) ~= "table" then
        return nil, nil, false, nil, nil, nil
    end

    local firstNextRank = spellData.nextRank
    local isOutranked = type(firstNextRank) == "table"
        and type(firstNextRank.learnAtLvl) == "number"
        and firstNextRank.learnAtLvl <= playerLevel
    local currentId = spellId
    local currentData = spellData
    local highestAvailableId = spellId
    local highestAvailableData = spellData
    local visited = {}
    local issue

    while type(currentData.nextRank) == "table" do
        local nextRank = currentData.nextRank
        if type(nextRank.id) ~= "number" or type(nextRank.learnAtLvl) ~= "number" then
            issue = "Rank-Chain enthält eine ungültige Spell-ID oder Stufe"
            break
        end
        if visited[nextRank.id] or nextRank.id == currentId then
            issue = "Zyklus in der Rank-Chain bei Spell-ID " .. tostring(nextRank.id)
            break
        end
        if nextRank.learnAtLvl > playerLevel then
            break
        end

        local nextData = Spells[nextRank.id]
        if type(nextData) ~= "table" then
            issue = "Rank-Chain verweist auf fehlenden Tabellen-Eintrag " .. tostring(nextRank.id)
            break
        end

        visited[currentId] = true
        currentId = nextRank.id
        currentData = nextData
        highestAvailableId = currentId
        highestAvailableData = currentData
    end

    if currentData.nextRank ~= nil and type(currentData.nextRank) ~= "table" then
        issue = "nextRank ist kein Tabellenwert"
    end

    return spellData, firstNextRank, isOutranked, highestAvailableId, highestAvailableData, issue
end

local function buildDebugReport()
    local lines = {}
    local function addLine(text)
        table.insert(lines, text)
    end

    local gameVersion, build, buildDate, interfaceVersion = GetBuildInfo()
    local localizedClass, playerClass = UnitClass("player")
    local classSpells = SpellsById and playerClass and SpellsById[playerClass]
    local spellCount = 0
    if type(classSpells) == "table" then
        for _ in pairs(classSpells) do
            spellCount = spellCount + 1
        end
    end

    addLine("HintMeRank Diagnose")
    addLine("===================")
    addLine("Addon-Version: " .. valueOrUnknown(getAddonMetadata("Version")))
    addLine("Spielversion: " .. valueOrUnknown(gameVersion))
    addLine("Build: " .. valueOrUnknown(build) .. " (" .. valueOrUnknown(buildDate) .. ")")
    addLine("Interface-Version: " .. valueOrUnknown(interfaceVersion))
    addLine("Projekt-ID: " .. valueOrUnknown(WOW_PROJECT_ID))
    addLine("Locale: " .. valueOrUnknown(GetLocale and GetLocale()))
    addLine("Charakter: " .. valueOrUnknown(UnitName("player")))
    addLine("Klasse: " .. valueOrUnknown(localizedClass) .. " (" .. valueOrUnknown(playerClass) .. ")")
    addLine("Stufe: " .. valueOrUnknown(UnitLevel("player")))
    addLine("")
    addLine("SpellTable")
    addLine("----------")
    addLine("Geladene Variante: " .. valueOrUnknown(HMRLoadedSpellTableVersion))
    addLine("Geladene Dateigruppen: " .. valueOrUnknown(HMRLoadedSpellTableFiles and table.concat(HMRLoadedSpellTableFiles, ", ")))
    addLine("Klassen-Tabelle vorhanden: " .. tostring(type(classSpells) == "table"))
    addLine("Spell-Einträge für diese Klasse: " .. tostring(spellCount))
    addLine("Aktive Spell-Tabelle: " .. tostring(type(Spells) == "table" and Spells == classSpells))
    addLine("")
    addLine("Zauber auf Aktionsleisten")
    addLine("-------------------------")
    addLine("Jeder belegte Slot wird als eigener Block mit beschrifteten Werten angezeigt.")

    local actionButtons = {}
    for buttonName, actionButton in pairs(_G) do
        local barName, buttonIndex
        if type(buttonName) == "string" then
            barName, buttonIndex = buttonName:match("^(.-)Button(%d+)$")
        end
        local isActionBarButton = barName == "Action" or barName == "MainMenuBar" or (barName and barName:match("^MultiBar"))
        if isActionBarButton and tonumber(buttonIndex) <= 12 and actionButton then
            table.insert(actionButtons, { name = buttonName, button = actionButton, slot = getActionButtonSlot(actionButton) })
        end
    end
    table.sort(actionButtons, function(left, right) return left.name < right.name end)

    local actionCount = 0
    for _, entry in ipairs(actionButtons) do
        local slot = entry.slot
        if type(slot) == "number" and slot > 0 and HasAction(slot) then
            local actionType, spellId = GetActionInfo(slot)
            actionCount = actionCount + 1
            if actionType == "spell" then
                local spellName = spellId and getSpellInfo(spellId)
                local spellRank = spellId and getSpellSubtext(spellId)
                local spellData, nextRank, isOutranked, maxRankSpellId, maxRank, issue =
                    getDebugSpellRankInfo(spellId, UnitLevel("player"))
                local isIgnored = isSpellIgnored(spellId)
                addLine(entry.name .. " (Aktions-Slot " .. tostring(slot) .. ")")
                addLine("  Zauber: " .. valueOrUnknown(spellName))
                addLine("  Spell-ID: " .. valueOrUnknown(spellId))
                addLine("  Angezeigter Rang: " .. valueOrUnknown(spellRank))
                addLine("  In aktiver SpellTable: " .. (spellData and ("Ja (Tabellenrang " .. valueOrUnknown(spellData.rank) .. ")") or "Nein"))
                addLine("  Veraltet: " .. tostring(isOutranked == true))
                addLine("  Ignoriert: " .. tostring(isIgnored))
                if nextRank then
                    addLine("  Nächster Rang: Spell-ID " .. valueOrUnknown(nextRank.id))
                    addLine("  Freigeschaltet ab Stufe: " .. valueOrUnknown(nextRank.learnAtLvl))
                elseif spellData then
                    addLine("  Nächster Rang: keiner in der Tabelle")
                end
                if maxRankSpellId then
                    addLine("  Höchster verfügbarer Rang: Spell-ID " .. tostring(maxRankSpellId) .. " (Tabellenrang " .. valueOrUnknown(maxRank and maxRank.rank) .. ")")
                end
                if issue then
                    addLine("  Tabellenproblem: " .. issue)
                end
                addLine("")
            else
                addLine(entry.name .. " (Aktions-Slot " .. tostring(slot) .. ")")
                addLine("  Aktionstyp: " .. valueOrUnknown(actionType))
                addLine("")
            end
        end
    end
    if actionCount == 0 then
        addLine("Keine belegten Aktionsleisten-Slots gefunden.")
    end

    return table.concat(lines, "\n")
end

local debugFrame
local debugScrollFrame
local debugEditBox

local function createDebugWindow()
    debugFrame = CreateFrame("Frame", "HMRDebugFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
    tinsert(UISpecialFrames, debugFrame:GetName())
    debugFrame:SetSize(600, 440)
    debugFrame:SetPoint("CENTER")
    debugFrame:SetFrameStrata("DIALOG")
    debugFrame:SetMovable(true)
    debugFrame:EnableMouse(true)
    debugFrame:RegisterForDrag("LeftButton")
    debugFrame:SetScript("OnDragStart", debugFrame.StartMoving)
    debugFrame:SetScript("OnDragStop", debugFrame.StopMovingOrSizing)
    debugFrame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 16
    })
    debugFrame:SetBackdropColor(0, 0, 0, 0.9)
    debugFrame:Hide()

    local debugTitle = debugFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    debugTitle:SetText("HintMeRank - Diagnose")
    debugTitle:SetPoint("TOPLEFT", 12, -12)

    local debugCloseButton = CreateFrame("Button", nil, debugFrame, "UIPanelCloseButton")
    debugCloseButton:SetPoint("TOPRIGHT", -2, -2)
    debugCloseButton:SetScript("OnClick", function() debugFrame:Hide() end)

    debugScrollFrame = CreateFrame("ScrollFrame", nil, debugFrame, "UIPanelScrollFrameTemplate")
    debugScrollFrame:SetPoint("TOPLEFT", 12, -38)
    debugScrollFrame:SetPoint("BOTTOMRIGHT", -32, 12)

    debugEditBox = CreateFrame("EditBox", nil, debugScrollFrame)
    debugEditBox:SetMultiLine(true)
    debugEditBox:SetAutoFocus(false)
    debugEditBox:SetFontObject(ChatFontNormal)
    debugEditBox:SetWidth(540)
    debugEditBox:SetHeight(10000)
    debugEditBox:SetScript("OnEscapePressed", function() debugFrame:Hide() end)
    debugScrollFrame:SetScrollChild(debugEditBox)
end

function HMR_ShowDebugWindow()
    if not debugFrame then
        createDebugWindow()
    end

    debugEditBox:SetText(buildDebugReport())
    debugScrollFrame:SetVerticalScroll(0)
    debugFrame:Show()
end
