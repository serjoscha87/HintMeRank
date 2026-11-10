HMRLoadedSpellTableVersion = "Vanilla + Forever"
HMRLoadedSpellTableFiles = {
    "Classes\\vanilla\\*.lua",
    "Classes\\forever\\*.lua",
}

local currentClass = select(2, UnitClass("player"))

if currentClass ~= "DRUID" then
    return
end

local spells = SpellsById["DRUID"]

-- Forever's Claw starts at a different spell ID than Vanilla's rank chain.
spells[16942]["nextRank"] = {
    ["learnAtLvl"] = 28,
    ["id"] = 3029
}

-- Forever adds a lower Ferocious Bite rank and changes the displayed rank numbers.
spells[1328618] = {
    ["learnAtLvl"] = 24,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 32,
        ["id"] = 22568
    }
}
spells[22568]["rank"] = 2
spells[22827]["rank"] = 3
spells[22828]["rank"] = 4
spells[22829]["rank"] = 5

-- Primal Bite is a Forever-only rank chain; its first rank is talent-granted.
spells[407995] = {
    ["learnAtLvl"] = 0,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 50,
        ["id"] = 1238069
    }
}
spells[1238069] = {
    ["learnAtLvl"] = 50,
    ["rank"] = 2,
    ["nextRank"] = {
        ["learnAtLvl"] = 58,
        ["id"] = 1238070
    }
}
spells[1238070] = {
    ["learnAtLvl"] = 58,
    ["rank"] = 3,
    ["nextRank"] = nil
}
