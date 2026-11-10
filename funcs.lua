function getSpellInfo(spellId)
    if C_Spell and C_Spell.GetSpellInfo then
        local spellInfo = C_Spell.GetSpellInfo(spellId)
        if spellInfo then
            return spellInfo.name, spellInfo.subName, spellInfo.iconID, spellInfo.castTime,
                spellInfo.minRange, spellInfo.maxRange, spellInfo.spellID
        end
    end

    if GetSpellInfo then
        return GetSpellInfo(spellId)
    end
end

function getSpellSubtext(spellId)
    if GetSpellSubtext then
        local subtext = GetSpellSubtext(spellId)
        if subtext and subtext ~= "" then
            return subtext
        end
    end

    local _, subName = getSpellInfo(spellId)
    if subName and subName ~= "" then
        return subName
    end

    local spellData = Spells and Spells[spellId]
    if spellData and type(spellData.rank) == "number" then
        return tostring(spellData.rank)
    end
end

function getSpellLink(spellId)
    if C_Spell and C_Spell.GetSpellLink then
        local spellLink = C_Spell.GetSpellLink(spellId)
        if spellLink then
            return spellLink
        end
    end

    if GetSpellLink then
        local spellLink = GetSpellLink(spellId)
        if spellLink then
            return spellLink
        end
    end

    return getSpellInfo(spellId) or tostring(spellId)
end

function isSpellKnown(spellId)
    if C_SpellBook then
        local spellBank = Enum and Enum.SpellBookSpellBank and Enum.SpellBookSpellBank.Player
        if spellBank and C_SpellBook.IsSpellInSpellBook then
            return C_SpellBook.IsSpellInSpellBook(spellId, spellBank, false)
        end
        if spellBank and C_SpellBook.IsSpellKnown then
            return C_SpellBook.IsSpellKnown(spellId, spellBank)
        end
    end

    if IsSpellKnown then
        return IsSpellKnown(spellId)
    end

    return false
end

function getActionButtonSlot(actionButton)
    if not actionButton then
        return nil
    end

    local slot
    if ActionButton_GetPagedID then
        slot = ActionButton_GetPagedID(actionButton)
    end
    if (type(slot) ~= "number" or slot <= 0) and ActionButton_CalculateAction then
        slot = ActionButton_CalculateAction(actionButton)
    end
    if (type(slot) ~= "number" or slot <= 0) and actionButton.GetAttribute then
        slot = actionButton:GetAttribute("action")
    end
    if (type(slot) ~= "number" or slot <= 0) and type(actionButton.action) == "number" then
        slot = actionButton.action
    end

    if type(slot) == "number" and slot > 0 then
        return slot
    end
end

function pickupSpellToCursor(spellId)
    if not GetCursorInfo or not ClearCursor then
        return false, "Cursor-API nicht verfügbar"
    end

    local pickupMethods = {}
    if C_Spell and C_Spell.PickupSpell then
        table.insert(pickupMethods, C_Spell.PickupSpell)
    end
    if PickupSpell then
        table.insert(pickupMethods, PickupSpell)
    end

    for _, pickupSpell in ipairs(pickupMethods) do
        ClearCursor()
        local ok = pcall(pickupSpell, spellId)
        local cursorType = GetCursorInfo()
        if ok and cursorType == "spell" then
            return true
        end
    end

    if GetNumSpellBookItems and GetSpellBookItemInfo and PickupSpellBookItem then
        local spellBookType = BOOKTYPE_SPELL or "spell"
        local ok, spellBookItemCount = pcall(GetNumSpellBookItems, spellBookType)
        if not ok or type(spellBookItemCount) ~= "number" then
            ok, spellBookItemCount = pcall(GetNumSpellBookItems)
        end
        if ok and type(spellBookItemCount) == "number" then
            for spellBookSlot = 1, spellBookItemCount do
                local itemInfoOk, itemType, bookSpellId = pcall(GetSpellBookItemInfo, spellBookSlot, spellBookType)
                if itemInfoOk and itemType == "SPELL" and bookSpellId == spellId then
                    ClearCursor()
                    local pickupOk = pcall(PickupSpellBookItem, spellBookSlot, spellBookType)
                    local cursorType = GetCursorInfo()
                    if pickupOk and cursorType == "spell" then
                        return true
                    end
                    break
                end
            end
        end
    end

    ClearCursor()
    return false, "Zauber konnte weder per Spell-ID noch aus dem Zauberbuch aufgenommen werden"
end

-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function isSpellOutranked(spellId)
    if Spells[spellId] == nil or Spells[spellId]["nextRank"] == nil then
        return false -- if there is not even a next rank for the spell we are currently checken -> this means it is not outranked
    end
    if Spells[spellId]["nextRank"]["learnAtLvl"] <= UnitLevel("PLAYER") then
        return true
    end
    return false
end

-- ================================================================================
-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function findMaxAvailableRank(spellId) -- returns the spellId of the max avail rank (which may also the same as you are passing if there is no newer rank)

    if Spells[spellId] == nil then
        return nil
    end

    local currentSpell = Spells[spellId]
    local nextRank = currentSpell["nextRank"]

    if nextRank == nil then
        return spellId
    end

    if nextRank["learnAtLvl"] <= UnitLevel("PLAYER") then
        return findMaxAvailableRank(nextRank["id"])
    end

    return spellId
end

-- ================================================================================
-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function isClassSpell(spellId)
    return Spells[spellId] ~= nil
end

-- ================================================================================
-- ================================================================================
-- Returns true if the given spellId (rank-specific) is on the ignore list.
-- ================================================================================
function isSpellIgnored(spellId)
    return SpellIgnoreList ~= nil and SpellIgnoreList[spellId] == true
end

-- ================================================================================
-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end