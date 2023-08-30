local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DEATHKNIGHT") then
	return
end 

SpellsById = {
    ["DEATHKNIGHT"] = {}
}

SpellsById["DEATHKNIGHT"] = {
    [43265] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 49936
        }
    },
    [45462] = {
        ["learnAtLvl"] = 55,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 49917
        }
    },
    [45463] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49923
        }
    },
    [45477] = {
        ["learnAtLvl"] = 55,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 49896
        }
    },
    [45902] = {
        ["learnAtLvl"] = 55,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 59,
            ["id"] = 49926
        }
    },
    [47541] = {
        ["learnAtLvl"] = 55,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 49892
        }
    },
    [48721] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 49939
        }
    },
    [48778] = {
        ["learnAtLvl"] = 55,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [49020] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 51423
        }
    },
    [49410] = {
        ["learnAtLvl"] = 55,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [49892] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 49893
        }
    },
    [49893] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 49894
        }
    },
    [49894] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49895
        }
    },
    [49895] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [49896] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 49903
        }
    },
    [49903] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 49904
        }
    },
    [49904] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 49909
        }
    },
    [49909] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [49917] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 49918
        }
    },
    [49918] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 49919
        }
    },
    [49919] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49920
        }
    },
    [49920] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49921
        }
    },
    [49921] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [49923] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49924
        }
    },
    [49924] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [49926] = {
        ["learnAtLvl"] = 59,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 49927
        }
    },
    [49927] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 49928
        }
    },
    [49928] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 49929
        }
    },
    [49929] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49930
        }
    },
    [49930] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [49936] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 49937
        }
    },
    [49937] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49938
        }
    },
    [49938] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [49939] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 49940
        }
    },
    [49940] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 49941
        }
    },
    [49941] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [49998] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 49999
        }
    },
    [49999] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 45463
        }
    },
    [51325] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 51326
        }
    },
    [51326] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 51327
        }
    },
    [51327] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 51328
        }
    },
    [51328] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [51409] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 51410
        }
    },
    [51410] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 51411
        }
    },
    [51411] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [51416] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 51417
        }
    },
    [51417] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 51418
        }
    },
    [51418] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 51419
        }
    },
    [51419] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 55268
        }
    },
    [51423] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 51424
        }
    },
    [51424] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 51425
        }
    },
    [51425] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [55258] = {
        ["learnAtLvl"] = 59,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 55259
        }
    },
    [55259] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 55260
        }
    },
    [55260] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 55261
        }
    },
    [55261] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 55262
        }
    },
    [55262] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [55265] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 55270
        }
    },
    [55268] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [55270] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 55271
        }
    },
    [55271] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [57330] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 57623
        }
    },
    [57623] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [59879] = {
        ["learnAtLvl"] = 1,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [62900] = {
        ["learnAtLvl"] = 55,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 49892
        }
    },
    [62901] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 49893
        }
    },
    [62902] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 49894
        }
    },
    [62903] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49895
        }
    },
    [62904] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    }
}
