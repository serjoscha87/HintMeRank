local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "ROGUE") then
	return
end 

SpellsById = {
    ["ROGUE"] = {
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
        [1766] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 1767
            }
        },
        [1767] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 1768
            }
        },
        [1768] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 1769
            }
        },
        [1769] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [1776] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 1777
            }
        },
        [1777] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 8629
            }
        },
        [1784] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 1785
            }
        },
        [1785] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 1786
            }
        },
        [1786] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 1787
            }
        },
        [1787] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
        [2835] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [2836] = {
            ["learnAtLvl"] = 24,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [2837] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 2,
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
        [3420] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [3421] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [5171] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 6774
            }
        },
        [5763] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 1,
            ["nextRank"] = nil
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
        [8629] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11285
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
        [8647] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 8649
            }
        },
        [8649] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8650
            }
        },
        [8650] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11197
            }
        },
        [8676] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 8724
            }
        },
        [8681] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [8687] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [8691] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [8694] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 2,
            ["nextRank"] = nil
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
        [11197] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 11198
            }
        },
        [11198] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 5,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
        [11285] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11286
            }
        },
        [11286] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [11297] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 3,
            ["nextRank"] = nil
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
        [11341] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [11342] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [11343] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [11357] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [11358] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [11400] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [13220] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [13228] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [13229] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [13230] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [13705] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13832
            }
        },
        [13706] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13804
            }
        },
        [13709] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13800
            }
        },
        [13712] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13788
            }
        },
        [13713] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13853
            }
        },
        [13715] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13848
            }
        },
        [13732] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13863
            }
        },
        [13733] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13865
            }
        },
        [13741] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13793
            }
        },
        [13742] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13872
            }
        },
        [13743] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13875
            }
        },
        [13754] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13867
            }
        },
        [13788] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13789
            }
        },
        [13789] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13790
            }
        },
        [13790] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13791
            }
        },
        [13791] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13792] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [13793] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13792
            }
        },
        [13800] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13801
            }
        },
        [13801] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13802
            }
        },
        [13802] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13803
            }
        },
        [13803] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13804] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13805
            }
        },
        [13805] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13806
            }
        },
        [13806] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13807
            }
        },
        [13807] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13832] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13843
            }
        },
        [13843] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13844
            }
        },
        [13844] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13845
            }
        },
        [13845] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13848] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13849
            }
        },
        [13849] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13851
            }
        },
        [13851] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13852
            }
        },
        [13852] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13853] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13854
            }
        },
        [13854] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13855
            }
        },
        [13855] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13856
            }
        },
        [13856] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13863] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [13865] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13866
            }
        },
        [13866] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [13867] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [13872] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [13875] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [13958] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13970
            }
        },
        [13960] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13961
            }
        },
        [13961] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13962
            }
        },
        [13962] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13963
            }
        },
        [13963] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13964
            }
        },
        [13964] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13970] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13971
            }
        },
        [13971] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13972
            }
        },
        [13972] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13973
            }
        },
        [13973] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13975] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14062
            }
        },
        [13976] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13979
            }
        },
        [13979] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13980
            }
        },
        [13980] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [13981] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14066
            }
        },
        [13983] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14070
            }
        },
        [14057] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14072
            }
        },
        [14062] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14063
            }
        },
        [14063] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14064
            }
        },
        [14064] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14065
            }
        },
        [14065] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14066] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14070] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14071
            }
        },
        [14071] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14072] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14073
            }
        },
        [14073] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14074
            }
        },
        [14074] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14075
            }
        },
        [14075] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14076] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14094
            }
        },
        [14079] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14080
            }
        },
        [14080] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14081
            }
        },
        [14081] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14082] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14083
            }
        },
        [14083] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14094] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14113] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14114
            }
        },
        [14114] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14115
            }
        },
        [14115] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14116
            }
        },
        [14116] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14117
            }
        },
        [14117] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14128] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14132
            }
        },
        [14132] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14135
            }
        },
        [14135] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14136
            }
        },
        [14136] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14137
            }
        },
        [14137] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14138] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14139
            }
        },
        [14139] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14140
            }
        },
        [14140] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14141
            }
        },
        [14141] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14142
            }
        },
        [14142] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14144] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14148
            }
        },
        [14148] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14156] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14160
            }
        },
        [14158] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14159
            }
        },
        [14159] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14160] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14161
            }
        },
        [14161] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14162] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14163
            }
        },
        [14163] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14164
            }
        },
        [14164] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14165] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14166
            }
        },
        [14166] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14167
            }
        },
        [14167] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14168] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14169
            }
        },
        [14169] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14171] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14172
            }
        },
        [14172] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14173
            }
        },
        [14173] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14174] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14175
            }
        },
        [14175] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14176
            }
        },
        [14176] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14186] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14190
            }
        },
        [14190] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14193
            }
        },
        [14193] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14194
            }
        },
        [14194] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14195
            }
        },
        [14195] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16511] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 17347
            }
        },
        [16513] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16514
            }
        },
        [16514] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16515
            }
        },
        [16515] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16719
            }
        },
        [16719] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16720
            }
        },
        [16720] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
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
            ["nextRank"] = nil
        },
        [18427] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18428
            }
        },
        [18428] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18429
            }
        },
        [18429] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [25300] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [25302] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [25347] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [30892] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30893
            }
        },
        [30893] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [30894] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30895
            }
        },
        [30895] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [30902] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30903
            }
        },
        [30903] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30904
            }
        },
        [30904] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30905
            }
        },
        [30905] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30906
            }
        },
        [30906] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [30919] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 30920
            }
        },
        [30920] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [31016] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 9,
            ["nextRank"] = nil
        }
    }
}
