local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "PALADIN") then
	return
end 

SpellsById = {
    ["PALADIN"] = {
        [465] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 10290
            }
        },
        [633] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 2800
            }
        },
        [635] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 6,
                ["id"] = 639
            }
        },
        [639] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 647
            }
        },
        [643] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 10291
            }
        },
        [647] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 1026
            }
        },
        [853] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 5588
            }
        },
        [879] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 5614
            }
        },
        [1022] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 5599
            }
        },
        [1026] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 1042
            }
        },
        [1032] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10292
            }
        },
        [1042] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 3472
            }
        },
        [2800] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10310
            }
        },
        [2812] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10318
            }
        },
        [3472] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10328
            }
        },
        [5588] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 5589
            }
        },
        [5589] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10308
            }
        },
        [5599] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 10278
            }
        },
        [5614] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 5615
            }
        },
        [5615] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10312
            }
        },
        [7294] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 10298
            }
        },
        [7328] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 10322
            }
        },
        [10278] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [10290] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 643
            }
        },
        [10291] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 1032
            }
        },
        [10292] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10293
            }
        },
        [10293] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27149
            }
        },
        [10298] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 10299
            }
        },
        [10299] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10300
            }
        },
        [10300] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10301
            }
        },
        [10301] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 27150
            }
        },
        [10308] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [10310] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27154
            }
        },
        [10312] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10313
            }
        },
        [10313] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10314
            }
        },
        [10314] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27138
            }
        },
        [10318] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 27139
            }
        },
        [10322] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 10324
            }
        },
        [10324] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 20772
            }
        },
        [10328] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10329
            }
        },
        [10329] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25292
            }
        },
        [13819] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [19740] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 19834
            }
        },
        [19742] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 19850
            }
        },
        [19750] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 19939
            }
        },
        [19834] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 19835
            }
        },
        [19835] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 19836
            }
        },
        [19836] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 19837
            }
        },
        [19837] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 19838
            }
        },
        [19838] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25291
            }
        },
        [19850] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 19852
            }
        },
        [19852] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 19853
            }
        },
        [19853] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 19854
            }
        },
        [19854] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25290
            }
        },
        [19876] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 19895
            }
        },
        [19888] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 19897
            }
        },
        [19891] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 19899
            }
        },
        [19895] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 19896
            }
        },
        [19896] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 27151
            }
        },
        [19897] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 19898
            }
        },
        [19898] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27152
            }
        },
        [19899] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19900
            }
        },
        [19900] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27153
            }
        },
        [19939] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 19940
            }
        },
        [19940] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 19941
            }
        },
        [19941] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19942
            }
        },
        [19942] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 19943
            }
        },
        [19943] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 27137
            }
        },
        [20116] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 20922
            }
        },
        [20473] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 20929
            }
        },
        [20772] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 20773
            }
        },
        [20773] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 48949
            }
        },
        [20922] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 20923
            }
        },
        [20923] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 20924
            }
        },
        [20924] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27173
            }
        },
        [20925] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 20927
            }
        },
        [20927] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 20928
            }
        },
        [20928] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27179
            }
        },
        [20929] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 20930
            }
        },
        [20930] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 64,
                ["id"] = 27174
            }
        },
        [23214] = {
            ["learnAtLvl"] = 40,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [24239] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 27180
            }
        },
        [24274] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 24239
            }
        },
        [24275] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 24274
            }
        },
        [25290] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 27142
            }
        },
        [25291] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27140
            }
        },
        [25292] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 62,
                ["id"] = 27135
            }
        },
        [25782] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25916
            }
        },
        [25894] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25918
            }
        },
        [25916] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27141
            }
        },
        [25918] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 27143
            }
        },
        [26573] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 20116
            }
        },
        [27135] = {
            ["learnAtLvl"] = 62,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 27136
            }
        },
        [27136] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48781
            }
        },
        [27137] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48784
            }
        },
        [27138] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48800
            }
        },
        [27139] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 48816
            }
        },
        [27140] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48931
            }
        },
        [27141] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48933
            }
        },
        [27142] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 71,
                ["id"] = 48935
            }
        },
        [27143] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 71,
                ["id"] = 48937
            }
        },
        [27149] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48941
            }
        },
        [27150] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 54043
            }
        },
        [27151] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 48943
            }
        },
        [27152] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 48945
            }
        },
        [27153] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48947
            }
        },
        [27154] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48788
            }
        },
        [27173] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48818
            }
        },
        [27174] = {
            ["learnAtLvl"] = 64,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 33072
            }
        },
        [27179] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48951
            }
        },
        [27180] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48805
            }
        },
        [31935] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 32699
            }
        },
        [32699] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 32700
            }
        },
        [32700] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48826
            }
        },
        [33072] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48824
            }
        },
        [34767] = {
            ["learnAtLvl"] = 40,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [34769] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [48781] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 12,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48782
            }
        },
        [48782] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 13,
            ["nextRank"] = nil
        },
        [48784] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48785
            }
        },
        [48785] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48788] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48800] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48801
            }
        },
        [48801] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48805] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48806
            }
        },
        [48806] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [48816] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48817
            }
        },
        [48817] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48818] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48819
            }
        },
        [48819] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [48824] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48825
            }
        },
        [48825] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [48826] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48827
            }
        },
        [48827] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48931] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48932
            }
        },
        [48932] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [48933] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48934
            }
        },
        [48934] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48935] = {
            ["learnAtLvl"] = 71,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 48936
            }
        },
        [48936] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48937] = {
            ["learnAtLvl"] = 71,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 48938
            }
        },
        [48938] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48941] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48942
            }
        },
        [48942] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [48943] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48945] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48947] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48949] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48950
            }
        },
        [48950] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [48951] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48952
            }
        },
        [48952] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [53600] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 61411
            }
        },
        [53601] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [54043] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [61411] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [356112] = {
            ["learnAtLvl"] = 64,
            ["rank"] = 1,
            ["nextRank"] = nil
        }
    }
}
