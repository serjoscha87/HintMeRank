local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "SHAMAN") then
	return
end 

SpellsById = {
    ["SHAMAN"] = {}
}

SpellsById["SHAMAN"] = {
    [324] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 16,
            ["id"] = 325
        }
    },
    [325] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 905
        }
    },
    [331] = {
        ["learnAtLvl"] = 1,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 6,
            ["id"] = 332
        }
    },
    [332] = {
        ["learnAtLvl"] = 6,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 12,
            ["id"] = 547
        }
    },
    [370] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 8012
        }
    },
    [403] = {
        ["learnAtLvl"] = 1,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 8,
            ["id"] = 529
        }
    },
    [421] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 930
        }
    },
    [529] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 14,
            ["id"] = 548
        }
    },
    [547] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 18,
            ["id"] = 913
        }
    },
    [548] = {
        ["learnAtLvl"] = 14,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 20,
            ["id"] = 915
        }
    },
    [905] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 945
        }
    },
    [913] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 939
        }
    },
    [915] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 26,
            ["id"] = 943
        }
    },
    [930] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 2860
        }
    },
    [939] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 959
        }
    },
    [943] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 6041
        }
    },
    [945] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 8134
        }
    },
    [959] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 8005
        }
    },
    [1064] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 10622
        }
    },
    [1535] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 22,
            ["id"] = 8498
        }
    },
    [2008] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 20609
        }
    },
    [2860] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 10605
        }
    },
    [3599] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 20,
            ["id"] = 6363
        }
    },
    [5394] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 6375
        }
    },
    [5675] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 10495
        }
    },
    [5730] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 18,
            ["id"] = 6390
        }
    },
    [6041] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 10391
        }
    },
    [6363] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 30,
            ["id"] = 6364
        }
    },
    [6364] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 6365
        }
    },
    [6365] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 10437
        }
    },
    [6375] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 6377
        }
    },
    [6377] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 10462
        }
    },
    [6390] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 6391
        }
    },
    [6391] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 6392
        }
    },
    [6392] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 10427
        }
    },
    [8004] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 8008
        }
    },
    [8005] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 10395
        }
    },
    [8008] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 8010
        }
    },
    [8010] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 10466
        }
    },
    [8012] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [8017] = {
        ["learnAtLvl"] = 1,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 8,
            ["id"] = 8018
        }
    },
    [8018] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 16,
            ["id"] = 8019
        }
    },
    [8019] = {
        ["learnAtLvl"] = 16,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 10399
        }
    },
    [8024] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 18,
            ["id"] = 8027
        }
    },
    [8027] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 26,
            ["id"] = 8030
        }
    },
    [8030] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 16339
        }
    },
    [8033] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 8038
        }
    },
    [8038] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 10456
        }
    },
    [8042] = {
        ["learnAtLvl"] = 4,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 8,
            ["id"] = 8044
        }
    },
    [8044] = {
        ["learnAtLvl"] = 8,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 14,
            ["id"] = 8045
        }
    },
    [8045] = {
        ["learnAtLvl"] = 14,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 8046
        }
    },
    [8046] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 10412
        }
    },
    [8050] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 18,
            ["id"] = 8052
        }
    },
    [8052] = {
        ["learnAtLvl"] = 18,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 8053
        }
    },
    [8053] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 10447
        }
    },
    [8056] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 34,
            ["id"] = 8058
        }
    },
    [8058] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 10472
        }
    },
    [8071] = {
        ["learnAtLvl"] = 4,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 14,
            ["id"] = 8154
        }
    },
    [8075] = {
        ["learnAtLvl"] = 10,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 8160
        }
    },
    [8134] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 10431
        }
    },
    [8154] = {
        ["learnAtLvl"] = 14,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 24,
            ["id"] = 8155
        }
    },
    [8155] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 34,
            ["id"] = 10406
        }
    },
    [8160] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 8161
        }
    },
    [8161] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 10442
        }
    },
    [8181] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 10478
        }
    },
    [8184] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 10537
        }
    },
    [8190] = {
        ["learnAtLvl"] = 26,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 10585
        }
    },
    [8227] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 38,
            ["id"] = 8249
        }
    },
    [8232] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 8235
        }
    },
    [8235] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 10486
        }
    },
    [8249] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 10526
        }
    },
    [8349] = {
        ["learnAtLvl"] = 12,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 22,
            ["id"] = 8498
        }
    },
    [8498] = {
        ["learnAtLvl"] = 22,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 8499
        }
    },
    [8499] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 11306
        }
    },
    [8502] = {
        ["learnAtLvl"] = 22,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 32,
            ["id"] = 8499
        }
    },
    [8503] = {
        ["learnAtLvl"] = 32,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 42,
            ["id"] = 11306
        }
    },
    [10391] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 10392
        }
    },
    [10392] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 15207
        }
    },
    [10395] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 10396
        }
    },
    [10396] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25357
        }
    },
    [10399] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [10406] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 10407
        }
    },
    [10407] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 10408
        }
    },
    [10408] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 25508
        }
    },
    [10412] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 10413
        }
    },
    [10413] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 10414
        }
    },
    [10414] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 25454
        }
    },
    [10427] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 10428
        }
    },
    [10428] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 25525
        }
    },
    [10431] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 10432
        }
    },
    [10432] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 25469
        }
    },
    [10437] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 10438
        }
    },
    [10438] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 25533
        }
    },
    [10442] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 25361
        }
    },
    [10447] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 10448
        }
    },
    [10448] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 29228
        }
    },
    [10456] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 16355
        }
    },
    [10462] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 10463
        }
    },
    [10463] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 25567
        }
    },
    [10466] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 10467
        }
    },
    [10467] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 10468
        }
    },
    [10468] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 25420
        }
    },
    [10472] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 10473
        }
    },
    [10473] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 25464
        }
    },
    [10478] = {
        ["learnAtLvl"] = 38,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 10479
        }
    },
    [10479] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 25560
        }
    },
    [10486] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 16362
        }
    },
    [10495] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 10496
        }
    },
    [10496] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 10497
        }
    },
    [10497] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 25570
        }
    },
    [10526] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 16387
        }
    },
    [10537] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 10538
        }
    },
    [10538] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 25563
        }
    },
    [10585] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 10586
        }
    },
    [10586] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 10587
        }
    },
    [10587] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 25552
        }
    },
    [10595] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 44,
            ["id"] = 10600
        }
    },
    [10600] = {
        ["learnAtLvl"] = 44,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 10601
        }
    },
    [10601] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 25574
        }
    },
    [10605] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 25439
        }
    },
    [10622] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 54,
            ["id"] = 10623
        }
    },
    [10623] = {
        ["learnAtLvl"] = 54,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 25422
        }
    },
    [11306] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 11307
        }
    },
    [11307] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 25535
        }
    },
    [11314] = {
        ["learnAtLvl"] = 42,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 52,
            ["id"] = 11307
        }
    },
    [11315] = {
        ["learnAtLvl"] = 52,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 61,
            ["id"] = 25535
        }
    },
    [15207] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 15208
        }
    },
    [15208] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 25448
        }
    },
    [16339] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 46,
            ["id"] = 16341
        }
    },
    [16341] = {
        ["learnAtLvl"] = 46,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 56,
            ["id"] = 16342
        }
    },
    [16342] = {
        ["learnAtLvl"] = 56,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 64,
            ["id"] = 25489
        }
    },
    [16355] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 58,
            ["id"] = 16356
        }
    },
    [16356] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 66,
            ["id"] = 25500
        }
    },
    [16362] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 25505
        }
    },
    [16387] = {
        ["learnAtLvl"] = 58,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 25557
        }
    },
    [20608] = {
        ["learnAtLvl"] = 30,
        ["rank"] = nil,
        ["nextRank"] = nil
    },
    [20609] = {
        ["learnAtLvl"] = 24,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 36,
            ["id"] = 20610
        }
    },
    [20610] = {
        ["learnAtLvl"] = 36,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 20776
        }
    },
    [20776] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 20777
        }
    },
    [20777] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 25590
        }
    },
    [24398] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 69,
            ["id"] = 33736
        }
    },
    [25357] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 63,
            ["id"] = 25391
        }
    },
    [25361] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 65,
            ["id"] = 25528
        }
    },
    [25391] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25396
        }
    },
    [25396] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49272
        }
    },
    [25420] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 72,
            ["id"] = 49275
        }
    },
    [25422] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 68,
            ["id"] = 25423
        }
    },
    [25423] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 55458
        }
    },
    [25439] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25442
        }
    },
    [25442] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 49270
        }
    },
    [25448] = {
        ["learnAtLvl"] = 62,
        ["rank"] = 11,
        ["nextRank"] = {
            ["learnAtLvl"] = 67,
            ["id"] = 25449
        }
    },
    [25449] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 12,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 49237
        }
    },
    [25454] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 74,
            ["id"] = 49230
        }
    },
    [25457] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49232
        }
    },
    [25464] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 49235
        }
    },
    [25469] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25472
        }
    },
    [25472] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49280
        }
    },
    [25489] = {
        ["learnAtLvl"] = 64,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58785
        }
    },
    [25500] = {
        ["learnAtLvl"] = 66,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58794
        }
    },
    [25505] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58801
        }
    },
    [25508] = {
        ["learnAtLvl"] = 63,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25509
        }
    },
    [25509] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 58751
        }
    },
    [25525] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58580
        }
    },
    [25528] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 57622
        }
    },
    [25533] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58699
        }
    },
    [25535] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25537
        }
    },
    [25537] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 61649
        }
    },
    [25546] = {
        ["learnAtLvl"] = 61,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25537
        }
    },
    [25547] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 61649
        }
    },
    [25552] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 73,
            ["id"] = 58731
        }
    },
    [25557] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58649
        }
    },
    [25560] = {
        ["learnAtLvl"] = 67,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 58741
        }
    },
    [25563] = {
        ["learnAtLvl"] = 68,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 58737
        }
    },
    [25567] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58755
        }
    },
    [25570] = {
        ["learnAtLvl"] = 65,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 71,
            ["id"] = 58771
        }
    },
    [25574] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 58746
        }
    },
    [25590] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49277
        }
    },
    [29228] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 25457
        }
    },
    [32593] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 32594
        }
    },
    [32594] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 49283
        }
    },
    [33736] = {
        ["learnAtLvl"] = 69,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 57960
        }
    },
    [49230] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 49231
        }
    },
    [49231] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [49232] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49233
        }
    },
    [49233] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [49235] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 49236
        }
    },
    [49236] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [49237] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 79,
            ["id"] = 49238
        }
    },
    [49238] = {
        ["learnAtLvl"] = 79,
        ["rank"] = 14,
        ["nextRank"] = nil
    },
    [49270] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49271
        }
    },
    [49271] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [49272] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 13,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49273
        }
    },
    [49273] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 14,
        ["nextRank"] = nil
    },
    [49275] = {
        ["learnAtLvl"] = 72,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 77,
            ["id"] = 49276
        }
    },
    [49276] = {
        ["learnAtLvl"] = 77,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [49277] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [49280] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 10,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49281
        }
    },
    [49281] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 11,
        ["nextRank"] = nil
    },
    [49283] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 49284
        }
    },
    [49284] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 5,
        ["nextRank"] = nil
    },
    [51505] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 60043
        }
    },
    [51730] = {
        ["learnAtLvl"] = 30,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 40,
            ["id"] = 51988
        }
    },
    [51988] = {
        ["learnAtLvl"] = 40,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 50,
            ["id"] = 51991
        }
    },
    [51991] = {
        ["learnAtLvl"] = 50,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 60,
            ["id"] = 51992
        }
    },
    [51992] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 51993
        }
    },
    [51993] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 51994
        }
    },
    [51994] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [52127] = {
        ["learnAtLvl"] = 20,
        ["rank"] = 1,
        ["nextRank"] = {
            ["learnAtLvl"] = 28,
            ["id"] = 52129
        }
    },
    [52129] = {
        ["learnAtLvl"] = 28,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 34,
            ["id"] = 52131
        }
    },
    [52131] = {
        ["learnAtLvl"] = 34,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 41,
            ["id"] = 52134
        }
    },
    [52134] = {
        ["learnAtLvl"] = 41,
        ["rank"] = 4,
        ["nextRank"] = {
            ["learnAtLvl"] = 48,
            ["id"] = 52136
        }
    },
    [52136] = {
        ["learnAtLvl"] = 48,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 55,
            ["id"] = 52138
        }
    },
    [52138] = {
        ["learnAtLvl"] = 55,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 62,
            ["id"] = 24398
        }
    },
    [55458] = {
        ["learnAtLvl"] = 74,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 55459
        }
    },
    [55459] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [57622] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58643
        }
    },
    [57720] = {
        ["learnAtLvl"] = 60,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 70,
            ["id"] = 57721
        }
    },
    [57721] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 57722
        }
    },
    [57722] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [57960] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [58580] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 58581
        }
    },
    [58581] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 58582
        }
    },
    [58582] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [58643] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [58649] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 58652
        }
    },
    [58652] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58656
        }
    },
    [58656] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [58699] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 58703
        }
    },
    [58703] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58704
        }
    },
    [58704] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [58731] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 58734
        }
    },
    [58734] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 7,
        ["nextRank"] = nil
    },
    [58737] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58739
        }
    },
    [58739] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [58741] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58745
        }
    },
    [58745] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [58746] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 5,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58749
        }
    },
    [58749] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 6,
        ["nextRank"] = nil
    },
    [58751] = {
        ["learnAtLvl"] = 73,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 78,
            ["id"] = 58753
        }
    },
    [58753] = {
        ["learnAtLvl"] = 78,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [58755] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 58756
        }
    },
    [58756] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58757
        }
    },
    [58757] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [58771] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 58773
        }
    },
    [58773] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58774
        }
    },
    [58774] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [58785] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 58789
        }
    },
    [58789] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 9,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58790
        }
    },
    [58790] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 10,
        ["nextRank"] = nil
    },
    [58794] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 58795
        }
    },
    [58795] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58796
        }
    },
    [58796] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [58801] = {
        ["learnAtLvl"] = 71,
        ["rank"] = 6,
        ["nextRank"] = {
            ["learnAtLvl"] = 76,
            ["id"] = 58803
        }
    },
    [58803] = {
        ["learnAtLvl"] = 76,
        ["rank"] = 7,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 58804
        }
    },
    [58804] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 8,
        ["nextRank"] = nil
    },
    [59156] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 59158
        }
    },
    [59158] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 59159
        }
    },
    [59159] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [60043] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 2,
        ["nextRank"] = nil
    },
    [61299] = {
        ["learnAtLvl"] = 70,
        ["rank"] = 2,
        ["nextRank"] = {
            ["learnAtLvl"] = 75,
            ["id"] = 61300
        }
    },
    [61300] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 3,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 61301
        }
    },
    [61301] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 4,
        ["nextRank"] = nil
    },
    [61649] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 61654
        }
    },
    [61650] = {
        ["learnAtLvl"] = 75,
        ["rank"] = 8,
        ["nextRank"] = {
            ["learnAtLvl"] = 80,
            ["id"] = 61654
        }
    },
    [61654] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    },
    [61657] = {
        ["learnAtLvl"] = 80,
        ["rank"] = 9,
        ["nextRank"] = nil
    }
}
