function TestPrintSkills()

    for level, skill_ids in pairs(_G["SpellsByLevel"]) do
        if level <= PLAYER_LEVEL then
            print("============= \n level: " .. level)
            --for index, skill_ids in pairs(sub_table) do
            for _, skill_id in ipairs(skill_ids) do
                --print(index, skill_row)
                --for index2, foo in pairs(skill_row) do
                    --print(index2, foo)
                --end

                --local actionName = GetSpellInfo(skill_row["id"])
                --local actionRank = GetSpellSubtext(skill_row["id"])

                --print(skill_row["cost"])
                --print(actionName, actionRank)

                print(skill_id)

            end
        end
    end

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
    --scrollframe:SetPoint("TOPLEFT", 0, 0) 
    scrollframe:SetPoint("BOTTOMRIGHT", -28, 10) 
    --scrollframe:SetPoint("BOTTOMRIGHT", 0, 0) 
    local texture = scrollframe:CreateTexture() 
    texture:SetAllPoints() 
    texture:SetColorTexture(.1,.5,.5,.3) 
    frame.scrollframe = scrollframe 

    --scrollbar 
    scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate") 
    scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", -20, -38) 
    scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 0, 22) 
    scrollbar:SetMinMaxValues(1, 10) 
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
    content:SetSize(650, 200) 
    --local texture = content:CreateTexture() 
    --texture:SetAllPoints() 
    --texture:SetTexture("Interface\\GLUES\\MainMenu\\Glues-BlizzardLogo") 
    --content.texture = texture 

    content.text = content:CreateFontString(nil,"ARTWORK") 
    content.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
    content.text:SetPoint("TOPLEFT", 10, 10)

    content.text:SetText('das ist ein test \n und eine weitere zeile')

    scrollframe.content = content 

    print(content.text:SetScale(3))

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


function TestCreateTextFrameFour() 
    local backdrop = {
        bgFile = "Interface/BUTTONS/WHITE8X8",
        edgeFile = "Interface/GLUES/Common/Glue-Tooltip-Border",
        tile = true,
        edgeSize = 8,
        tileSize = 8,
        insets = {
            left = 5,
            right = 5,
            top = 5,
            bottom = 5,
        },
    }

    local listLen = 500

    --local function ScrollList(self)
        --local offset = FauxScrollFrame_GetOffset(self)
        --self:GetParent().Messages:SetScrollOffset(offset)
        --FauxScrollFrame_Update(self, listLen, 25, 12 )
    --end

    --        CreateFrame("Frame", nil, PARENT_FRAME, BackdropTemplateMixin and "BackdropTemplate")
    local f = CreateFrame("Frame", "MyScrollMessageTextFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
    f:SetSize(500, 400)
    f:SetPoint("CENTER")
    f:SetFrameStrata("BACKGROUND")

    --local texture = f:CreateTexture() 
    --texture:SetAllPoints() 
    --texture:SetColorTexture(0,0,0,.6) 
    --f.background = texture 

    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", function(self) self:StartMoving() end)
    f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

    f:SetBackdrop(backdrop)
    f:SetBackdropColor(0, 0, 0, 0.6)
    f.Close = CreateFrame("Button", "$parentClose", f)
    f.Close:SetSize(24, 24)
    f.Close:SetPoint("TOPRIGHT")
    f.Close:SetNormalTexture("Interface/Buttons/UI-Panel-MinimizeButton-Up")
    f.Close:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
    f.Close:SetHighlightTexture("Interface/Buttons/UI-Panel-MinimizeButton-Highlight", "ADD")
    f.Close:SetScript("OnClick", function(self)
        self:GetParent():Hide()
    end)
    f.Messages = CreateFrame("ScrollingMessageFrame", "$parentMessages", f)
    f.Messages:SetPoint("TOPLEFT", 15, -25)
    f.Messages:SetPoint("BOTTOMRIGHT", -30, 15)
    f.Messages:SetInsertMode(SCROLLING_MESSAGE_FRAME_INSERT_MODE_TOP)
    f.Messages:SetMaxLines(listLen)
    f.Messages:SetFading(false)
    f.Messages:SetIndentedWordWrap(true)
    f.Messages:SetFontObject(ChatFontNormal)
    f.Messages:SetJustifyH("LEFT")

    f.Scroll = CreateFrame("ScrollFrame", "$parentScroll", f, "FauxScrollFrameTemplate")
    f.Scroll:SetPoint("TOPLEFT", 15, -25)
    f.Scroll:SetPoint("BOTTOMRIGHT", -30, 15)
    f.Scroll:SetScript("OnVerticalScroll",  function(self, offset)
        FauxScrollFrame_OnVerticalScroll(self, offset, 12, function (self)
            local offset = FauxScrollFrame_GetOffset(self)
            self:GetParent().Messages:SetScrollOffset(offset)
            FauxScrollFrame_Update(self, listLen, 25, 12 )
        end)
    end)

    for i=1, listLen do
        local table = {
            "bfs fasjdf dsaf adsj fasjkf bsafjsaf bjs fasjkf bjsf basf badsjkf dsakfbhaskf asjkf asjkf skaf sak fsk fdsaf ",
            "kkl l fjds rewpwfrjpo foewf jjfwe fpwfevzv mcvn  qo fnaw[ffgngnerf we foiweffgorenfg[f fewfn sdskfn asdf sp ff",
            "q[ofkgbhp  i regp nIF N 'OFGRE  NG;G KG IGN ;EFPIREG REG  ZG;  ergregp esg gg-ero  rdf45540 4y   q8wffn ",
        }
        f.Messages:AddMessage(i.. " - "..table[random(1, 3)])
        FauxScrollFrame_Update(f.Scroll, i, 30, 12 )
    end
end