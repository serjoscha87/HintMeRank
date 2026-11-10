local currentClass = select(2, UnitClass("player"))

if currentClass ~= "WARRIOR" then
    return
end

local spells = SpellsById["WARRIOR"]

-- Forever inserts an additional first rank into the Slam chain.
spells[1240193] = {
    ["learnAtLvl"] = 20,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 30,
        ["id"] = 1464
    }
}
spells[1464]["rank"] = 2
spells[8820]["rank"] = 3
spells[11604]["rank"] = 4
spells[11605]["rank"] = 5
