-- ================================================================================
-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function isSpellOutranked(spellId)
    if SpellIgnoreList[spellId] then
        return false -- return false when spell is in the ignored table
    end

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

-- Adds the spellId to the ignore list so it won't be considered for upranking
--- @param spellId number
function ignoreSpellRank(spellId)
    tinsert(SpellIgnoreList, spellId, true)
    print(string.format(i18n["spell ignored one rank"], GetSpellInfo(spellId), GetSpellSubtext(spellId)))
end

-- Adds all ranks starting from the current rank of the spell to the ignore list so none of them will be considered for upranking
--- @param currentRankSpellId number
function ignoreAllSpellRanks(currentRankSpellId)
    local spellId = currentRankSpellId
    while spellId do
        tinsert(SpellIgnoreList, spellId, true)

        local spell = Spells[spellId]
        if spell ~= nil and spell["nextRank"] ~= nil then
            spellId = Spells[spellId]["nextRank"]["id"]
        else
            spellId = nil
        end
    end
    print(string.format(i18n["spell ignored all ranks"], GetSpellInfo(currentRankSpellId), GetSpellSubtext(currentRankSpellId)))
end

-- ================================================================================
-- ================================================================================
-- TODO describe function, params & return
-- ================================================================================
function isClassSpell(spellId)
    return Spells[spellId] ~= nil
end

 -- tcount: count table members even if they're not indexed by numbers
 --- @param tab table
 --- @return number
 function tcount(tab)
   local n = 0
   for _ in pairs(tab) do
     n = n + 1
   end
   return n
 end