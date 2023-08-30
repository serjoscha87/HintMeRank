local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "ROGUE") then
	return
end 

SpellsById = {
    ["ROGUE"] = {}
}

SpellsById["ROGUE"] = {
    [53] = {
        ["learnAtLvl"] = 4,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 12,
            ["id"] = 2589
        }
    },
    [408] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 8643
        }
    },
    [703] = {
        ["learnAtLvl"] = 14,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 22,
            ["id"] = 8631
        }
    },
    [1752] = {
        ["learnAtLvl"] = 1,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 6,
            ["id"] = 1757
        }
    },
    [1757] = {
        ["learnAtLvl"] = 6,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 14,
            ["id"] = 1758
        }
    },
    [1758] = {
        ["learnAtLvl"] = 14,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 22,
            ["id"] = 1759
        }
    },
    [1759] = {
        ["learnAtLvl"] = 22,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 1760
        }
    },
    [1760] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 8621
        }
    },
    [1856] = {
        ["learnAtLvl"] = 22,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 1857
        }
    },
    [1857] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 26889
        }
    },
    [1860] = {
        ["learnAtLvl"] = 40,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [1943] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 8639
        }
    },
    [1966] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 6768
        }
    },
    [2070] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 11297
        }
    },
    [2098] = {
        ["learnAtLvl"] = 1,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 8,
            ["id"] = 6760
        }
    },
    [2589] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 20,
            ["id"] = 2590
        }
    },
    [2590] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 2591
        }
    },
    [2591] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 8721
        }
    },
    [2836] = {
        ["learnAtLvl"] = 24,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [2983] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 34,
            ["id"] = 8696
        }
    },
    [5171] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 6774
        }
    },
    [5277] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 26669
        }
    },
    [6760] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 16,
            ["id"] = 6761
        }
    },
    [6761] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 6762
        }
    },
    [6762] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 8623
        }
    },
    [6768] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 8637
        }
    },
    [6770] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 2070
        }
    },
    [6774] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [8621] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 11293
        }
    },
    [8623] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 8624
        }
    },
    [8624] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 11299
        }
    },
    [8631] = {
        ["learnAtLvl"] = 22,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 8632
        }
    },
    [8632] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 8633
        }
    },
    [8633] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 11289
        }
    },
    [8637] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 11303
        }
    },
    [8639] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 8640
        }
    },
    [8640] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 11273
        }
    },
    [8643] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [8676] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 26,
            ["id"] = 8724
        }
    },
    [8696] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 11305
        }
    },
    [8721] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 11279
        }
    },
    [8724] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 34,
            ["id"] = 8725
        }
    },
    [8725] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 11267
        }
    },
    [11267] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 11268
        }
    },
    [11268] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 11269
        }
    },
    [11269] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 27441
        }
    },
    [11273] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 11274
        }
    },
    [11274] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 11275
        }
    },
    [11275] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 26867
        }
    },
    [11279] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 11280
        }
    },
    [11280] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 11281
        }
    },
    [11281] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25300
        }
    },
    [11289] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 11290
        }
    },
    [11290] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 26839
        }
    },
    [11293] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 11294
        }
    },
    [11294] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 26861
        }
    },
    [11297] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 51724
        }
    },
    [11299] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 11300
        }
    },
    [11300] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 31016
        }
    },
    [11303] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25302
        }
    },
    [11305] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [17347] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 17348
        }
    },
    [17348] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26864
        }
    },
    [25300] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 26863
        }
    },
    [25302] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 27448
        }
    },
    [26669] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [26679] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 48673
        }
    },
    [26839] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26884
        }
    },
    [26861] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 26862
        }
    },
    [26862] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 48637
        }
    },
    [26863] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 48656
        }
    },
    [26864] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48660
        }
    },
    [26865] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 48667
        }
    },
    [26867] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 48671
        }
    },
    [26884] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48675
        }
    },
    [26889] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [27441] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 48689
        }
    },
    [27448] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48658
        }
    },
    [31016] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 26865
        }
    },
    [32645] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 32684
        }
    },
    [32684] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 57992
        }
    },
    [34411] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 34412
        }
    },
    [34412] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 34413
        }
    },
    [34413] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48663
        }
    },
    [48637] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48638
        }
    },
    [48638] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [48656] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48657
        }
    },
    [48657] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [48658] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 48659
        }
    },
    [48659] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [48660] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [48663] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48666
        }
    },
    [48666] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [48667] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48668
        }
    },
    [48668] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [48671] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 48672
        }
    },
    [48672] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [48673] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 48674
        }
    },
    [48674] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [48675] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48676
        }
    },
    [48676] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [48689] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 48690
        }
    },
    [48690] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48691
        }
    },
    [48691] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [51724] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [57992] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 57993
        }
    },
    [57993] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    }
}
