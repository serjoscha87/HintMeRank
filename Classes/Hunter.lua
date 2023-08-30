local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "HUNTER") then
	return
end 

SpellsById = {
    ["HUNTER"] = {}
}

SpellsById["HUNTER"] = {
    [136] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 20,
            ["id"] = 3111
        }
    },
    [1130] = {
        ["learnAtLvl"] = 6,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 22,
            ["id"] = 14323
        }
    },
    [1495] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 14269
        }
    },
    [1499] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 14310
        }
    },
    [1510] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 14294
        }
    },
    [1513] = {
        ["learnAtLvl"] = 14,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 14326
        }
    },
    [1978] = {
        ["learnAtLvl"] = 4,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 10,
            ["id"] = 13549
        }
    },
    [2643] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 14288
        }
    },
    [2973] = {
        ["learnAtLvl"] = 1,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 8,
            ["id"] = 14260
        }
    },
    [3044] = {
        ["learnAtLvl"] = 6,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 12,
            ["id"] = 14281
        }
    },
    [3111] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 3661
        }
    },
    [3661] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 3662
        }
    },
    [3662] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 13542
        }
    },
    [13165] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 18,
            ["id"] = 14318
        }
    },
    [13542] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 13543
        }
    },
    [13543] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 13544
        }
    },
    [13544] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27046
        }
    },
    [13549] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 18,
            ["id"] = 13550
        }
    },
    [13550] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 26,
            ["id"] = 13551
        }
    },
    [13551] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 34,
            ["id"] = 13552
        }
    },
    [13552] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 13553
        }
    },
    [13553] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 13554
        }
    },
    [13554] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 13555
        }
    },
    [13555] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25295
        }
    },
    [13795] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 26,
            ["id"] = 14302
        }
    },
    [13813] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 14316
        }
    },
    [14260] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 16,
            ["id"] = 14261
        }
    },
    [14261] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 14262
        }
    },
    [14262] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 14263
        }
    },
    [14263] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 14264
        }
    },
    [14264] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 14265
        }
    },
    [14265] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 14266
        }
    },
    [14266] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 27014
        }
    },
    [14269] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 14270
        }
    },
    [14270] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 14271
        }
    },
    [14271] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 36916
        }
    },
    [14281] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 20,
            ["id"] = 14282
        }
    },
    [14282] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 14283
        }
    },
    [14283] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 14284
        }
    },
    [14284] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 14285
        }
    },
    [14285] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 14286
        }
    },
    [14286] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 14287
        }
    },
    [14287] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 27019
        }
    },
    [14288] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 14289
        }
    },
    [14289] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 14290
        }
    },
    [14290] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25294
        }
    },
    [14294] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 14295
        }
    },
    [14295] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 27022
        }
    },
    [14302] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 14303
        }
    },
    [14303] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 14304
        }
    },
    [14304] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 14305
        }
    },
    [14305] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 27023
        }
    },
    [14310] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 14311
        }
    },
    [14311] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [14316] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 14317
        }
    },
    [14317] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 27025
        }
    },
    [14318] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 14319
        }
    },
    [14319] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 14320
        }
    },
    [14320] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 14321
        }
    },
    [14321] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 14322
        }
    },
    [14322] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25296
        }
    },
    [14323] = {
        ["learnAtLvl"] = 22,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 14324
        }
    },
    [14324] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 14325
        }
    },
    [14325] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 53338
        }
    },
    [14326] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 14327
        }
    },
    [14327] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [20043] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 20190
        }
    },
    [20190] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27045
        }
    },
    [20736] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = nil
    },
    [20900] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 20901
        }
    },
    [20901] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 20902
        }
    },
    [20902] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 20903
        }
    },
    [20903] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 20904
        }
    },
    [20904] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27065
        }
    },
    [20909] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 20910
        }
    },
    [20910] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 27067
        }
    },
    [24132] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 24133
        }
    },
    [24133] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 27068
        }
    },
    [25294] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 27021
        }
    },
    [25295] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 27016
        }
    },
    [25296] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 27044
        }
    },
    [27014] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 48995
        }
    },
    [27016] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 49000
        }
    },
    [27019] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 49044
        }
    },
    [27021] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 49047
        }
    },
    [27022] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 58431
        }
    },
    [27023] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 49055
        }
    },
    [27025] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 49066
        }
    },
    [27044] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [27045] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 49071
        }
    },
    [27046] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 48989
        }
    },
    [27065] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49049
        }
    },
    [27067] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 48998
        }
    },
    [27068] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49011
        }
    },
    [34120] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 49051
        }
    },
    [36916] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 53339
        }
    },
    [48989] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 48990
        }
    },
    [48990] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [48995] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 48996
        }
    },
    [48996] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 11,
        ["nextRank"] = nil
    },
    [48998] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 48999
        }
    },
    [48999] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [49000] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 49001
        }
    },
    [49001] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 12,
        ["nextRank"] = nil
    },
    [49011] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49012
        }
    },
    [49012] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [49044] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 49045
        }
    },
    [49045] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 11,
        ["nextRank"] = nil
    },
    [49047] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49048
        }
    },
    [49048] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [49049] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49050
        }
    },
    [49050] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [49051] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 49052
        }
    },
    [49052] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [49055] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 49056
        }
    },
    [49056] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [49066] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 49067
        }
    },
    [49067] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [49071] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [53338] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [53339] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [53351] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 61005
        }
    },
    [56641] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 34120
        }
    },
    [58431] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58434
        }
    },
    [58434] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [60051] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 60052
        }
    },
    [60052] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 60053
        }
    },
    [60053] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [60192] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 1,
        ["nextRank"] = nil
    },
    [61005] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 61006
        }
    },
    [61006] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 3,
        ["nextRank"] = nil
    },
    [61846] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 61847
        }
    },
    [61847] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [63668] = {
        ["learnAtLvl"] = 57,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 63669
        }
    },
    [63669] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 63670
        }
    },
    [63670] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 63671
        }
    },
    [63671] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 63672
        }
    },
    [63672] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    }
}
