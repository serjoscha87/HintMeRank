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

-- Forever has two IDs for Lacerate rank 1; both progress into rank 2.
spells[414647] = {
    ["learnAtLvl"] = 0,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 34,
        ["id"] = 1328616
    }
}
spells[1328617] = {
    ["learnAtLvl"] = 0,
    ["rank"] = 1,
    ["nextRank"] = {
        ["learnAtLvl"] = 34,
        ["id"] = 1328616
    }
}
spells[1328616] = {
    ["learnAtLvl"] = 34,
    ["rank"] = 2,
    ["nextRank"] = {
        ["learnAtLvl"] = 42,
        ["id"] = 414644
    }
}
spells[414644] = {
    ["learnAtLvl"] = 42,
    ["rank"] = 3,
    ["nextRank"] = {
        ["learnAtLvl"] = 50,
        ["id"] = 1235826
    }
}
spells[1235826] = {
    ["learnAtLvl"] = 50,
    ["rank"] = 4,
    ["nextRank"] = {
        ["learnAtLvl"] = 58,
        ["id"] = 1235827
    }
}
spells[1235827] = {
    ["learnAtLvl"] = 58,
    ["rank"] = 5,
    ["nextRank"] = nil
}
