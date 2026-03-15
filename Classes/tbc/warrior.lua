local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "WARRIOR") then
	return
end 

SpellsById = {
    ["WARRIOR"] = {
        [72] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 1671
            }
        },
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
            ["nextRank"] = nil
        },
        [694] = {
            ["learnAtLvl"] = 16,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 26,
                ["id"] = 7400
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
        [1671] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 1672
            }
        },
        [1672] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 64,
                ["id"] = 29704
            }
        },
        [1715] = {
            ["learnAtLvl"] = 8,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 32,
                ["id"] = 7372
            }
        },
        [2048] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 8,
            ["nextRank"] = nil
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
        [6552] = {
            ["learnAtLvl"] = 38,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 6554
            }
        },
        [6554] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 2,
            ["nextRank"] = nil
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
        [7372] = {
            ["learnAtLvl"] = 32,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 7373
            }
        },
        [7373] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 25212
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
        [7384] = {
            ["learnAtLvl"] = 12,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 28,
                ["id"] = 7887
            }
        },
        [7386] = {
            ["learnAtLvl"] = 10,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 22,
                ["id"] = 7405
            }
        },
        [7400] = {
            ["learnAtLvl"] = 26,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 36,
                ["id"] = 7402
            }
        },
        [7402] = {
            ["learnAtLvl"] = 36,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 20559
            }
        },
        [7405] = {
            ["learnAtLvl"] = 22,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 34,
                ["id"] = 8380
            }
        },
        [7887] = {
            ["learnAtLvl"] = 28,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 44,
                ["id"] = 11584
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
        [8380] = {
            ["learnAtLvl"] = 34,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 46,
                ["id"] = 11596
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
        [11584] = {
            ["learnAtLvl"] = 44,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 11585
            }
        },
        [11585] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [11596] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 58,
                ["id"] = 11597
            }
        },
        [11597] = {
            ["learnAtLvl"] = 58,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 67,
                ["id"] = 25225
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
        [12163] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12711
            }
        },
        [12281] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12812
            }
        },
        [12282] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12663
            }
        },
        [12284] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12701
            }
        },
        [12285] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12697
            }
        },
        [12286] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12658
            }
        },
        [12287] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12665
            }
        },
        [12289] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12668
            }
        },
        [12290] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12963
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
        [12295] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12676
            }
        },
        [12297] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12750
            }
        },
        [12298] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12724
            }
        },
        [12299] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12761
            }
        },
        [12300] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12959
            }
        },
        [12301] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12818
            }
        },
        [12302] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12765
            }
        },
        [12303] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12788
            }
        },
        [12308] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12810
            }
        },
        [12311] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12958
            }
        },
        [12312] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12803
            }
        },
        [12313] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12804
            }
        },
        [12317] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13045
            }
        },
        [12318] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12857
            }
        },
        [12319] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12971
            }
        },
        [12320] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12852
            }
        },
        [12321] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12835
            }
        },
        [12322] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12999
            }
        },
        [12324] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12876
            }
        },
        [12329] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12950
            }
        },
        [12330] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12658] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12659
            }
        },
        [12659] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12663] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12664
            }
        },
        [12664] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12665] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12666
            }
        },
        [12666] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12668] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 23695
            }
        },
        [12676] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12677
            }
        },
        [12677] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12678] = {
            ["learnAtLvl"] = 20,
            ["rank"] = nil,
            ["nextRank"] = nil
        },
        [12697] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12700] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12781
            }
        },
        [12701] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12702
            }
        },
        [12702] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12703
            }
        },
        [12703] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12704
            }
        },
        [12704] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12711] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12712
            }
        },
        [12712] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12713
            }
        },
        [12713] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12714
            }
        },
        [12714] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12724] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12725
            }
        },
        [12725] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12726
            }
        },
        [12726] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12727
            }
        },
        [12727] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12750] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12751
            }
        },
        [12751] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12752
            }
        },
        [12752] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12753
            }
        },
        [12753] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12761] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12762
            }
        },
        [12762] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12763
            }
        },
        [12763] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12764
            }
        },
        [12764] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12765] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12781] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12783
            }
        },
        [12783] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12784
            }
        },
        [12784] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12785
            }
        },
        [12785] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12788] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12789
            }
        },
        [12789] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12797] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12799
            }
        },
        [12799] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12800
            }
        },
        [12800] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12803] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12804] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12807
            }
        },
        [12807] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12810] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12811
            }
        },
        [12811] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12812] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12813
            }
        },
        [12813] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12814
            }
        },
        [12814] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12815
            }
        },
        [12815] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12818] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12834] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12849
            }
        },
        [12835] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12836
            }
        },
        [12836] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12837
            }
        },
        [12837] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12838
            }
        },
        [12838] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12849] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12867
            }
        },
        [12852] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12853
            }
        },
        [12853] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12855
            }
        },
        [12855] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12856
            }
        },
        [12856] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12857] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12858
            }
        },
        [12858] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12860
            }
        },
        [12860] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12861
            }
        },
        [12861] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12862] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12330
            }
        },
        [12864] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 1,
                ["id"] = 12865
            }
        },
        [12865] = {
            ["learnAtLvl"] = 1,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [12867] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [12876] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12877
            }
        },
        [12877] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12878
            }
        },
        [12878] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12879
            }
        },
        [12879] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12945] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [12950] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 20496
            }
        },
        [12958] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12959] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12960
            }
        },
        [12960] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12961
            }
        },
        [12961] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12962
            }
        },
        [12962] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12963] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [12971] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12972
            }
        },
        [12972] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12973
            }
        },
        [12973] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 12974
            }
        },
        [12974] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [12999] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13000
            }
        },
        [13000] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13001
            }
        },
        [13001] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13002
            }
        },
        [13002] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [13045] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13046
            }
        },
        [13046] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13047
            }
        },
        [13047] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 13048
            }
        },
        [13048] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16462] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16463
            }
        },
        [16463] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16464
            }
        },
        [16464] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16465
            }
        },
        [16465] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16466
            }
        },
        [16466] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [16487] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16489
            }
        },
        [16489] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16492
            }
        },
        [16492] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [16493] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16494
            }
        },
        [16494] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [16538] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16539
            }
        },
        [16539] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16540
            }
        },
        [16540] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16541
            }
        },
        [16541] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 16542
            }
        },
        [16542] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
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
        [20252] = {
            ["learnAtLvl"] = 30,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 42,
                ["id"] = 20616
            }
        },
        [20496] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [20500] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 20501
            }
        },
        [20501] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [20502] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 20503
            }
        },
        [20503] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [20504] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 20505
            }
        },
        [20505] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [20559] = {
            ["learnAtLvl"] = 46,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 56,
                ["id"] = 20560
            }
        },
        [20560] = {
            ["learnAtLvl"] = 56,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 65,
                ["id"] = 25266
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
        [20616] = {
            ["learnAtLvl"] = 42,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 52,
                ["id"] = 20617
            }
        },
        [20617] = {
            ["learnAtLvl"] = 52,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 61,
                ["id"] = 25272
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
        [23584] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 23585
            }
        },
        [23585] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 23586
            }
        },
        [23586] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 23587
            }
        },
        [23587] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 23588
            }
        },
        [23588] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [23695] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [23881] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 48,
                ["id"] = 23892
            }
        },
        [23892] = {
            ["learnAtLvl"] = 48,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 54,
                ["id"] = 23893
            }
        },
        [23893] = {
            ["learnAtLvl"] = 54,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 23894
            }
        },
        [23894] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 66,
                ["id"] = 25251
            }
        },
        [23922] = {
            ["learnAtLvl"] = 0,
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
            ["nextRank"] = nil
        },
        [25208] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [25212] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [25225] = {
            ["learnAtLvl"] = 67,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [25231] = {
            ["learnAtLvl"] = 68,
            ["rank"] = 6,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [25248] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30330
            }
        },
        [25251] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 5,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30335
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
            ["nextRank"] = nil
        },
        [25266] = {
            ["learnAtLvl"] = 65,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [25269] = {
            ["learnAtLvl"] = 63,
            ["rank"] = 7,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30357
            }
        },
        [25272] = {
            ["learnAtLvl"] = 61,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 69,
                ["id"] = 25275
            }
        },
        [25275] = {
            ["learnAtLvl"] = 69,
            ["rank"] = 5,
            ["nextRank"] = nil
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
        [29140] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29143
            }
        },
        [29143] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29144
            }
        },
        [29144] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29145
            }
        },
        [29145] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29146
            }
        },
        [29146] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [29590] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29591
            }
        },
        [29591] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29592
            }
        },
        [29592] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29593] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29594
            }
        },
        [29594] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29595
            }
        },
        [29595] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29598] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29599
            }
        },
        [29599] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29600
            }
        },
        [29600] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29704] = {
            ["learnAtLvl"] = 64,
            ["rank"] = 4,
            ["nextRank"] = nil
        },
        [29707] = {
            ["learnAtLvl"] = 66,
            ["rank"] = 10,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30324
            }
        },
        [29721] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29776
            }
        },
        [29723] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29724
            }
        },
        [29724] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29725
            }
        },
        [29725] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29759] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29760
            }
        },
        [29760] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29761
            }
        },
        [29761] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29762
            }
        },
        [29762] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29763
            }
        },
        [29763] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        },
        [29776] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [29787] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29790
            }
        },
        [29790] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29792
            }
        },
        [29792] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [29801] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 60,
                ["id"] = 30030
            }
        },
        [29834] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29838
            }
        },
        [29836] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29859
            }
        },
        [29838] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [29859] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
        },
        [29888] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 29889
            }
        },
        [29889] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = nil
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
            ["nextRank"] = nil
        },
        [30030] = {
            ["learnAtLvl"] = 60,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 70,
                ["id"] = 30033
            }
        },
        [30033] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 3,
            ["nextRank"] = nil
        },
        [30324] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 11,
            ["nextRank"] = nil
        },
        [30330] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [30335] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [30356] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 6,
            ["nextRank"] = nil
        },
        [30357] = {
            ["learnAtLvl"] = 70,
            ["rank"] = 8,
            ["nextRank"] = nil
        },
        [34428] = {
            ["learnAtLvl"] = 62,
            ["rank"] = 1,
            ["nextRank"] = nil
        },
        [35446] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 1,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 35448
            }
        },
        [35448] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 2,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 35449
            }
        },
        [35449] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 3,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 35450
            }
        },
        [35450] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 4,
            ["nextRank"] = {
                ["learnAtLvl"] = 0,
                ["id"] = 35451
            }
        },
        [35451] = {
            ["learnAtLvl"] = 0,
            ["rank"] = 5,
            ["nextRank"] = nil
        }
    }
}
