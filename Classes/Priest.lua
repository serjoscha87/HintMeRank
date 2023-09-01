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
        [453] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 8192
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
        [586] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 9578
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
        [605] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 10911
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
        [2651] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 19289
            }
        },
        [2652] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 19261
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
        [8129] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 8131
            }
        },
        [8131] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 10874
            }
        },
        [8192] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 10953
            }
        },
        [9035] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 19281
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
        [9578] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 9579
            }
        },
        [9579] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 9592
            }
        },
        [9592] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 10941
            }
        },
        [10797] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 19296
            }
        },
        [10874] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 10875
            }
        },
        [10875] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 10876
            }
        },
        [10876] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 5,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [10909] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [10911] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 10912
            }
        },
        [10912] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 3,
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [10941] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 10942
            }
        },
        [10942] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [10953] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
        [13896] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 19271
            }
        },
        [13908] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 19236
            }
        },
        [14520] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14780
            }
        },
        [14521] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14776
            }
        },
        [14522] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14788
            }
        },
        [14523] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14784
            }
        },
        [14524] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14525
            }
        },
        [14525] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14526
            }
        },
        [14526] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14527
            }
        },
        [14527] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14528
            }
        },
        [14528] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14531] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14774
            }
        },
        [14747] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14770
            }
        },
        [14748] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14768
            }
        },
        [14749] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14767
            }
        },
        [14750] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14772
            }
        },
        [14752] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 14818
            }
        },
        [14767] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14768] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14769
            }
        },
        [14769] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14770] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14771
            }
        },
        [14771] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14772] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14774] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [14776] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14777
            }
        },
        [14777] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [14780] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14781
            }
        },
        [14781] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14782
            }
        },
        [14782] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14783
            }
        },
        [14783] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14784] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14785
            }
        },
        [14785] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14786
            }
        },
        [14786] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14787
            }
        },
        [14787] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [14788] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14789
            }
        },
        [14789] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14790
            }
        },
        [14790] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 14791
            }
        },
        [14791] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
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
        [14889] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15008
            }
        },
        [14892] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15362
            }
        },
        [14898] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15349
            }
        },
        [14901] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15028
            }
        },
        [14908] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15020
            }
        },
        [14909] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15017
            }
        },
        [14911] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15018
            }
        },
        [14912] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15013
            }
        },
        [14913] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15012
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
        [15008] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15009
            }
        },
        [15009] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15010
            }
        },
        [15010] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15011
            }
        },
        [15011] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15012] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [15013] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15014
            }
        },
        [15014] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [15017] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [15018] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [15019] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [15020] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17191
            }
        },
        [15028] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15029
            }
        },
        [15029] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15030
            }
        },
        [15030] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15031
            }
        },
        [15031] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15237] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 15430
            }
        },
        [15257] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15331
            }
        },
        [15259] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15307
            }
        },
        [15260] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15327
            }
        },
        [15261] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 8,
            ["nextRank"] = nil
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
        [15268] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15323
            }
        },
        [15270] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15335
            }
        },
        [15272] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15320
            }
        },
        [15273] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15312
            }
        },
        [15274] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15311
            }
        },
        [15275] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15317
            }
        },
        [15307] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15308
            }
        },
        [15308] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15309
            }
        },
        [15309] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15310
            }
        },
        [15310] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15311] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [15312] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15313
            }
        },
        [15313] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15314
            }
        },
        [15314] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15316
            }
        },
        [15316] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15317] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [15318] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15272
            }
        },
        [15320] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [15323] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15324
            }
        },
        [15324] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15325
            }
        },
        [15325] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15326
            }
        },
        [15326] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15327] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15328
            }
        },
        [15328] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [15331] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15332
            }
        },
        [15332] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15333
            }
        },
        [15333] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15334
            }
        },
        [15334] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15335] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15336
            }
        },
        [15336] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15337
            }
        },
        [15337] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15338
            }
        },
        [15338] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15349] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15354
            }
        },
        [15354] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15355
            }
        },
        [15355] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15356
            }
        },
        [15356] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [15362] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15363
            }
        },
        [15363] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [15392] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 15448
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
        [15448] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [17191] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
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
        [17322] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17323
            }
        },
        [17323] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 17325
            }
        },
        [17325] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [18137] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 19308
            }
        },
        [18530] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18531
            }
        },
        [18531] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18533
            }
        },
        [18533] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18534
            }
        },
        [18534] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18535
            }
        },
        [18535] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18544] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18547
            }
        },
        [18547] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18548
            }
        },
        [18548] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18549
            }
        },
        [18549] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18550
            }
        },
        [18550] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18551] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18552
            }
        },
        [18552] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18553
            }
        },
        [18553] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18554
            }
        },
        [18554] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 18555
            }
        },
        [18555] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [18807] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [19236] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 19238
            }
        },
        [19238] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 19240
            }
        },
        [19240] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 19241
            }
        },
        [19241] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19242
            }
        },
        [19242] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 19243
            }
        },
        [19243] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [19261] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 19262
            }
        },
        [19262] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 19264
            }
        },
        [19264] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19265
            }
        },
        [19265] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19266
            }
        },
        [19266] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [19271] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 19273
            }
        },
        [19273] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19274
            }
        },
        [19274] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19275
            }
        },
        [19275] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [19281] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 19282
            }
        },
        [19282] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 19283
            }
        },
        [19283] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19284
            }
        },
        [19284] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19285
            }
        },
        [19285] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [19289] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 19291
            }
        },
        [19291] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19292
            }
        },
        [19292] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19293
            }
        },
        [19293] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [19296] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 19299
            }
        },
        [19299] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 19302
            }
        },
        [19302] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 19303
            }
        },
        [19303] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 19304
            }
        },
        [19304] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 19305
            }
        },
        [19305] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 7,
            ["nextRank"] = nil
        },
        [19308] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 19309
            }
        },
        [19309] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 19310
            }
        },
        [19310] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 19311
            }
        },
        [19311] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 19312
            }
        },
        [19312] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [20770] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 5,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [25314] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [25315] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [25316] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [27681] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [27683] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [27789] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27790
            }
        },
        [27790] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [27811] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27815
            }
        },
        [27815] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27816
            }
        },
        [27816] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [27839] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27840
            }
        },
        [27840] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [27841] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [27900] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27901
            }
        },
        [27901] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27902
            }
        },
        [27902] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27903
            }
        },
        [27903] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 27904
            }
        },
        [27904] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        }
    }
}
