package Parser.Shift_Reduce is

    type Small_Integer is range -32_000 .. 32_000;

    type Shift_Reduce_Entry is record
        T   : Small_Integer;
        Act : Small_Integer;
    end record;
    pragma Pack(Shift_Reduce_Entry);

    subtype Row is Integer range -1 .. Integer'Last;

  --pragma suppress(index_check);

    type Shift_Reduce_Array is array (Row  range <>) of Shift_Reduce_Entry;

    Shift_Reduce_Matrix : constant Shift_Reduce_Array :=
        ( (-1,-1) -- Dummy Entry

-- state  0
,(-1,-2)
-- state  1
,( 1, 4),(-1,-4)
-- state  2
,( 0,-3001)
,(-1,-3000)
-- state  3
,( 4, 6),( 5, 7),( 6, 8)
,(-1,-3000)
-- state  4
,( 11, 11),(-1,-3000)
-- state  5
,(-1,-3000)

-- state  6
,(-1,-6)
-- state  7
,(-1,-7)
-- state  8
,(-1,-8)
-- state  9
,(-1,-13)

-- state  10
,( 7, 13),(-1,-3000)
-- state  11
,(-1,-5)
-- state  12
,(-1,-14)

-- state  13
,( 1, 17),( 8, 16),(-1,-3000)
-- state  14
,( 1, 22)
,( 2, 32),( 9, 29),( 10, 21),( 12, 33)
,( 13, 19),( 14, 23),( 25, 27),( 26, 30)
,( 27, 31),( 29, 34),(-1,-1)
-- state  15
,( 7, 37)
,( 11, 36),(-1,-3000)
-- state  16
,(-1,-10)
-- state  17
,(-1,-11)

-- state  18
,( 2, 32),( 9, 29),( 10, 40),( 12, 33)
,( 13, 39),( 25, 27),( 26, 30),( 27, 31)
,( 29, 34),(-1,-3000)
-- state  19
,( 2, 32),( 9, 29)
,( 12, 33),( 25, 27),( 26, 30),( 27, 31)
,( 29, 34),(-1,-3000)
-- state  20
,( 17, 42),( 18, 44)
,( 19, 45),(-1,-27)
-- state  21
,(-1,-20)
-- state  22
,(-1,-21)

-- state  23
,( 1, 48),( 8, 47),(-1,-3000)
-- state  24
,( 2, 32)
,( 9, 29),( 12, 33),( 25, 27),( 26, 30)
,( 27, 31),( 29, 34),(-1,-3000)
-- state  25
,( 2, 32)
,( 9, 29),( 12, 33),( 25, 27),( 26, 30)
,( 27, 31),( 29, 34),(-1,-30)
-- state  26
,( 20, 51)
,( 21, 52),( 22, 53),( 23, 54),(-1,-33)

-- state  27
,(-1,-40)
-- state  28
,(-1,-41)
-- state  29
,(-1,-42)
-- state  30
,(-1,-54)

-- state  31
,( 2, 32),( 9, 29),( 12, 33),( 25, 27)
,( 26, 30),( 27, 31),( 29, 34),(-1,-3000)

-- state  32
,(-1,-45)
-- state  33
,(-1,-46)
-- state  34
,( 13, 58),(-1,-52)

-- state  35
,( 11, 59),(-1,-3000)
-- state  36
,(-1,-3)
-- state  37
,( 8, 60)
,(-1,-3000)
-- state  38
,( 17, 42),( 18, 44),( 19, 45)
,(-1,-27)
-- state  39
,( 2, 32),( 9, 29),( 12, 33)
,( 25, 27),( 26, 30),( 27, 31),( 29, 34)
,(-1,-3000)
-- state  40
,(-1,-19)
-- state  41
,( 17, 42),( 18, 44)
,( 19, 45),(-1,-27)
-- state  42
,(-1,-26)
-- state  43
,(-1,-18)

-- state  44
,( 2, 32),( 9, 29),( 12, 33),( 25, 27)
,( 26, 30),( 27, 31),( 29, 34),(-1,-3000)

-- state  45
,(-1,-31)
-- state  46
,( 15, 65),( 16, 66),(-1,-3000)

-- state  47
,(-1,-24)
-- state  48
,(-1,-25)
-- state  49
,( 2, 32),( 9, 29)
,( 12, 33),( 25, 27),( 26, 30),( 27, 31)
,( 29, 34),(-1,-29)
-- state  50
,( 20, 51),( 21, 52)
,( 22, 53),( 23, 54),(-1,-32)
-- state  51
,(-1,-34)

-- state  52
,(-1,-35)
-- state  53
,(-1,-36)
-- state  54
,( 3, 67),(-1,-3000)

-- state  55
,( 2, 69),( 26, 68),(-1,-3000)
-- state  56
,( 18, 44)
,( 19, 45),( 28, 70),(-1,-3000)
-- state  57
,( 2, 72)
,( 12, 73),( 30, 71),(-1,-3000)
-- state  58
,(-1,-52)

-- state  59
,(-1,-12)
-- state  60
,(-1,-9)
-- state  61
,(-1,-16)
-- state  62
,( 17, 42)
,( 18, 44),( 19, 45),(-1,-27)
-- state  63
,(-1,-17)

-- state  64
,( 2, 32),( 9, 29),( 12, 33),( 25, 27)
,( 26, 30),( 27, 31),( 29, 34),(-1,-28)

-- state  65
,(-1,-22)
-- state  66
,( 8, 76),(-1,-3000)
-- state  67
,( 16, 77)
,( 24, 78),(-1,-3000)
-- state  68
,(-1,-43)
-- state  69
,(-1,-53)

-- state  70
,(-1,-44)
-- state  71
,(-1,-47)
-- state  72
,( 31, 79),(-1,-50)

-- state  73
,(-1,-51)
-- state  74
,( 2, 72),( 12, 73),( 30, 80)
,(-1,-3000)
-- state  75
,(-1,-15)
-- state  76
,(-1,-23)
-- state  77
,( 3, 81)
,( 24, 82),(-1,-3000)
-- state  78
,(-1,-39)
-- state  79
,( 2, 83)
,(-1,-3000)
-- state  80
,(-1,-48)
-- state  81
,( 24, 84),(-1,-3000)

-- state  82
,(-1,-38)
-- state  83
,(-1,-49)
-- state  84
,(-1,-37)
);
--  The offset vector
SHIFT_REDUCE_OFFSET : constant array (0.. 84) of Integer :=
( 0,
 1, 3, 5, 9, 11, 12, 13, 14, 15, 16,
 18, 19, 20, 23, 35, 38, 39, 40, 50, 58,
 62, 63, 64, 67, 75, 83, 88, 89, 90, 91,
 92, 100, 101, 102, 104, 106, 107, 109, 113, 121,
 122, 126, 127, 128, 136, 137, 140, 141, 142, 150,
 155, 156, 157, 158, 160, 163, 167, 171, 172, 173,
 174, 175, 179, 180, 188, 189, 191, 194, 195, 196,
 197, 198, 200, 201, 205, 206, 207, 210, 211, 213,
 214, 216, 217, 218);
end Parser.Shift_Reduce;
