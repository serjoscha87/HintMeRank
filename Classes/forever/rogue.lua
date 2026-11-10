local currentClass = select(2, UnitClass("player"))

if currentClass ~= "ROGUE" then
    return
end

local spells = SpellsById["ROGUE"]

-- These first ranks are talent-granted; later ranks are trainer-taught.
spells[1316709] = {
    ["learnAtLvl"] = 0,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 48,
        ["id"] = 1325756
    }
}
spells[1325756] = {
    ["learnAtLvl"] = 48,
    ["rank"] = 2,
    ["nextRank"] = {
        ["learnAtLvl"] = 56,
        ["id"] = 1325757
    }
}
spells[1325757] = {
    ["learnAtLvl"] = 56,
    ["rank"] = 3,
    ["nextRank"] = {
        ["learnAtLvl"] = 60,
        ["id"] = 1325758
    }
}
spells[1325758] = {
    ["learnAtLvl"] = 60,
    ["rank"] = 4,
    ["nextRank"] = nil
}

spells[1310706] = {
    ["learnAtLvl"] = 0,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 48,
        ["id"] = 1241582
    }
}
spells[1241582] = {
    ["learnAtLvl"] = 48,
    ["rank"] = 2,
    ["nextRank"] = {
        ["learnAtLvl"] = 60,
        ["id"] = 1241584
    }
}
spells[1241584] = {
    ["learnAtLvl"] = 60,
    ["rank"] = 3,
    ["nextRank"] = nil
}
