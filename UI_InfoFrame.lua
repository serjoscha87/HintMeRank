
-- https://us.forums.blizzard.com/en/wow/t/q-building-a-minimalist-scrollingmessageframe/37175/2

f = CreateFrame("Frame", "MyScrollMessageTextFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
f:SetSize(850, 400)
f:SetPoint("CENTER")
f:SetFrameStrata("BACKGROUND")

f:EnableMouse(true)
f:SetMovable(true)
f:RegisterForDrag("LeftButton")
f:SetScript("OnDragStart", function(self) self:StartMoving() end)
f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)


f:SetBackdrop({
    -- https://github.com/Gethe/wow-ui-textures/tree/classic
    bgFile = "Interface/FrameGeneral/UI-Background-Rock",
    edgeFile = "Interface/glues/Common/TextPanel-Border",
    tile = true,
    edgeSize = 8,
    tileSize = 256,
    insets = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
})
-- to show texture use anything else then 0,0,0
f:SetBackdropColor(0,0,0, 0.6)

--local texture = f:CreateTexture() 
--texture:SetAllPoints() 
--texture:SetColorTexture(0,0,0,.6) 
--f.background = texture 

f.Close = CreateFrame("Button", "$parentClose", f)
f.Close:SetSize(24, 24)
f.Close:SetPoint("TOPRIGHT")
f.Close:SetNormalTexture("Interface/Buttons/UI-Panel-MinimizeButton-Up")
f.Close:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
f.Close:SetHighlightTexture("Interface/Buttons/UI-Panel-MinimizeButton-Highlight", "ADD")
f.Close:SetScript("OnClick", function(self)
    self:GetParent():Hide()
end)


--[[
f.TestAddMsg = CreateFrame("Button", "$parentAddMsg", f, "UIPanelButtonTemplate")
f.TestAddMsg:SetSize(140, 20)
f.TestAddMsg:SetPoint("BOTTOMRIGHT", 0, -20)
--f.TestAddMsg:SetNormalTexture("Interface/Buttons/BlueGoldButton")
--f.TestAddMsg:SetPushedTexture("Interface/Buttons/UI-Panel-MinimizeButton-Down")
--f.TestAddMsg:SetHighlightTexture("Interface/Buttons/UI-Panel-MinimizeButton-Highlight", "ADD")
f.TestAddMsg:SetText("ADD TEST MESSAGE")

f.TestAddMsg:SetScript("OnClick", function(self)
    addMessage("test")
end)
]]

messages = 0
function addMessage(msg)
    messages = messages + 1
    f.Messages:AddMessage(msg)
    local show_from_num_entries = 26 -- from which number of entries on should the scrollbar be shown
    local entry_height_or_something_like_that = 12
    FauxScrollFrame_Update(f.Scroll, messages,  show_from_num_entries, entry_height_or_something_like_that) -- 30, 12
end

f.Messages = CreateFrame("ScrollingMessageFrame", "$parentMessages", f)
f.Messages:SetPoint("TOPLEFT", 15, -25)
f.Messages:SetPoint("BOTTOMRIGHT", -30, 15)
f.Messages:SetInsertMode(SCROLLING_MESSAGE_FRAME_INSERT_MODE_TOP)
--f.Messages:SetMaxLines(listLen)
f.Messages:SetFading(false)
--f.Messages:SetIndentedWordWrap(true)
f.Messages:SetFontObject(ChatFontNormal)
f.Messages:SetJustifyH("LEFT")


-- on frame show: clear old content
--[[f:SetScript("OnShow", function(self, event)
    f.Messages:Clear()
end)]]


f.Scroll = CreateFrame("ScrollFrame", "$parentScroll", f, "FauxScrollFrameTemplate")
f.Scroll:SetPoint("TOPLEFT", 15, -25)
f.Scroll:SetPoint("BOTTOMRIGHT", -30, 15)
f.Scroll:SetScript("OnVerticalScroll",  function(self, offset)
    FauxScrollFrame_OnVerticalScroll(self, offset, 12, function (self)
        local offset = FauxScrollFrame_GetOffset(self)
        self:GetParent().Messages:SetScrollOffset(offset)
        FauxScrollFrame_Update(self, messages, 25, 12 )
    end)
end)

--local t = f.Messages:CreateTexture(nil,"BACKGROUND")
--t:SetTexture("Interface/BankFrame/Bank-Background")
--t:SetAllPoints(f)
--f.Messages.texture = t
--f.Messages:SetFrameStrata("BACKGROUND")

f:Hide()
