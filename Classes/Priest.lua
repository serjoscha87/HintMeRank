local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "PRIEST") then
	return
end 

SpellsById = {
    ["PRIEST"] = {
        [17] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 592
            }
        },
        [139] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 6074
            }
        },
        [527] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 988
            }
        },
        [585] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 6,
                ["id"] = 591
            }
        },
        [588] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 7128
            }
        },
        [589] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 594
            }
        },
        [591] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 14,
                ["id"] = 598
            }
        },
        [592] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 600
            }
        },
        [594] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 970
            }
        },
        [596] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 996
            }
        },
        [598] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 984
            }
        },
        [600] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 3747
            }
        },
        [602] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 1006
            }
        },
        [724] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 27870
            }
        },
        [970] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 992
            }
        },
        [976] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10957
            }
        },
        [984] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 1004
            }
        },
        [988] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [992] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 2767
            }
        },
        [996] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10960
            }
        },
        [1004] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 6060
            }
        },
        [1006] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10951
            }
        },
        [1243] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 1244
            }
        },
        [1244] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 1245
            }
        },
        [1245] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 2791
            }
        },
        [2006] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 2010
            }
        },
        [2010] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 10880
            }
        },
        [2050] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 4,
                ["id"] = 2052
            }
        },
        [2052] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 2053
            }
        },
        [2053] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [2054] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 2055
            }
        },
        [2055] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 6063
            }
        },
        [2060] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10963
            }
        },
        [2061] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 9472
            }
        },
        [2096] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10909
            }
        },
        [2767] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10892
            }
        },
        [2791] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10937
            }
        },
        [2944] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 19276
            }
        },
        [3747] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 6065
            }
        },
        [6060] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10933
            }
        },
        [6063] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 6064
            }
        },
        [6064] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [6065] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 6066
            }
        },
        [6066] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10898
            }
        },
        [6074] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 6075
            }
        },
        [6075] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 6076
            }
        },
        [6076] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 6077
            }
        },
        [6077] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 6078
            }
        },
        [6078] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10927
            }
        },
        [7128] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 602
            }
        },
        [8092] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 16,
                ["id"] = 8102
            }
        },
        [8102] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 8103
            }
        },
        [8103] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 8104
            }
        },
        [8104] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8105
            }
        },
        [8105] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 8106
            }
        },
        [8106] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10945
            }
        },
        [8122] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 8124
            }
        },
        [8124] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 10888
            }
        },
        [9472] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 9473
            }
        },
        [9473] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 9474
            }
        },
        [9474] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10915
            }
        },
        [9484] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 9485
            }
        },
        [9485] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10955
            }
        },
        [10880] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 10881
            }
        },
        [10881] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 20770
            }
        },
        [10888] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10890
            }
        },
        [10890] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [10892] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10893
            }
        },
        [10893] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 10894
            }
        },
        [10894] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 25367
            }
        },
        [10898] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10899
            }
        },
        [10899] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10900
            }
        },
        [10900] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10901
            }
        },
        [10901] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 25217
            }
        },
        [10909] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [10915] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10916
            }
        },
        [10916] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10917
            }
        },
        [10917] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 61,
                ["id"] = 25233
            }
        },
        [10927] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10928
            }
        },
        [10928] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10929
            }
        },
        [10929] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25315
            }
        },
        [10933] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 10934
            }
        },
        [10934] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 61,
                ["id"] = 25363
            }
        },
        [10937] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10938
            }
        },
        [10938] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25389
            }
        },
        [10945] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10946
            }
        },
        [10946] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 10947
            }
        },
        [10947] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 25372
            }
        },
        [10951] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10952
            }
        },
        [10952] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 25431
            }
        },
        [10955] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [10957] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10958
            }
        },
        [10958] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25433
            }
        },
        [10960] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10961
            }
        },
        [10961] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25316
            }
        },
        [10963] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10964
            }
        },
        [10964] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 10965
            }
        },
        [10965] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25314
            }
        },
        [14752] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 14818
            }
        },
        [14818] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 14819
            }
        },
        [14819] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 27841
            }
        },
        [14914] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 15262
            }
        },
        [15237] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 15430
            }
        },
        [15261] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 25384
            }
        },
        [15262] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 15263
            }
        },
        [15263] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 15264
            }
        },
        [15264] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 15265
            }
        },
        [15265] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 15266
            }
        },
        [15266] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 15267
            }
        },
        [15267] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 15261
            }
        },
        [15407] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 17311
            }
        },
        [15430] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 15431
            }
        },
        [15431] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 27799
            }
        },
        [17311] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 17312
            }
        },
        [17312] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 17313
            }
        },
        [17313] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 17314
            }
        },
        [17314] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 18807
            }
        },
        [18807] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25387
            }
        },
        [19236] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 19238
            }
        },
        [19238] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 19240
            }
        },
        [19240] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 19241
            }
        },
        [19241] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19242
            }
        },
        [19242] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 19243
            }
        },
        [19243] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 25437
            }
        },
        [19276] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 19277
            }
        },
        [19277] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 19278
            }
        },
        [19278] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 19279
            }
        },
        [19279] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19280
            }
        },
        [19280] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25467
            }
        },
        [20770] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25435
            }
        },
        [21562] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 21564
            }
        },
        [21564] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25392
            }
        },
        [25210] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25213
            }
        },
        [25213] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48062
            }
        },
        [25217] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25218
            }
        },
        [25218] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 12,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48065
            }
        },
        [25221] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25222
            }
        },
        [25222] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 12,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48067
            }
        },
        [25233] = {
            ["learnAtLvl"] = 61,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 25235
            }
        },
        [25235] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48070
            }
        },
        [25308] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 48072
            }
        },
        [25312] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48073
            }
        },
        [25314] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 25210
            }
        },
        [25315] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 25221
            }
        },
        [25316] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25308
            }
        },
        [25331] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48077
            }
        },
        [25363] = {
            ["learnAtLvl"] = 61,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 25364
            }
        },
        [25364] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48122
            }
        },
        [25367] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25368
            }
        },
        [25368] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48124
            }
        },
        [25372] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 25375
            }
        },
        [25375] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48126
            }
        },
        [25384] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 48134
            }
        },
        [25387] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48155
            }
        },
        [25389] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48161
            }
        },
        [25392] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48162
            }
        },
        [25431] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 71,
                ["id"] = 48040
            }
        },
        [25433] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 48169
            }
        },
        [25435] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48171
            }
        },
        [25437] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48172
            }
        },
        [25467] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 48299
            }
        },
        [27681] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 32999
            }
        },
        [27683] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 39374
            }
        },
        [27799] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 27800
            }
        },
        [27800] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 27801
            }
        },
        [27801] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25331
            }
        },
        [27841] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25312
            }
        },
        [27870] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 27871
            }
        },
        [27871] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 28275
            }
        },
        [28275] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48086
            }
        },
        [32379] = {
            ["learnAtLvl"] = 62,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 32996
            }
        },
        [32546] = {
            ["learnAtLvl"] = 64,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 48119
            }
        },
        [32996] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48157
            }
        },
        [32999] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48074
            }
        },
        [33076] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 48112
            }
        },
        [34861] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 34863
            }
        },
        [34863] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 34864
            }
        },
        [34864] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 34865
            }
        },
        [34865] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 34866
            }
        },
        [34866] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48088
            }
        },
        [34914] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 34916
            }
        },
        [34916] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 34917
            }
        },
        [34917] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 48159
            }
        },
        [39374] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 48170
            }
        },
        [47540] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 53005
            }
        },
        [48040] = {
            ["learnAtLvl"] = 71,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 48168
            }
        },
        [48045] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 53023
            }
        },
        [48062] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48063
            }
        },
        [48063] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48065] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 13,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48066
            }
        },
        [48066] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 14,
            ["nextRank"] = nil
        },
        [48067] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 13,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48068
            }
        },
        [48068] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 14,
            ["nextRank"] = nil
        },
        [48070] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48071
            }
        },
        [48071] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [48072] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [48073] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [48074] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [48077] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48078
            }
        },
        [48078] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48086] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48087
            }
        },
        [48087] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [48088] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48089
            }
        },
        [48089] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [48112] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48113
            }
        },
        [48113] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [48119] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48120
            }
        },
        [48120] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [48122] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48123
            }
        },
        [48123] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 12,
            ["nextRank"] = nil
        },
        [48124] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48125
            }
        },
        [48125] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 12,
            ["nextRank"] = nil
        },
        [48126] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 12,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48127
            }
        },
        [48127] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 13,
            ["nextRank"] = nil
        },
        [48134] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 48135
            }
        },
        [48135] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [48155] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48156
            }
        },
        [48156] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48157] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48158
            }
        },
        [48158] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [48159] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48160
            }
        },
        [48160] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48161] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [48162] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [48168] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48169] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [48170] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [48171] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [48172] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 48173
            }
        },
        [48173] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [48299] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 48300
            }
        },
        [48300] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [53005] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 53006
            }
        },
        [53006] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 53007
            }
        },
        [53007] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [53023] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [58381] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [64843] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 1,
            ["nextRank"] = nil
        }
    }
}
