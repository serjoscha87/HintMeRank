local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "WARRIOR") then
	return
end 

SpellsById = {
    ["WARRIOR"] = {
        [78] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 8,
                ["id"] = 284
            }
        },
        [100] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 6178
            }
        },
        [284] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 16,
                ["id"] = 285
            }
        },
        [285] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 1608
            }
        },
        [469] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 47439
            }
        },
        [772] = {
            ["learnAtLvl"] = 4,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 10,
                ["id"] = 6546
            }
        },
        [845] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 7369
            }
        },
        [1160] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 6190
            }
        },
        [1464] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8820
            }
        },
        [1608] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 11564
            }
        },
        [2048] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47436
            }
        },
        [5242] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 6192
            }
        },
        [5308] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 20658
            }
        },
        [6178] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11578
            }
        },
        [6190] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 11554
            }
        },
        [6192] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 11549
            }
        },
        [6343] = {
            ["learnAtLvl"] = 6,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 18,
                ["id"] = 8198
            }
        },
        [6546] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 20,
                ["id"] = 6547
            }
        },
        [6547] = {
            ["learnAtLvl"] = 20,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 30,
                ["id"] = 6548
            }
        },
        [6548] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 11572
            }
        },
        [6572] = {
            ["learnAtLvl"] = 14,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 24,
                ["id"] = 6574
            }
        },
        [6574] = {
            ["learnAtLvl"] = 24,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 7379
            }
        },
        [6673] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 12,
                ["id"] = 5242
            }
        },
        [7369] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 11608
            }
        },
        [7379] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11600
            }
        },
        [8198] = {
            ["learnAtLvl"] = 18,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 8204
            }
        },
        [8204] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 38,
                ["id"] = 8205
            }
        },
        [8205] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 11580
            }
        },
        [8820] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11604
            }
        },
        [11549] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 11550
            }
        },
        [11550] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 11551
            }
        },
        [11551] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25289
            }
        },
        [11554] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11555
            }
        },
        [11555] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11556
            }
        },
        [11556] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 62,
                ["id"] = 25202
            }
        },
        [11564] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 11565
            }
        },
        [11565] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 11566
            }
        },
        [11566] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 11567
            }
        },
        [11567] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25286
            }
        },
        [11572] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 11573
            }
        },
        [11573] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11574
            }
        },
        [11574] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25208
            }
        },
        [11578] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [11580] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 11581
            }
        },
        [11581] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 25264
            }
        },
        [11600] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11601
            }
        },
        [11601] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 25288
            }
        },
        [11604] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 11605
            }
        },
        [11605] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 61,
                ["id"] = 25241
            }
        },
        [11608] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 50,
                ["id"] = 11609
            }
        },
        [11609] = {
            ["learnAtLvl"] = 50,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 20569
            }
        },
        [12294] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 21551
            }
        },
        [12678] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [20243] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 30016
            }
        },
        [20569] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 68,
                ["id"] = 25231
            }
        },
        [20658] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 40,
                ["id"] = 20660
            }
        },
        [20660] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 20661
            }
        },
        [20661] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 20662
            }
        },
        [20662] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 25234
            }
        },
        [21551] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 21552
            }
        },
        [21552] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 21553
            }
        },
        [21553] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 25248
            }
        },
        [23922] = {
            ["learnAtLvl"] = 40,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 23923
            }
        },
        [23923] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 23924
            }
        },
        [23924] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 23925
            }
        },
        [23925] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 25258
            }
        },
        [25202] = {
            ["learnAtLvl"] = 62,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25203
            }
        },
        [25203] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47437
            }
        },
        [25208] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 71,
                ["id"] = 46845
            }
        },
        [25231] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 47519
            }
        },
        [25234] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 25236
            }
        },
        [25236] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 47470
            }
        },
        [25241] = {
            ["learnAtLvl"] = 61,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 25242
            }
        },
        [25242] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 74,
                ["id"] = 47474
            }
        },
        [25248] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30330
            }
        },
        [25258] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30356
            }
        },
        [25264] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 73,
                ["id"] = 47501
            }
        },
        [25269] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30357
            }
        },
        [25286] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 29707
            }
        },
        [25288] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 63,
                ["id"] = 25269
            }
        },
        [25289] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 2048
            }
        },
        [29707] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30324
            }
        },
        [30016] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30022
            }
        },
        [30022] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47497
            }
        },
        [30324] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 11,
            ["nextRank"] = {
                ["learnAtLvl"] = 72,
                ["id"] = 47449
            }
        },
        [30330] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47485
            }
        },
        [30356] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = {
                ["learnAtLvl"] = 75,
                ["id"] = 47487
            }
        },
        [30357] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 57823
            }
        },
        [46845] = {
            ["learnAtLvl"] = 71,
            ["rank"] = 9,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 47465
            }
        },
        [47436] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [47437] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [47439] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47440
            }
        },
        [47440] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [47449] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 12,
            ["nextRank"] = {
                ["learnAtLvl"] = 76,
                ["id"] = 47450
            }
        },
        [47450] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 13,
            ["nextRank"] = nil
        },
        [47465] = {
            ["learnAtLvl"] = 76,
            ["rank"] = 10,
            ["nextRank"] = nil
        },
        [47470] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47471
            }
        },
        [47471] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [47474] = {
            ["learnAtLvl"] = 74,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 79,
                ["id"] = 47475
            }
        },
        [47475] = {
            ["learnAtLvl"] = 79,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [47485] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47486
            }
        },
        [47486] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [47487] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47488
            }
        },
        [47488] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [47497] = {
            ["learnAtLvl"] = 75,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 80,
                ["id"] = 47498
            }
        },
        [47498] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [47501] = {
            ["learnAtLvl"] = 73,
            ["rank"] = 8,
            ["nextRank"] = {
                ["learnAtLvl"] = 78,
                ["id"] = 47502
            }
        },
        [47502] = {
            ["learnAtLvl"] = 78,
            ["rank"] = 9,
            ["nextRank"] = nil
        },
        [47519] = {
            ["learnAtLvl"] = 72,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 77,
                ["id"] = 47520
            }
        },
        [47520] = {
            ["learnAtLvl"] = 77,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [57823] = {
            ["learnAtLvl"] = 80,
            ["rank"] = 9,
            ["nextRank"] = nil
        }
    }
}
