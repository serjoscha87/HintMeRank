

-- ================================================================================
-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function isSpellOutranked(spellId) 
    local spellname = GetSpellInfo(spellId)

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
