------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                              XML Processor                               --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

private package XML.SAX.Simple_Readers.Parser.Tables is

   pragma Preelaborate;

   type Goto_Entry is record
      Nonterm  : Integer;
      Newstate : Integer;
   end record;

   type Shift_Reduce_Entry is record
      T   : Integer;
      Act : Integer;
   end record;

   YY_Default           : constant :=    -1;
   YY_First_Shift_Entry : constant :=     0;
   YY_Accept_Code       : constant := -3001;
   YY_Error_Code        : constant := -3000;

   YY_Goto_Matrix : constant array (-1 .. 134) of Goto_Entry :=
    ((   -1,    -1), (   -3,     1), (   -2,     2), (   -4,     4),
     (  -14,    11), (  -13,     9), (   -6,     7), (   -5,    13),
     (  -14,    11), (  -13,    17), (   -7,    16), (  -17,    24),
     (  -15,    23), (   -8,    26), (  -10,    28), (  -26,    36),
     (  -25,    35), (  -24,    34), (  -23,    33), (  -22,    32),
     (  -21,    31), (  -14,    38), (  -12,    39), (  -16,    45),
     (  -52,    47), (  -14,    11), (  -13,     9), (   -6,    48),
     (  -11,    51), (  -26,    36), (  -25,    35), (  -24,    34),
     (  -23,    33), (  -22,    54), (  -14,    38), (  -12,    39),
     (  -29,    57), (  -39,    58), (  -17,    63), (  -20,    64),
     (  -54,    65), (  -53,    67), (  -14,    11), (  -13,    17),
     (   -9,    72), (  -27,    77), (  -15,    78), (  -34,    86),
     (  -33,    85), (  -32,    83), (  -31,    82), (  -30,    87),
     (  -41,    89), (  -40,    88), (  -26,    36), (  -25,    35),
     (  -24,    34), (  -23,    33), (  -22,    32), (  -21,    95),
     (  -18,    96), (  -14,    38), (  -12,    39), (  -14,    11),
     (  -13,     9), (   -6,    97), (  -59,   101), (  -28,   103),
     (  -27,   108), (  -15,   109), (  -37,   113), (  -35,   114),
     (  -34,   112), (  -33,   111), (  -41,   125), (  -26,    36),
     (  -25,    35), (  -24,    34), (  -23,    33), (  -22,    54),
     (  -14,    38), (  -12,    39), (  -14,    11), (  -13,    17),
     (  -55,   142), (  -58,   143), (  -36,   161), (  -37,   113),
     (  -35,   114), (  -34,   112), (  -33,   111), (  -38,   163),
     (  -42,   165), (  -44,   166), (  -45,   167), (  -46,   168),
     (  -47,   169), (  -48,   170), (  -49,   171), (  -50,   172),
     (  -19,   178), (  -57,   180), (  -56,   179), (  -14,   184),
     (  -12,   185), (   -8,   181), (  -35,   189), (  -34,   112),
     (  -33,   111), (  -35,   192), (  -34,   112), (  -33,   111),
     (  -43,   200), (  -43,   201), (  -43,   202), (  -43,   203),
     (  -43,   204), (  -43,   205), (  -43,   206), (  -43,   207),
     (  -51,   209), (  -14,    11), (  -13,     9), (   -6,   212),
     (  -57,   214), (  -14,   184), (  -12,   185), (   -8,   181),
     (  -35,   216), (  -34,   112), (  -33,   111), (  -51,   220),
     (  -14,    11), (  -13,    17), (  -43,   227), (  -43,   230));

   YY_Goto_Offset : constant array (0 .. 230) of Integer :=
    (    0,    2,    3,    3,    3,    7,    7,    7,
        10,   10,   10,   10,   10,   10,   10,   10,
        12,   13,   13,   13,   14,   14,   14,   22,
        23,   23,   24,   27,   27,   28,   28,   28,
        35,   35,   35,   35,   35,   35,   35,   35,
        35,   35,   36,   37,   37,   37,   38,   39,
        41,   44,   44,   44,   44,   44,   44,   44,
        46,   46,   51,   53,   53,   53,   53,   53,
        62,   65,   65,   66,   66,   66,   66,   66,
        66,   66,   66,   66,   66,   67,   67,   67,
        69,   69,   69,   69,   69,   73,   73,   73,
        73,   74,   74,   74,   74,   74,   74,   74,
        81,   81,   83,   84,   84,   85,   85,   85,
        85,   85,   85,   85,   85,   85,   85,   85,
        85,   85,   85,   86,   90,   91,   91,   91,
        91,   91,   91,   91,   91,   91,   91,   92,
        93,   94,   95,   96,   97,   98,   99,   99,
        99,   99,   99,   99,   99,   99,  100,  105,
       105,  105,  105,  105,  105,  105,  105,  105,
       105,  105,  105,  105,  105,  105,  105,  105,
       105,  108,  108,  111,  111,  111,  112,  113,
       114,  115,  116,  117,  118,  119,  119,  120,
       120,  120,  120,  123,  127,  127,  127,  127,
       127,  127,  127,  127,  127,  127,  127,  127,
       130,  130,  130,  130,  130,  130,  130,  130,
       130,  130,  130,  130,  130,  130,  130,  130,
       130,  131,  131,  131,  131,  133,  133,  133,
       133,  133,  133,  133,  133,  133,  134,  134,
       134,  134,  134,  135,  135,  135,  135);

   YY_Rule_Length : constant array (0 .. 141) of Integer :=
    (    2,    0,    3,    4,    5,    5,    1,    1,
         1,    1,    7,    0,    8,    5,    3,    0,
         3,    0,    2,    1,    0,    1,    1,    2,
         0,    0,    8,    0,    5,    0,    2,    3,
         1,    3,    0,    2,    1,    0,    1,    1,
         1,    1,    1,    1,    1,    4,    4,    5,
         4,    4,    6,    5,    5,    3,    2,    1,
         0,    0,    4,    1,    1,    1,    1,    2,
         2,    2,    1,    2,    2,    2,    1,    4,
         3,    3,    2,    3,    1,    2,    2,    2,
         1,    2,    2,    2,    1,    2,    2,    2,
         1,    5,    4,    3,    2,    0,    0,    4,
         2,    1,    0,    0,    4,    0,    4,    0,
         4,    0,    4,    0,    4,    0,    4,    0,
         4,    0,    4,    7,    6,    3,    2,    0,
         1,    1,    2,    1,    0,    3,    0,    6,
         2,    2,    1,    0,    1,    1,    1,    1,
         1,    0,    5,    0,    4,    0);

   YY_Get_LHS_Rule : constant array (0 .. 141) of Integer :=
    (   -1,   -3,   -2,   -5,   -5,   -5,   -5,   -9,
        -9,   -9,   -4,   -4,  -12,  -12,  -10,  -10,
       -11,  -11,   -6,   -6,   -6,  -13,  -13,  -14,
       -16,  -19,   -7,  -20,   -7,   -7,  -15,  -15,
       -18,  -17,  -17,  -21,  -21,  -21,  -22,  -22,
       -22,  -22,  -22,  -22,  -22,  -26,  -26,  -26,
       -23,  -23,  -23,  -23,  -23,  -27,  -28,  -28,
       -28,  -29,  -24,  -30,  -30,  -30,  -30,  -32,
       -32,  -32,  -32,  -32,  -32,  -32,  -32,  -33,
       -34,  -36,  -36,  -37,  -37,  -35,  -35,  -35,
       -35,  -35,  -35,  -35,  -35,  -35,  -35,  -35,
       -35,  -31,  -31,  -38,  -38,  -38,  -39,  -25,
       -40,  -40,  -40,  -42,  -41,  -44,  -41,  -45,
       -41,  -46,  -41,  -47,  -41,  -48,  -41,  -49,
       -41,  -50,  -41,  -41,  -41,  -51,  -51,  -51,
       -43,  -43,  -43,  -43,  -52,   -8,  -55,  -53,
       -53,  -56,  -56,  -56,  -57,  -57,  -57,  -57,
       -57,  -58,  -54,  -59,  -54,  -54);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 468) of Shift_Reduce_Entry :=
    ((   -1,    -1), (   -1,    -1), (    3,     3), (   -1,   -11),
     (    0, -3001), (   -1, -3000), (   29,     6), (   -1, -3000),
     (    1,     8), (    4,    12), (   24,    10), (   -1,   -20),
     (   -1, -3000), (   26,    14), (   -1, -3000), (    4,    12),
     (    7,    15), (   24,    10), (   -1,   -29), (   -1,    -6),
     (   -1,   -19), (   -1,   -21), (   -1,   -22), (    5,    18),
     (   -1, -3000), (   -1,    -2), (   22,    19), (   -1, -3000),
     (   13,    20), (   14,    21), (   17,    22), (   -1,   -34),
     (   25,    25), (   -1, -3000), (   -1,   -18), (   -1,   -23),
     (   30,    27), (   -1,   -15), (   15,    29), (   -1, -3000),
     (   16,    30), (   -1, -3000), (    3,    44), (    4,    12),
     (    8,    40), (    9,    41), (   10,    43), (   24,    37),
     (   42,    42), (   -1,   -37), (   -1,   -24), (   11,    46),
     (   -1, -3000), (   -1,  -124), (    4,    12), (   24,    10),
     (   -1,   -20), (   26,    49), (   -1, -3000), (   31,    50),
     (   -1,   -17), (   -1,   -30), (   15,    52), (   -1, -3000),
     (    3,    44), (    4,    12), (    8,    40), (    9,    41),
     (   10,    43), (   18,    53), (   24,    37), (   42,    42),
     (   -1, -3000), (   -1,   -36), (   -1,   -38), (   -1,   -39),
     (   -1,   -40), (   -1,   -41), (   -1,   -42), (   -1,   -43),
     (   -1,   -44), (   12,    55), (   19,    56), (   -1, -3000),
     (   -1,   -57), (   -1,   -94), (   13,    59), (   14,    60),
     (   -1, -3000), (   29,    61), (   30,    62), (   -1, -3000),
     (   17,    22), (   -1,   -34), (   -1,   -27), (   12,    66),
     (   -1,  -141), (    1,    71), (    4,    12), (   22,    68),
     (   24,    10), (   25,    70), (   27,    69), (   -1,    -3),
     (   22,    73), (   -1, -3000), (   26,    74), (   -1, -3000),
     (    5,    75), (   -1, -3000), (   -1,   -31), (   -1,   -33),
     (   -1,   -35), (   13,    20), (   14,    21), (   20,    76),
     (   -1, -3000), (   12,    79), (   -1, -3000), (   32,    80),
     (   33,    81), (   34,    84), (   -1, -3000), (   12,    90),
     (   -1,   -98), (   15,    91), (   -1, -3000), (   16,    92),
     (   -1, -3000), (   26,    93), (   -1, -3000), (   26,    94),
     (   -1, -3000), (    3,    44), (    4,    12), (    8,    40),
     (    9,    41), (   10,    43), (   24,    37), (   42,    42),
     (   -1,   -37), (    4,    12), (   24,    10), (   -1,   -20),
     (   11,    98), (   12,   100), (   28,    99), (   -1, -3000),
     (   -1,  -139), (   -1,  -125), (   -1,    -7), (   -1,    -8),
     (   -1,    -9), (   -1,    -4), (   -1,    -5), (   -1,   -14),
     (   22,   102), (   -1, -3000), (   -1,   -10), (   22,   104),
     (   -1,   -56), (   11,   105), (   -1, -3000), (   11,   106),
     (   23,   107), (   -1, -3000), (   13,    20), (   14,    21),
     (   20,    76), (   -1, -3000), (   -1,   -59), (   -1,   -60),
     (   -1,   -61), (   -1,   -62), (   12,   110), (   34,   115),
     (   41,   116), (   -1, -3000), (   38,   117), (   39,   118),
     (   40,   119), (   -1,   -66), (   38,   120), (   39,   121),
     (   40,   122), (   -1,   -70), (   11,   123), (   -1, -3000),
     (   11,   124), (   12,    90), (   -1, -3000), (   -1,   -97),
     (   34,   135), (   43,   126), (   44,   127), (   45,   128),
     (   46,   129), (   47,   130), (   48,   131), (   49,   132),
     (   50,   133), (   51,   134), (   -1, -3000), (   11,   136),
     (   -1, -3000), (   11,   137), (   15,   138), (   -1, -3000),
     (   22,   139), (   -1, -3000), (   22,   140), (   -1, -3000),
     (    3,    44), (    4,    12), (    8,    40), (    9,    41),
     (   10,    43), (   24,    37), (   42,    42), (   -1,   -32),
     (   11,   141), (   -1, -3000), (    4,    12), (   24,    10),
     (   -1,   -28), (   -1,  -126), (   -1,  -128), (   -1,  -137),
     (   26,   144), (   -1, -3000), (   -1,   -16), (   21,   145),
     (   22,   146), (   -1, -3000), (   -1,   -55), (   -1,   -48),
     (   -1,   -49), (   12,   147), (   -1, -3000), (   11,   148),
     (   -1, -3000), (   11,   149), (   -1, -3000), (   38,   150),
     (   39,   151), (   40,   152), (   -1,   -80), (   38,   153),
     (   39,   154), (   40,   155), (   -1,   -84), (   38,   156),
     (   39,   157), (   40,   158), (   -1,   -88), (   35,   159),
     (   37,   160), (   -1, -3000), (   36,   162), (   -1,   -76),
     (   12,   110), (   34,   115), (   -1, -3000), (   36,   164),
     (   -1,   -93), (   -1,   -63), (   -1,   -64), (   -1,   -65),
     (   -1,   -67), (   -1,   -68), (   -1,   -69), (   -1,   -58),
     (   -1,   -95), (   -1,   -96), (   -1,   -99), (   -1,  -101),
     (   -1,  -103), (   -1,  -105), (   -1,  -107), (   -1,  -109),
     (   -1,  -111), (   -1,  -113), (   34,   173), (   -1, -3000),
     (   12,   174), (   -1, -3000), (   -1,   -45), (   -1,   -46),
     (   11,   175), (   -1, -3000), (   30,   176), (   -1, -3000),
     (    5,   177), (   -1, -3000), (   -1,   -25), (    3,    44),
     (    4,    12), (   22,   182), (   24,   183), (   25,    25),
     (   -1,  -131), (   26,   186), (   -1, -3000), (   22,   187),
     (   -1, -3000), (   -1,   -53), (   -1,   -54), (   11,   188),
     (   -1, -3000), (   -1,   -51), (   -1,   -52), (   -1,   -77),
     (   -1,   -78), (   -1,   -79), (   -1,   -81), (   -1,   -82),
     (   -1,   -83), (   -1,   -85), (   -1,   -86), (   -1,   -87),
     (   -1,   -72), (   12,   110), (   34,   115), (   -1, -3000),
     (   35,   190), (   36,   191), (   -1, -3000), (   12,   110),
     (   34,   115), (   -1, -3000), (   35,   193), (   36,   194),
     (   -1, -3000), (   12,   195), (   -1, -3000), (   22,   199),
     (   52,   196), (   53,   197), (   54,   198), (   -1, -3000),
     (   22,   199), (   52,   196), (   53,   197), (   54,   198),
     (   -1, -3000), (   22,   199), (   52,   196), (   53,   197),
     (   54,   198), (   -1, -3000), (   22,   199), (   52,   196),
     (   53,   197), (   54,   198), (   -1, -3000), (   22,   199),
     (   52,   196), (   53,   197), (   54,   198), (   -1, -3000),
     (   22,   199), (   52,   196), (   53,   197), (   54,   198),
     (   -1, -3000), (   22,   199), (   52,   196), (   53,   197),
     (   54,   198), (   -1, -3000), (   22,   199), (   52,   196),
     (   53,   197), (   54,   198), (   -1, -3000), (   12,   208),
     (   -1, -3000), (   36,   210), (   -1,  -119), (   -1,   -47),
     (   26,   211), (   -1, -3000), (   -1,   -13), (    4,    12),
     (   24,    10), (   -1,   -20), (    3,    44), (    4,    12),
     (   22,   182), (   24,   183), (   25,    25), (   27,   213),
     (   -1, -3000), (   -1,  -130), (   -1,  -132), (   -1,  -133),
     (   -1,  -134), (   -1,  -135), (   -1,  -136), (   22,   215),
     (   -1, -3000), (   -1,  -140), (   -1,   -50), (   -1,   -75),
     (   -1,   -71), (   12,   110), (   34,   115), (   -1, -3000),
     (   -1,   -74), (   39,   217), (   -1,   -90), (   12,   218),
     (   -1, -3000), (   -1,   -92), (   -1,  -120), (   -1,  -121),
     (   22,   219), (   -1, -3000), (   -1,  -123), (   -1,  -100),
     (   -1,  -102), (   -1,  -104), (   -1,  -106), (   -1,  -108),
     (   -1,  -110), (   -1,  -112), (   -1,  -114), (   36,   210),
     (   -1,  -119), (   35,   221), (   36,   222), (   -1, -3000),
     (   12,   223), (   -1, -3000), (   22,   224), (   -1, -3000),
     (    4,    12), (   24,    10), (   -1,   -26), (   11,   225),
     (   -1, -3000), (   -1,  -129), (   -1,  -138), (   -1,   -73),
     (   -1,   -89), (   -1,   -91), (   -1,  -122), (   35,   226),
     (   36,   222), (   -1, -3000), (   22,   199), (   52,   196),
     (   53,   197), (   54,   198), (   -1, -3000), (   12,   228),
     (   -1, -3000), (   -1,  -118), (    5,   229), (   -1, -3000),
     (   -1,  -127), (   22,   199), (   52,   196), (   53,   197),
     (   54,   198), (   -1, -3000), (   -1,  -116), (   -1,  -117),
     (   -1,   -12), (   -1,  -115));

   YY_Shift_Reduce_Offset : constant array (0 .. 230) of Integer :=
    (    0,    1,    3,    5,    7,   11,   12,   14,
        18,   19,   20,   21,   22,   24,   25,   27,
        31,   33,   34,   35,   37,   39,   41,   49,
        50,   52,   53,   56,   58,   60,   61,   63,
        72,   73,   74,   75,   76,   77,   78,   79,
        80,   83,   84,   85,   88,   91,   93,   94,
        96,  103,  105,  107,  109,  110,  111,  112,
       116,  118,  122,  124,  126,  128,  130,  132,
       140,  143,  147,  148,  149,  150,  151,  152,
       153,  154,  155,  157,  158,  160,  162,  165,
       169,  170,  171,  172,  173,  177,  181,  185,
       187,  190,  191,  202,  204,  207,  209,  211,
       219,  221,  224,  225,  226,  227,  229,  230,
       233,  234,  235,  236,  238,  240,  242,  246,
       250,  254,  257,  259,  262,  264,  265,  266,
       267,  268,  269,  270,  271,  272,  273,  274,
       275,  276,  277,  278,  279,  280,  281,  283,
       285,  286,  287,  289,  291,  293,  294,  300,
       302,  304,  305,  306,  308,  309,  310,  311,
       312,  313,  314,  315,  316,  317,  318,  319,
       320,  323,  326,  329,  332,  334,  339,  344,
       349,  354,  359,  364,  369,  374,  376,  378,
       379,  381,  382,  385,  392,  393,  394,  395,
       396,  397,  398,  400,  401,  402,  403,  404,
       407,  408,  410,  412,  413,  414,  415,  417,
       418,  419,  420,  421,  422,  423,  424,  425,
       426,  428,  431,  433,  435,  438,  440,  441,
       442,  443,  444,  445,  446,  449,  454,  456,
       457,  459,  460,  465,  466,  467,  468);

end XML.SAX.Simple_Readers.Parser.Tables;
