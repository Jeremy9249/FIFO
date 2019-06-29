/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu May  9 15:32:58 2019
/////////////////////////////////////////////////////////////


module FIFO ( RDATA, REMPTY, WFULL, WDATA, WINC, RINC, WCLK, RCLK, WRST_n, 
        RRST_n );
  output [15:0] RDATA;
  input [15:0] WDATA;
  input WINC, RINC, WCLK, RCLK, WRST_n, RRST_n;
  output REMPTY, WFULL;
  wire   \DUAL_RAM/RAM[0][15] , \DUAL_RAM/RAM[0][14] , \DUAL_RAM/RAM[0][13] ,
         \DUAL_RAM/RAM[0][12] , \DUAL_RAM/RAM[0][11] , \DUAL_RAM/RAM[0][10] ,
         \DUAL_RAM/RAM[0][9] , \DUAL_RAM/RAM[0][8] , \DUAL_RAM/RAM[0][7] ,
         \DUAL_RAM/RAM[0][6] , \DUAL_RAM/RAM[0][5] , \DUAL_RAM/RAM[0][4] ,
         \DUAL_RAM/RAM[0][3] , \DUAL_RAM/RAM[0][2] , \DUAL_RAM/RAM[0][1] ,
         \DUAL_RAM/RAM[0][0] , \DUAL_RAM/RAM[1][15] , \DUAL_RAM/RAM[1][14] ,
         \DUAL_RAM/RAM[1][13] , \DUAL_RAM/RAM[1][12] , \DUAL_RAM/RAM[1][11] ,
         \DUAL_RAM/RAM[1][10] , \DUAL_RAM/RAM[1][9] , \DUAL_RAM/RAM[1][8] ,
         \DUAL_RAM/RAM[1][7] , \DUAL_RAM/RAM[1][6] , \DUAL_RAM/RAM[1][5] ,
         \DUAL_RAM/RAM[1][4] , \DUAL_RAM/RAM[1][3] , \DUAL_RAM/RAM[1][2] ,
         \DUAL_RAM/RAM[1][1] , \DUAL_RAM/RAM[1][0] , \DUAL_RAM/RAM[2][15] ,
         \DUAL_RAM/RAM[2][14] , \DUAL_RAM/RAM[2][13] , \DUAL_RAM/RAM[2][12] ,
         \DUAL_RAM/RAM[2][11] , \DUAL_RAM/RAM[2][10] , \DUAL_RAM/RAM[2][9] ,
         \DUAL_RAM/RAM[2][8] , \DUAL_RAM/RAM[2][7] , \DUAL_RAM/RAM[2][6] ,
         \DUAL_RAM/RAM[2][5] , \DUAL_RAM/RAM[2][4] , \DUAL_RAM/RAM[2][3] ,
         \DUAL_RAM/RAM[2][2] , \DUAL_RAM/RAM[2][1] , \DUAL_RAM/RAM[2][0] ,
         \DUAL_RAM/RAM[3][15] , \DUAL_RAM/RAM[3][14] , \DUAL_RAM/RAM[3][13] ,
         \DUAL_RAM/RAM[3][12] , \DUAL_RAM/RAM[3][11] , \DUAL_RAM/RAM[3][10] ,
         \DUAL_RAM/RAM[3][9] , \DUAL_RAM/RAM[3][8] , \DUAL_RAM/RAM[3][7] ,
         \DUAL_RAM/RAM[3][6] , \DUAL_RAM/RAM[3][5] , \DUAL_RAM/RAM[3][4] ,
         \DUAL_RAM/RAM[3][3] , \DUAL_RAM/RAM[3][2] , \DUAL_RAM/RAM[3][1] ,
         \DUAL_RAM/RAM[3][0] , \DUAL_RAM/RAM[4][15] , \DUAL_RAM/RAM[4][14] ,
         \DUAL_RAM/RAM[4][13] , \DUAL_RAM/RAM[4][12] , \DUAL_RAM/RAM[4][11] ,
         \DUAL_RAM/RAM[4][10] , \DUAL_RAM/RAM[4][9] , \DUAL_RAM/RAM[4][8] ,
         \DUAL_RAM/RAM[4][7] , \DUAL_RAM/RAM[4][6] , \DUAL_RAM/RAM[4][5] ,
         \DUAL_RAM/RAM[4][4] , \DUAL_RAM/RAM[4][3] , \DUAL_RAM/RAM[4][2] ,
         \DUAL_RAM/RAM[4][1] , \DUAL_RAM/RAM[4][0] , \DUAL_RAM/RAM[5][15] ,
         \DUAL_RAM/RAM[5][14] , \DUAL_RAM/RAM[5][13] , \DUAL_RAM/RAM[5][12] ,
         \DUAL_RAM/RAM[5][11] , \DUAL_RAM/RAM[5][10] , \DUAL_RAM/RAM[5][9] ,
         \DUAL_RAM/RAM[5][8] , \DUAL_RAM/RAM[5][7] , \DUAL_RAM/RAM[5][6] ,
         \DUAL_RAM/RAM[5][5] , \DUAL_RAM/RAM[5][4] , \DUAL_RAM/RAM[5][3] ,
         \DUAL_RAM/RAM[5][2] , \DUAL_RAM/RAM[5][1] , \DUAL_RAM/RAM[5][0] ,
         \DUAL_RAM/RAM[6][15] , \DUAL_RAM/RAM[6][14] , \DUAL_RAM/RAM[6][13] ,
         \DUAL_RAM/RAM[6][12] , \DUAL_RAM/RAM[6][11] , \DUAL_RAM/RAM[6][10] ,
         \DUAL_RAM/RAM[6][9] , \DUAL_RAM/RAM[6][8] , \DUAL_RAM/RAM[6][7] ,
         \DUAL_RAM/RAM[6][6] , \DUAL_RAM/RAM[6][5] , \DUAL_RAM/RAM[6][4] ,
         \DUAL_RAM/RAM[6][3] , \DUAL_RAM/RAM[6][2] , \DUAL_RAM/RAM[6][1] ,
         \DUAL_RAM/RAM[6][0] , \DUAL_RAM/RAM[7][15] , \DUAL_RAM/RAM[7][14] ,
         \DUAL_RAM/RAM[7][13] , \DUAL_RAM/RAM[7][12] , \DUAL_RAM/RAM[7][11] ,
         \DUAL_RAM/RAM[7][10] , \DUAL_RAM/RAM[7][9] , \DUAL_RAM/RAM[7][8] ,
         \DUAL_RAM/RAM[7][7] , \DUAL_RAM/RAM[7][6] , \DUAL_RAM/RAM[7][5] ,
         \DUAL_RAM/RAM[7][4] , \DUAL_RAM/RAM[7][3] , \DUAL_RAM/RAM[7][2] ,
         \DUAL_RAM/RAM[7][1] , \DUAL_RAM/RAM[7][0] , \DUAL_RAM/RAM[8][15] ,
         \DUAL_RAM/RAM[8][14] , \DUAL_RAM/RAM[8][13] , \DUAL_RAM/RAM[8][12] ,
         \DUAL_RAM/RAM[8][11] , \DUAL_RAM/RAM[8][10] , \DUAL_RAM/RAM[8][9] ,
         \DUAL_RAM/RAM[8][8] , \DUAL_RAM/RAM[8][7] , \DUAL_RAM/RAM[8][6] ,
         \DUAL_RAM/RAM[8][5] , \DUAL_RAM/RAM[8][4] , \DUAL_RAM/RAM[8][3] ,
         \DUAL_RAM/RAM[8][2] , \DUAL_RAM/RAM[8][1] , \DUAL_RAM/RAM[8][0] ,
         \DUAL_RAM/RAM[9][15] , \DUAL_RAM/RAM[9][14] , \DUAL_RAM/RAM[9][13] ,
         \DUAL_RAM/RAM[9][12] , \DUAL_RAM/RAM[9][11] , \DUAL_RAM/RAM[9][10] ,
         \DUAL_RAM/RAM[9][9] , \DUAL_RAM/RAM[9][8] , \DUAL_RAM/RAM[9][7] ,
         \DUAL_RAM/RAM[9][6] , \DUAL_RAM/RAM[9][5] , \DUAL_RAM/RAM[9][4] ,
         \DUAL_RAM/RAM[9][3] , \DUAL_RAM/RAM[9][2] , \DUAL_RAM/RAM[9][1] ,
         \DUAL_RAM/RAM[9][0] , \DUAL_RAM/RAM[10][15] , \DUAL_RAM/RAM[10][14] ,
         \DUAL_RAM/RAM[10][13] , \DUAL_RAM/RAM[10][12] ,
         \DUAL_RAM/RAM[10][11] , \DUAL_RAM/RAM[10][10] , \DUAL_RAM/RAM[10][9] ,
         \DUAL_RAM/RAM[10][8] , \DUAL_RAM/RAM[10][7] , \DUAL_RAM/RAM[10][6] ,
         \DUAL_RAM/RAM[10][5] , \DUAL_RAM/RAM[10][4] , \DUAL_RAM/RAM[10][3] ,
         \DUAL_RAM/RAM[10][2] , \DUAL_RAM/RAM[10][1] , \DUAL_RAM/RAM[10][0] ,
         \DUAL_RAM/RAM[11][15] , \DUAL_RAM/RAM[11][14] ,
         \DUAL_RAM/RAM[11][13] , \DUAL_RAM/RAM[11][12] ,
         \DUAL_RAM/RAM[11][11] , \DUAL_RAM/RAM[11][10] , \DUAL_RAM/RAM[11][9] ,
         \DUAL_RAM/RAM[11][8] , \DUAL_RAM/RAM[11][7] , \DUAL_RAM/RAM[11][6] ,
         \DUAL_RAM/RAM[11][5] , \DUAL_RAM/RAM[11][4] , \DUAL_RAM/RAM[11][3] ,
         \DUAL_RAM/RAM[11][2] , \DUAL_RAM/RAM[11][1] , \DUAL_RAM/RAM[11][0] ,
         \DUAL_RAM/RAM[12][15] , \DUAL_RAM/RAM[12][14] ,
         \DUAL_RAM/RAM[12][13] , \DUAL_RAM/RAM[12][12] ,
         \DUAL_RAM/RAM[12][11] , \DUAL_RAM/RAM[12][10] , \DUAL_RAM/RAM[12][9] ,
         \DUAL_RAM/RAM[12][8] , \DUAL_RAM/RAM[12][7] , \DUAL_RAM/RAM[12][6] ,
         \DUAL_RAM/RAM[12][5] , \DUAL_RAM/RAM[12][4] , \DUAL_RAM/RAM[12][3] ,
         \DUAL_RAM/RAM[12][2] , \DUAL_RAM/RAM[12][1] , \DUAL_RAM/RAM[12][0] ,
         \DUAL_RAM/RAM[13][15] , \DUAL_RAM/RAM[13][14] ,
         \DUAL_RAM/RAM[13][13] , \DUAL_RAM/RAM[13][12] ,
         \DUAL_RAM/RAM[13][11] , \DUAL_RAM/RAM[13][10] , \DUAL_RAM/RAM[13][9] ,
         \DUAL_RAM/RAM[13][8] , \DUAL_RAM/RAM[13][7] , \DUAL_RAM/RAM[13][6] ,
         \DUAL_RAM/RAM[13][5] , \DUAL_RAM/RAM[13][4] , \DUAL_RAM/RAM[13][3] ,
         \DUAL_RAM/RAM[13][2] , \DUAL_RAM/RAM[13][1] , \DUAL_RAM/RAM[13][0] ,
         \DUAL_RAM/RAM[14][15] , \DUAL_RAM/RAM[14][14] ,
         \DUAL_RAM/RAM[14][13] , \DUAL_RAM/RAM[14][12] ,
         \DUAL_RAM/RAM[14][11] , \DUAL_RAM/RAM[14][10] , \DUAL_RAM/RAM[14][9] ,
         \DUAL_RAM/RAM[14][8] , \DUAL_RAM/RAM[14][7] , \DUAL_RAM/RAM[14][6] ,
         \DUAL_RAM/RAM[14][5] , \DUAL_RAM/RAM[14][4] , \DUAL_RAM/RAM[14][3] ,
         \DUAL_RAM/RAM[14][2] , \DUAL_RAM/RAM[14][1] , \DUAL_RAM/RAM[14][0] ,
         \DUAL_RAM/RAM[15][15] , \DUAL_RAM/RAM[15][14] ,
         \DUAL_RAM/RAM[15][13] , \DUAL_RAM/RAM[15][12] ,
         \DUAL_RAM/RAM[15][11] , \DUAL_RAM/RAM[15][10] , \DUAL_RAM/RAM[15][9] ,
         \DUAL_RAM/RAM[15][8] , \DUAL_RAM/RAM[15][7] , \DUAL_RAM/RAM[15][6] ,
         \DUAL_RAM/RAM[15][5] , \DUAL_RAM/RAM[15][4] , \DUAL_RAM/RAM[15][3] ,
         \DUAL_RAM/RAM[15][2] , \DUAL_RAM/RAM[15][1] , \DUAL_RAM/RAM[15][0] ,
         \DUAL_RAM/N11 , \DUAL_RAM/N10 , \DUAL_RAM/N9 , \WR_PTR/isWFULL ,
         \WR_PTR/WR_BIN[4] , \RD_PTR/isREMPTY , \RD_PTR/N1 ,
         \RD_PTR/RD_BIN[4] , n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, \WR_PTR/add_33/B[0] , n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656;
  wire   [4:0] RPTR;
  wire   [4:0] WQ2_RPTR;
  wire   [4:0] WPTR;
  wire   [4:0] RQ2_WPTR;
  wire   [3:0] WADDR;
  wire   [4:0] \SYNC_R2W/WQ1_RPTR ;
  wire   [4:0] \SYNC_W2R/RQ1_WPTR ;
  wire   [3:0] \WR_PTR/WR_GRAYNEXT ;
  wire   [4:0] \WR_PTR/WR_BINNEXT ;
  wire   [3:0] \RD_PTR/RD_GRAYNEXT ;
  wire   [4:0] \RD_PTR/RD_BINNEXT ;
  wire   [4:1] \RD_PTR/add_32/carry ;
  wire   [4:1] \WR_PTR/add_33/carry ;

  DFFARX1 \RD_PTR/RPTR_reg[4]  ( .D(n515), .CLK(RCLK), .RSTB(RRST_n), .Q(
        RPTR[4]) );
  DFFARX1 \SYNC_R2W/WQ1_RPTR_reg[4]  ( .D(RPTR[4]), .CLK(WCLK), .RSTB(WRST_n), 
        .Q(\SYNC_R2W/WQ1_RPTR [4]) );
  DFFARX1 \SYNC_R2W/WQ2_RPTR_reg[4]  ( .D(\SYNC_R2W/WQ1_RPTR [4]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WQ2_RPTR[4]) );
  DFFARX1 \WR_PTR/WFULL_reg  ( .D(\WR_PTR/isWFULL ), .CLK(WCLK), .RSTB(WRST_n), 
        .Q(WFULL), .QN(n27) );
  DFFARX1 \WR_PTR/WR_BIN_reg[0]  ( .D(\WR_PTR/WR_BINNEXT [0]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WADDR[0]), .QN(n28) );
  DFFARX1 \WR_PTR/WR_BIN_reg[1]  ( .D(\WR_PTR/WR_BINNEXT [1]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WADDR[1]), .QN(n29) );
  DFFARX1 \WR_PTR/WPTR_reg[0]  ( .D(\WR_PTR/WR_GRAYNEXT [0]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WPTR[0]) );
  DFFARX1 \SYNC_W2R/RQ1_WPTR_reg[0]  ( .D(WPTR[0]), .CLK(RCLK), .RSTB(RRST_n), 
        .Q(\SYNC_W2R/RQ1_WPTR [0]) );
  DFFARX1 \SYNC_W2R/RQ2_WPTR_reg[0]  ( .D(\SYNC_W2R/RQ1_WPTR [0]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RQ2_WPTR[0]) );
  DFFARX1 \WR_PTR/WR_BIN_reg[2]  ( .D(\WR_PTR/WR_BINNEXT [2]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WADDR[2]), .QN(n30) );
  DFFARX1 \WR_PTR/WPTR_reg[1]  ( .D(\WR_PTR/WR_GRAYNEXT [1]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WPTR[1]) );
  DFFARX1 \SYNC_W2R/RQ1_WPTR_reg[1]  ( .D(WPTR[1]), .CLK(RCLK), .RSTB(RRST_n), 
        .Q(\SYNC_W2R/RQ1_WPTR [1]) );
  DFFARX1 \SYNC_W2R/RQ2_WPTR_reg[1]  ( .D(\SYNC_W2R/RQ1_WPTR [1]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RQ2_WPTR[1]), .QN(n324) );
  DFFARX1 \WR_PTR/WR_BIN_reg[3]  ( .D(\WR_PTR/WR_BINNEXT [3]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WADDR[3]) );
  DFFX1 \DUAL_RAM/RAM_reg[8][0]  ( .D(n207), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][15]  ( .D(n206), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][14]  ( .D(n205), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][13]  ( .D(n204), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][12]  ( .D(n203), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][11]  ( .D(n202), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][10]  ( .D(n201), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][9]  ( .D(n200), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][8]  ( .D(n199), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][7]  ( .D(n198), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][6]  ( .D(n197), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][5]  ( .D(n196), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][4]  ( .D(n195), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][3]  ( .D(n194), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][2]  ( .D(n193), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[8][1]  ( .D(n192), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[8][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][0]  ( .D(n239), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][15]  ( .D(n238), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][14]  ( .D(n237), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][13]  ( .D(n236), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][12]  ( .D(n235), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][11]  ( .D(n234), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][10]  ( .D(n233), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][9]  ( .D(n232), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][8]  ( .D(n231), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][7]  ( .D(n230), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][6]  ( .D(n229), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][5]  ( .D(n228), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][4]  ( .D(n227), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][3]  ( .D(n226), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][2]  ( .D(n225), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[10][1]  ( .D(n224), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[10][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][0]  ( .D(n271), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][15]  ( .D(n270), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][14]  ( .D(n269), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][13]  ( .D(n268), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][12]  ( .D(n267), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][11]  ( .D(n266), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][10]  ( .D(n265), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][9]  ( .D(n264), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][8]  ( .D(n263), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][7]  ( .D(n262), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][6]  ( .D(n261), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][5]  ( .D(n260), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][4]  ( .D(n259), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][3]  ( .D(n258), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][2]  ( .D(n257), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[12][1]  ( .D(n256), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[12][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][0]  ( .D(n303), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][15]  ( .D(n302), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][14]  ( .D(n301), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][13]  ( .D(n300), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][12]  ( .D(n299), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][11]  ( .D(n298), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][10]  ( .D(n297), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][9]  ( .D(n296), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][8]  ( .D(n295), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][7]  ( .D(n294), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][6]  ( .D(n293), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][5]  ( .D(n292), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][4]  ( .D(n291), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][3]  ( .D(n290), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][2]  ( .D(n289), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[14][1]  ( .D(n288), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[14][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][0]  ( .D(n223), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][15]  ( .D(n222), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][14]  ( .D(n221), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][13]  ( .D(n220), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][12]  ( .D(n219), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][11]  ( .D(n218), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][10]  ( .D(n217), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][9]  ( .D(n216), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][8]  ( .D(n215), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][7]  ( .D(n214), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][6]  ( .D(n213), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][5]  ( .D(n212), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][4]  ( .D(n211), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][3]  ( .D(n210), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][2]  ( .D(n209), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[9][1]  ( .D(n208), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[9][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][0]  ( .D(n255), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][15]  ( .D(n254), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][14]  ( .D(n253), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][13]  ( .D(n252), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][12]  ( .D(n251), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][11]  ( .D(n250), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][10]  ( .D(n249), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][9]  ( .D(n248), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][8]  ( .D(n247), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][7]  ( .D(n246), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][6]  ( .D(n245), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][5]  ( .D(n244), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][4]  ( .D(n243), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][3]  ( .D(n242), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][2]  ( .D(n241), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[11][1]  ( .D(n240), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[11][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][0]  ( .D(n287), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][15]  ( .D(n286), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][14]  ( .D(n285), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][13]  ( .D(n284), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][12]  ( .D(n283), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][11]  ( .D(n282), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][10]  ( .D(n281), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][9]  ( .D(n280), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][8]  ( .D(n279), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][7]  ( .D(n278), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][6]  ( .D(n277), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][5]  ( .D(n276), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][4]  ( .D(n275), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][3]  ( .D(n274), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][2]  ( .D(n273), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[13][1]  ( .D(n272), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[13][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][0]  ( .D(n319), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][15]  ( .D(n318), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][14]  ( .D(n317), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][13]  ( .D(n316), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][12]  ( .D(n315), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][11]  ( .D(n314), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][10]  ( .D(n313), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][9]  ( .D(n312), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][8]  ( .D(n311), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][7]  ( .D(n310), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][6]  ( .D(n309), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][5]  ( .D(n308), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][4]  ( .D(n307), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][3]  ( .D(n306), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][2]  ( .D(n305), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[15][1]  ( .D(n304), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[15][1] ) );
  DFFARX1 \WR_PTR/WPTR_reg[2]  ( .D(\WR_PTR/WR_GRAYNEXT [2]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WPTR[2]) );
  DFFARX1 \SYNC_W2R/RQ1_WPTR_reg[2]  ( .D(WPTR[2]), .CLK(RCLK), .RSTB(RRST_n), 
        .Q(\SYNC_W2R/RQ1_WPTR [2]) );
  DFFARX1 \SYNC_W2R/RQ2_WPTR_reg[2]  ( .D(\SYNC_W2R/RQ1_WPTR [2]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RQ2_WPTR[2]) );
  DFFARX1 \WR_PTR/WR_BIN_reg[4]  ( .D(\WR_PTR/WR_BINNEXT [4]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(\WR_PTR/WR_BIN[4] ) );
  DFFARX1 \WR_PTR/WPTR_reg[4]  ( .D(\WR_PTR/WR_BINNEXT [4]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WPTR[4]) );
  DFFARX1 \SYNC_W2R/RQ1_WPTR_reg[4]  ( .D(WPTR[4]), .CLK(RCLK), .RSTB(RRST_n), 
        .Q(\SYNC_W2R/RQ1_WPTR [4]) );
  DFFARX1 \SYNC_W2R/RQ2_WPTR_reg[4]  ( .D(\SYNC_W2R/RQ1_WPTR [4]), .CLK(RCLK), 
        .RSTB(RRST_n), .QN(n326) );
  DFFARX1 \WR_PTR/WPTR_reg[3]  ( .D(\WR_PTR/WR_GRAYNEXT [3]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WPTR[3]) );
  DFFARX1 \SYNC_W2R/RQ1_WPTR_reg[3]  ( .D(WPTR[3]), .CLK(RCLK), .RSTB(RRST_n), 
        .Q(\SYNC_W2R/RQ1_WPTR [3]) );
  DFFARX1 \SYNC_W2R/RQ2_WPTR_reg[3]  ( .D(\SYNC_W2R/RQ1_WPTR [3]), .CLK(RCLK), 
        .RSTB(RRST_n), .QN(n607) );
  DFFASX1 \RD_PTR/REMPTY_reg  ( .D(\RD_PTR/isREMPTY ), .CLK(RCLK), .SETB(
        RRST_n), .Q(REMPTY), .QN(n610) );
  DFFARX1 \RD_PTR/RD_BIN_reg[0]  ( .D(\RD_PTR/RD_BINNEXT [0]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(\DUAL_RAM/N9 ), .QN(n614) );
  DFFARX1 \RD_PTR/RD_BIN_reg[1]  ( .D(\RD_PTR/RD_BINNEXT [1]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(\DUAL_RAM/N10 ), .QN(n616) );
  DFFARX1 \RD_PTR/RPTR_reg[0]  ( .D(\RD_PTR/RD_GRAYNEXT [0]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RPTR[0]) );
  DFFARX1 \SYNC_R2W/WQ1_RPTR_reg[0]  ( .D(RPTR[0]), .CLK(WCLK), .RSTB(WRST_n), 
        .Q(\SYNC_R2W/WQ1_RPTR [0]) );
  DFFARX1 \SYNC_R2W/WQ2_RPTR_reg[0]  ( .D(\SYNC_R2W/WQ1_RPTR [0]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WQ2_RPTR[0]) );
  DFFARX1 \RD_PTR/RD_BIN_reg[2]  ( .D(n606), .CLK(RCLK), .RSTB(RRST_n), .Q(
        \DUAL_RAM/N11 ), .QN(n612) );
  DFFARX1 \RD_PTR/RPTR_reg[1]  ( .D(\RD_PTR/RD_GRAYNEXT [1]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RPTR[1]) );
  DFFARX1 \SYNC_R2W/WQ1_RPTR_reg[1]  ( .D(RPTR[1]), .CLK(WCLK), .RSTB(WRST_n), 
        .Q(\SYNC_R2W/WQ1_RPTR [1]) );
  DFFARX1 \SYNC_R2W/WQ2_RPTR_reg[1]  ( .D(\SYNC_R2W/WQ1_RPTR [1]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WQ2_RPTR[1]) );
  DFFARX1 \RD_PTR/RD_BIN_reg[3]  ( .D(\RD_PTR/RD_BINNEXT [3]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(n325), .QN(n609) );
  DFFARX1 \RD_PTR/RPTR_reg[2]  ( .D(\RD_PTR/RD_GRAYNEXT [2]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RPTR[2]) );
  DFFARX1 \SYNC_R2W/WQ1_RPTR_reg[2]  ( .D(RPTR[2]), .CLK(WCLK), .RSTB(WRST_n), 
        .Q(\SYNC_R2W/WQ1_RPTR [2]) );
  DFFARX1 \SYNC_R2W/WQ2_RPTR_reg[2]  ( .D(\SYNC_R2W/WQ1_RPTR [2]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WQ2_RPTR[2]) );
  DFFARX1 \RD_PTR/RD_BIN_reg[4]  ( .D(n515), .CLK(RCLK), .RSTB(RRST_n), .Q(
        \RD_PTR/RD_BIN[4] ) );
  DFFARX1 \RD_PTR/RPTR_reg[3]  ( .D(\RD_PTR/RD_GRAYNEXT [3]), .CLK(RCLK), 
        .RSTB(RRST_n), .Q(RPTR[3]) );
  DFFARX1 \SYNC_R2W/WQ1_RPTR_reg[3]  ( .D(RPTR[3]), .CLK(WCLK), .RSTB(WRST_n), 
        .Q(\SYNC_R2W/WQ1_RPTR [3]) );
  DFFARX1 \SYNC_R2W/WQ2_RPTR_reg[3]  ( .D(\SYNC_R2W/WQ1_RPTR [3]), .CLK(WCLK), 
        .RSTB(WRST_n), .Q(WQ2_RPTR[3]) );
  DFFX1 \DUAL_RAM/RAM_reg[0][0]  ( .D(n79), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][15]  ( .D(n78), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][14]  ( .D(n77), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][13]  ( .D(n76), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][12]  ( .D(n75), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][11]  ( .D(n74), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][10]  ( .D(n73), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][9]  ( .D(n72), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][8]  ( .D(n71), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][7]  ( .D(n70), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][6]  ( .D(n69), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][5]  ( .D(n68), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][4]  ( .D(n67), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][3]  ( .D(n66), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][2]  ( .D(n65), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[0][1]  ( .D(n64), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[0][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][0]  ( .D(n111), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][15]  ( .D(n110), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][14]  ( .D(n109), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][13]  ( .D(n108), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][12]  ( .D(n107), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][11]  ( .D(n106), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][10]  ( .D(n105), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][9]  ( .D(n104), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][8]  ( .D(n103), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][7]  ( .D(n102), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][6]  ( .D(n101), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][5]  ( .D(n100), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][4]  ( .D(n99), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][3]  ( .D(n98), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][2]  ( .D(n97), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[2][1]  ( .D(n96), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[2][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][0]  ( .D(n143), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][15]  ( .D(n142), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][14]  ( .D(n141), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][13]  ( .D(n140), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][12]  ( .D(n139), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][11]  ( .D(n138), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][10]  ( .D(n137), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][9]  ( .D(n136), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][8]  ( .D(n135), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][7]  ( .D(n134), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][6]  ( .D(n133), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][5]  ( .D(n132), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][4]  ( .D(n131), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][3]  ( .D(n130), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][2]  ( .D(n129), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[4][1]  ( .D(n128), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[4][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][0]  ( .D(n175), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][15]  ( .D(n174), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][14]  ( .D(n173), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][13]  ( .D(n172), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][12]  ( .D(n171), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][11]  ( .D(n170), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][10]  ( .D(n169), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][9]  ( .D(n168), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][8]  ( .D(n167), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][7]  ( .D(n166), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][6]  ( .D(n165), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][5]  ( .D(n164), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][4]  ( .D(n163), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][3]  ( .D(n162), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][2]  ( .D(n161), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[6][1]  ( .D(n160), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[6][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][0]  ( .D(n95), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][15]  ( .D(n94), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][14]  ( .D(n93), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][13]  ( .D(n92), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][12]  ( .D(n91), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][11]  ( .D(n90), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][10]  ( .D(n89), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][9]  ( .D(n88), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][8]  ( .D(n87), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][7]  ( .D(n86), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][6]  ( .D(n85), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][5]  ( .D(n84), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][4]  ( .D(n83), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][3]  ( .D(n82), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][2]  ( .D(n81), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[1][1]  ( .D(n80), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[1][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][0]  ( .D(n127), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][15]  ( .D(n126), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][14]  ( .D(n125), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][13]  ( .D(n124), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][12]  ( .D(n123), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][11]  ( .D(n122), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][10]  ( .D(n121), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][9]  ( .D(n120), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][8]  ( .D(n119), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][7]  ( .D(n118), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][6]  ( .D(n117), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][5]  ( .D(n116), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][4]  ( .D(n115), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][3]  ( .D(n114), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][2]  ( .D(n113), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[3][1]  ( .D(n112), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[3][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][0]  ( .D(n159), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][15]  ( .D(n158), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][14]  ( .D(n157), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][14] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][13]  ( .D(n156), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][12]  ( .D(n155), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][11]  ( .D(n154), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][10]  ( .D(n153), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][9]  ( .D(n152), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][8]  ( .D(n151), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][7]  ( .D(n150), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][6]  ( .D(n149), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][5]  ( .D(n148), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][4]  ( .D(n147), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][3]  ( .D(n146), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][2]  ( .D(n145), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[5][1]  ( .D(n144), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[5][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][13]  ( .D(n188), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][13] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][12]  ( .D(n187), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][12] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][11]  ( .D(n186), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][11] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][10]  ( .D(n185), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][10] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][9]  ( .D(n184), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][9] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][8]  ( .D(n183), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][8] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][7]  ( .D(n182), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][7] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][6]  ( .D(n181), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][6] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][5]  ( .D(n180), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][5] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][4]  ( .D(n179), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][4] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][3]  ( .D(n178), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][3] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][2]  ( .D(n177), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][2] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][1]  ( .D(n176), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][1] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][0]  ( .D(n191), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][0] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][15]  ( .D(n190), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][15] ) );
  DFFX1 \DUAL_RAM/RAM_reg[7][14]  ( .D(n189), .CLK(WCLK), .Q(
        \DUAL_RAM/RAM[7][14] ) );
  AO22X1 U47 ( .IN1(WDATA[14]), .IN2(n628), .IN3(\DUAL_RAM/RAM[7][14] ), .IN4(
        n629), .Q(n189) );
  AO22X1 U48 ( .IN1(WDATA[15]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][15] ), .IN4(
        n629), .Q(n190) );
  AO22X1 U49 ( .IN1(WDATA[0]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][0] ), .IN4(
        n629), .Q(n191) );
  AO22X1 U50 ( .IN1(WDATA[1]), .IN2(n518), .IN3(\DUAL_RAM/RAM[8][1] ), .IN4(
        n521), .Q(n192) );
  AO22X1 U51 ( .IN1(WDATA[2]), .IN2(n519), .IN3(\DUAL_RAM/RAM[8][2] ), .IN4(
        n521), .Q(n193) );
  AO22X1 U52 ( .IN1(WDATA[3]), .IN2(n517), .IN3(\DUAL_RAM/RAM[8][3] ), .IN4(
        n622), .Q(n194) );
  AO22X1 U53 ( .IN1(WDATA[4]), .IN2(n517), .IN3(\DUAL_RAM/RAM[8][4] ), .IN4(
        n32), .Q(n195) );
  AO22X1 U54 ( .IN1(WDATA[5]), .IN2(n517), .IN3(\DUAL_RAM/RAM[8][5] ), .IN4(
        n522), .Q(n196) );
  AO22X1 U55 ( .IN1(WDATA[6]), .IN2(n655), .IN3(\DUAL_RAM/RAM[8][6] ), .IN4(
        n521), .Q(n197) );
  AO22X1 U56 ( .IN1(WDATA[7]), .IN2(n517), .IN3(\DUAL_RAM/RAM[8][7] ), .IN4(
        n522), .Q(n198) );
  AO22X1 U57 ( .IN1(WDATA[8]), .IN2(n518), .IN3(\DUAL_RAM/RAM[8][8] ), .IN4(
        n622), .Q(n199) );
  AO22X1 U58 ( .IN1(WDATA[9]), .IN2(n517), .IN3(\DUAL_RAM/RAM[8][9] ), .IN4(
        n522), .Q(n200) );
  AO22X1 U59 ( .IN1(WDATA[10]), .IN2(n518), .IN3(\DUAL_RAM/RAM[8][10] ), .IN4(
        n521), .Q(n201) );
  AO22X1 U60 ( .IN1(WDATA[11]), .IN2(n520), .IN3(\DUAL_RAM/RAM[8][11] ), .IN4(
        n521), .Q(n202) );
  AO22X1 U61 ( .IN1(WDATA[12]), .IN2(n519), .IN3(\DUAL_RAM/RAM[8][12] ), .IN4(
        n522), .Q(n203) );
  AO22X1 U62 ( .IN1(WDATA[13]), .IN2(n644), .IN3(\DUAL_RAM/RAM[8][13] ), .IN4(
        n516), .Q(n204) );
  AO22X1 U63 ( .IN1(n519), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[8][14] ), .IN4(
        n522), .Q(n205) );
  AO22X1 U64 ( .IN1(n519), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[8][15] ), .IN4(
        n521), .Q(n206) );
  AO22X1 U65 ( .IN1(n518), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[8][0] ), .IN4(
        n522), .Q(n207) );
  AO22X1 U66 ( .IN1(n547), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[9][1] ), .IN4(
        n539), .Q(n208) );
  AO22X1 U67 ( .IN1(n547), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[9][2] ), .IN4(
        n539), .Q(n209) );
  AO22X1 U68 ( .IN1(n547), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[9][3] ), .IN4(
        n540), .Q(n210) );
  AO22X1 U69 ( .IN1(n547), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[9][4] ), .IN4(
        n541), .Q(n211) );
  AO22X1 U70 ( .IN1(n545), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[9][5] ), .IN4(
        n540), .Q(n212) );
  AO22X1 U71 ( .IN1(n537), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[9][6] ), .IN4(
        n539), .Q(n213) );
  AO22X1 U72 ( .IN1(n544), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[9][7] ), .IN4(
        n542), .Q(n214) );
  AO22X1 U73 ( .IN1(n546), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[9][8] ), .IN4(
        n542), .Q(n215) );
  AO22X1 U74 ( .IN1(n545), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[9][9] ), .IN4(
        n541), .Q(n216) );
  AO22X1 U75 ( .IN1(n546), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[9][10] ), .IN4(
        n539), .Q(n217) );
  AO22X1 U76 ( .IN1(n546), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[9][11] ), .IN4(
        n540), .Q(n218) );
  AO22X1 U77 ( .IN1(n546), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[9][12] ), .IN4(
        n541), .Q(n219) );
  AO22X1 U78 ( .IN1(n545), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[9][13] ), .IN4(
        n540), .Q(n220) );
  AO22X1 U79 ( .IN1(n545), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[9][14] ), .IN4(
        n541), .Q(n221) );
  AO22X1 U80 ( .IN1(n544), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[9][15] ), .IN4(
        n542), .Q(n222) );
  AO22X1 U81 ( .IN1(n544), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[9][0] ), .IN4(
        n542), .Q(n223) );
  AO22X1 U82 ( .IN1(n569), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[10][1] ), .IN4(
        n561), .Q(n224) );
  AO22X1 U83 ( .IN1(n569), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[10][2] ), .IN4(
        n561), .Q(n225) );
  AO22X1 U84 ( .IN1(n569), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[10][3] ), .IN4(
        n562), .Q(n226) );
  AO22X1 U85 ( .IN1(n569), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[10][4] ), .IN4(
        n563), .Q(n227) );
  AO22X1 U86 ( .IN1(n567), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[10][5] ), .IN4(
        n562), .Q(n228) );
  AO22X1 U87 ( .IN1(n559), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[10][6] ), .IN4(
        n561), .Q(n229) );
  AO22X1 U88 ( .IN1(n566), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[10][7] ), .IN4(
        n564), .Q(n230) );
  AO22X1 U89 ( .IN1(n568), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[10][8] ), .IN4(
        n564), .Q(n231) );
  AO22X1 U90 ( .IN1(n567), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[10][9] ), .IN4(
        n563), .Q(n232) );
  AO22X1 U91 ( .IN1(n568), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[10][10] ), 
        .IN4(n561), .Q(n233) );
  AO22X1 U92 ( .IN1(n568), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[10][11] ), 
        .IN4(n562), .Q(n234) );
  AO22X1 U93 ( .IN1(n568), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[10][12] ), 
        .IN4(n563), .Q(n235) );
  AO22X1 U94 ( .IN1(n567), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[10][13] ), 
        .IN4(n562), .Q(n236) );
  AO22X1 U95 ( .IN1(n567), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[10][14] ), 
        .IN4(n563), .Q(n237) );
  AO22X1 U96 ( .IN1(n566), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[10][15] ), 
        .IN4(n564), .Q(n238) );
  AO22X1 U97 ( .IN1(n566), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[10][0] ), .IN4(
        n564), .Q(n239) );
  AO22X1 U98 ( .IN1(n570), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[11][1] ), .IN4(
        n572), .Q(n240) );
  AO22X1 U99 ( .IN1(n571), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[11][2] ), .IN4(
        n572), .Q(n241) );
  AO22X1 U100 ( .IN1(n570), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[11][3] ), .IN4(
        n573), .Q(n242) );
  AO22X1 U101 ( .IN1(n571), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[11][4] ), .IN4(
        n574), .Q(n243) );
  AO22X1 U102 ( .IN1(n578), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[11][5] ), .IN4(
        n573), .Q(n244) );
  AO22X1 U103 ( .IN1(n580), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[11][6] ), .IN4(
        n572), .Q(n245) );
  AO22X1 U104 ( .IN1(n577), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[11][7] ), .IN4(
        n575), .Q(n246) );
  AO22X1 U105 ( .IN1(n579), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[11][8] ), .IN4(
        n575), .Q(n247) );
  AO22X1 U106 ( .IN1(n580), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[11][9] ), .IN4(
        n574), .Q(n248) );
  AO22X1 U107 ( .IN1(n580), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[11][10] ), 
        .IN4(n572), .Q(n249) );
  AO22X1 U108 ( .IN1(n579), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[11][11] ), 
        .IN4(n573), .Q(n250) );
  AO22X1 U109 ( .IN1(n579), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[11][12] ), 
        .IN4(n574), .Q(n251) );
  AO22X1 U110 ( .IN1(n578), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[11][13] ), 
        .IN4(n573), .Q(n252) );
  AO22X1 U111 ( .IN1(n578), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[11][14] ), 
        .IN4(n574), .Q(n253) );
  AO22X1 U112 ( .IN1(n577), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[11][15] ), 
        .IN4(n575), .Q(n254) );
  AO22X1 U113 ( .IN1(n577), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[11][0] ), .IN4(
        n575), .Q(n255) );
  AO22X1 U114 ( .IN1(n526), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[12][1] ), .IN4(
        n528), .Q(n256) );
  AO22X1 U115 ( .IN1(n526), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[12][2] ), .IN4(
        n528), .Q(n257) );
  AO22X1 U116 ( .IN1(n524), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[12][3] ), .IN4(
        n528), .Q(n258) );
  AO22X1 U117 ( .IN1(n524), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[12][4] ), .IN4(
        n525), .Q(n259) );
  AO22X1 U118 ( .IN1(n527), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[12][5] ), .IN4(
        n529), .Q(n260) );
  AO22X1 U119 ( .IN1(n526), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[12][6] ), .IN4(
        n528), .Q(n261) );
  AO22X1 U120 ( .IN1(n643), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[12][7] ), .IN4(
        n529), .Q(n262) );
  AO22X1 U121 ( .IN1(n526), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[12][8] ), .IN4(
        n529), .Q(n263) );
  AO22X1 U122 ( .IN1(n643), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[12][9] ), .IN4(
        n529), .Q(n264) );
  AO22X1 U123 ( .IN1(n643), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[12][10] ), 
        .IN4(n528), .Q(n265) );
  AO22X1 U124 ( .IN1(n643), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[12][11] ), 
        .IN4(n528), .Q(n266) );
  AO22X1 U125 ( .IN1(n621), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[12][12] ), 
        .IN4(n523), .Q(n267) );
  AO22X1 U126 ( .IN1(n621), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[12][13] ), 
        .IN4(n529), .Q(n268) );
  AO22X1 U127 ( .IN1(n524), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[12][14] ), 
        .IN4(n529), .Q(n269) );
  AO22X1 U128 ( .IN1(n643), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[12][15] ), 
        .IN4(n528), .Q(n270) );
  AO22X1 U129 ( .IN1(n524), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[12][0] ), .IN4(
        n529), .Q(n271) );
  AO22X1 U130 ( .IN1(n533), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[13][1] ), .IN4(
        n535), .Q(n272) );
  AO22X1 U131 ( .IN1(n533), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[13][2] ), .IN4(
        n535), .Q(n273) );
  AO22X1 U132 ( .IN1(n531), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[13][3] ), .IN4(
        n535), .Q(n274) );
  AO22X1 U133 ( .IN1(n531), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[13][4] ), .IN4(
        n532), .Q(n275) );
  AO22X1 U134 ( .IN1(n534), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[13][5] ), .IN4(
        n536), .Q(n276) );
  AO22X1 U135 ( .IN1(n533), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[13][6] ), .IN4(
        n535), .Q(n277) );
  AO22X1 U136 ( .IN1(n642), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[13][7] ), .IN4(
        n536), .Q(n278) );
  AO22X1 U137 ( .IN1(n533), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[13][8] ), .IN4(
        n536), .Q(n279) );
  AO22X1 U138 ( .IN1(n642), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[13][9] ), .IN4(
        n536), .Q(n280) );
  AO22X1 U139 ( .IN1(n642), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[13][10] ), 
        .IN4(n535), .Q(n281) );
  AO22X1 U140 ( .IN1(n642), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[13][11] ), 
        .IN4(n535), .Q(n282) );
  AO22X1 U141 ( .IN1(n619), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[13][12] ), 
        .IN4(n530), .Q(n283) );
  AO22X1 U142 ( .IN1(n619), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[13][13] ), 
        .IN4(n536), .Q(n284) );
  AO22X1 U143 ( .IN1(n531), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[13][14] ), 
        .IN4(n536), .Q(n285) );
  AO22X1 U144 ( .IN1(n642), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[13][15] ), 
        .IN4(n535), .Q(n286) );
  AO22X1 U145 ( .IN1(n531), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[13][0] ), .IN4(
        n536), .Q(n287) );
  AO22X1 U146 ( .IN1(n640), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[14][1] ), .IN4(
        n641), .Q(n288) );
  AO22X1 U147 ( .IN1(n620), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[14][2] ), .IN4(
        n641), .Q(n289) );
  AO22X1 U148 ( .IN1(n640), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[14][3] ), .IN4(
        n641), .Q(n290) );
  AO22X1 U149 ( .IN1(n620), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[14][4] ), .IN4(
        n641), .Q(n291) );
  AO22X1 U150 ( .IN1(n620), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[14][5] ), .IN4(
        n641), .Q(n292) );
  AO22X1 U151 ( .IN1(n620), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[14][6] ), .IN4(
        n641), .Q(n293) );
  AO22X1 U152 ( .IN1(n640), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[14][7] ), .IN4(
        n641), .Q(n294) );
  AO22X1 U153 ( .IN1(n620), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[14][8] ), .IN4(
        n641), .Q(n295) );
  AO22X1 U154 ( .IN1(n640), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[14][9] ), .IN4(
        n641), .Q(n296) );
  AO22X1 U155 ( .IN1(n620), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[14][10] ), 
        .IN4(n43), .Q(n297) );
  AO22X1 U157 ( .IN1(n620), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[14][12] ), 
        .IN4(n43), .Q(n299) );
  AO22X1 U159 ( .IN1(n620), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[14][14] ), 
        .IN4(n43), .Q(n301) );
  AO22X1 U161 ( .IN1(n620), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[14][0] ), .IN4(
        n641), .Q(n303) );
  AND2X1 U162 ( .IN1(n45), .IN2(n28), .Q(n34) );
  AO22X1 U163 ( .IN1(n618), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[15][1] ), .IN4(
        n639), .Q(n304) );
  AO22X1 U164 ( .IN1(n618), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[15][2] ), .IN4(
        n639), .Q(n305) );
  AO22X1 U165 ( .IN1(n331), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[15][3] ), .IN4(
        n639), .Q(n306) );
  AO22X1 U166 ( .IN1(n618), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[15][4] ), .IN4(
        n639), .Q(n307) );
  AO22X1 U167 ( .IN1(n331), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[15][5] ), .IN4(
        n639), .Q(n308) );
  AO22X1 U168 ( .IN1(n618), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[15][6] ), .IN4(
        n639), .Q(n309) );
  AO22X1 U169 ( .IN1(n331), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[15][7] ), .IN4(
        n639), .Q(n310) );
  AO22X1 U170 ( .IN1(n618), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[15][8] ), .IN4(
        n639), .Q(n311) );
  AO22X1 U171 ( .IN1(n331), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[15][9] ), .IN4(
        n639), .Q(n312) );
  AO22X1 U172 ( .IN1(n618), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[15][10] ), 
        .IN4(n638), .Q(n313) );
  AO22X1 U173 ( .IN1(n331), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[15][11] ), 
        .IN4(n638), .Q(n314) );
  AO22X1 U174 ( .IN1(n618), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[15][12] ), 
        .IN4(n638), .Q(n315) );
  AO22X1 U175 ( .IN1(n331), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[15][13] ), 
        .IN4(n638), .Q(n316) );
  AO22X1 U176 ( .IN1(n618), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[15][14] ), 
        .IN4(n638), .Q(n317) );
  AO22X1 U177 ( .IN1(n331), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[15][15] ), 
        .IN4(n638), .Q(n318) );
  AO22X1 U178 ( .IN1(n618), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[15][0] ), .IN4(
        n638), .Q(n319) );
  AND2X1 U179 ( .IN1(n45), .IN2(WADDR[0]), .Q(n36) );
  AND2X1 U180 ( .IN1(WADDR[3]), .IN2(\WR_PTR/add_33/B[0] ), .Q(n45) );
  AO22X1 U181 ( .IN1(n548), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[0][1] ), .IN4(
        n551), .Q(n64) );
  AO22X1 U182 ( .IN1(n550), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[0][2] ), .IN4(
        n551), .Q(n65) );
  AO22X1 U183 ( .IN1(n549), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[0][3] ), .IN4(
        n552), .Q(n66) );
  AO22X1 U184 ( .IN1(n558), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[0][4] ), .IN4(
        n553), .Q(n67) );
  AO22X1 U185 ( .IN1(n557), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[0][5] ), .IN4(
        n552), .Q(n68) );
  AO22X1 U186 ( .IN1(n548), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[0][6] ), .IN4(
        n551), .Q(n69) );
  AO22X1 U187 ( .IN1(n556), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[0][7] ), .IN4(
        n554), .Q(n70) );
  AO22X1 U188 ( .IN1(n558), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[0][8] ), .IN4(
        n554), .Q(n71) );
  AO22X1 U189 ( .IN1(n548), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[0][9] ), .IN4(
        n553), .Q(n72) );
  AO22X1 U190 ( .IN1(n549), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[0][10] ), 
        .IN4(n551), .Q(n73) );
  AO22X1 U191 ( .IN1(n558), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[0][11] ), 
        .IN4(n552), .Q(n74) );
  AO22X1 U192 ( .IN1(n558), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[0][12] ), 
        .IN4(n553), .Q(n75) );
  AO22X1 U193 ( .IN1(n557), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[0][13] ), 
        .IN4(n552), .Q(n76) );
  AO22X1 U194 ( .IN1(n557), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[0][14] ), 
        .IN4(n553), .Q(n77) );
  AO22X1 U195 ( .IN1(n556), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[0][15] ), 
        .IN4(n554), .Q(n78) );
  AO22X1 U196 ( .IN1(n556), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[0][0] ), .IN4(
        n554), .Q(n79) );
  AO22X1 U197 ( .IN1(n626), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[1][1] ), .IN4(
        n637), .Q(n80) );
  AO22X1 U198 ( .IN1(n626), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[1][2] ), .IN4(
        n637), .Q(n81) );
  AO22X1 U199 ( .IN1(n330), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[1][3] ), .IN4(
        n637), .Q(n82) );
  AO22X1 U200 ( .IN1(n626), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[1][4] ), .IN4(
        n637), .Q(n83) );
  AO22X1 U201 ( .IN1(n330), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[1][5] ), .IN4(
        n637), .Q(n84) );
  AO22X1 U202 ( .IN1(n626), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[1][6] ), .IN4(
        n637), .Q(n85) );
  AO22X1 U203 ( .IN1(n330), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[1][7] ), .IN4(
        n637), .Q(n86) );
  AO22X1 U204 ( .IN1(n626), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[1][8] ), .IN4(
        n637), .Q(n87) );
  AO22X1 U205 ( .IN1(n330), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[1][9] ), .IN4(
        n637), .Q(n88) );
  AO22X1 U206 ( .IN1(n626), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[1][10] ), 
        .IN4(n636), .Q(n89) );
  AO22X1 U207 ( .IN1(n330), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[1][11] ), 
        .IN4(n636), .Q(n90) );
  AO22X1 U208 ( .IN1(n626), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[1][12] ), 
        .IN4(n636), .Q(n91) );
  AO22X1 U209 ( .IN1(n330), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[1][13] ), 
        .IN4(n636), .Q(n92) );
  AO22X1 U210 ( .IN1(n626), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[1][14] ), 
        .IN4(n636), .Q(n93) );
  AO22X1 U211 ( .IN1(n330), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[1][15] ), 
        .IN4(n636), .Q(n94) );
  AO22X1 U212 ( .IN1(n626), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[1][0] ), .IN4(
        n636), .Q(n95) );
  AO22X1 U213 ( .IN1(n592), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[2][1] ), .IN4(
        n595), .Q(n96) );
  AO22X1 U214 ( .IN1(n594), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[2][2] ), .IN4(
        n595), .Q(n97) );
  AO22X1 U215 ( .IN1(n593), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[2][3] ), .IN4(
        n596), .Q(n98) );
  AO22X1 U216 ( .IN1(n602), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[2][4] ), .IN4(
        n597), .Q(n99) );
  AO22X1 U217 ( .IN1(n601), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[2][5] ), .IN4(
        n596), .Q(n100) );
  AO22X1 U218 ( .IN1(n592), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[2][6] ), .IN4(
        n595), .Q(n101) );
  AO22X1 U219 ( .IN1(n600), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[2][7] ), .IN4(
        n598), .Q(n102) );
  AO22X1 U220 ( .IN1(n602), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[2][8] ), .IN4(
        n598), .Q(n103) );
  AO22X1 U221 ( .IN1(n592), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[2][9] ), .IN4(
        n597), .Q(n104) );
  AO22X1 U222 ( .IN1(n593), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[2][10] ), 
        .IN4(n595), .Q(n105) );
  AO22X1 U223 ( .IN1(n602), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[2][11] ), 
        .IN4(n596), .Q(n106) );
  AO22X1 U224 ( .IN1(n602), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[2][12] ), 
        .IN4(n597), .Q(n107) );
  AO22X1 U225 ( .IN1(n601), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[2][13] ), 
        .IN4(n596), .Q(n108) );
  AO22X1 U226 ( .IN1(n601), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[2][14] ), 
        .IN4(n597), .Q(n109) );
  AO22X1 U227 ( .IN1(n600), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[2][15] ), 
        .IN4(n598), .Q(n110) );
  AO22X1 U228 ( .IN1(n600), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[2][0] ), .IN4(
        n598), .Q(n111) );
  AO22X1 U229 ( .IN1(n634), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[3][1] ), .IN4(
        n635), .Q(n112) );
  AO22X1 U230 ( .IN1(n625), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[3][2] ), .IN4(
        n635), .Q(n113) );
  AO22X1 U231 ( .IN1(n634), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[3][3] ), .IN4(
        n635), .Q(n114) );
  AO22X1 U232 ( .IN1(n625), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[3][4] ), .IN4(
        n635), .Q(n115) );
  AO22X1 U233 ( .IN1(n625), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[3][5] ), .IN4(
        n635), .Q(n116) );
  AO22X1 U234 ( .IN1(n625), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[3][6] ), .IN4(
        n635), .Q(n117) );
  AO22X1 U235 ( .IN1(n634), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[3][7] ), .IN4(
        n635), .Q(n118) );
  AO22X1 U236 ( .IN1(n625), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[3][8] ), .IN4(
        n635), .Q(n119) );
  AO22X1 U237 ( .IN1(n634), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[3][9] ), .IN4(
        n635), .Q(n120) );
  AO22X1 U238 ( .IN1(n625), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[3][10] ), 
        .IN4(n52), .Q(n121) );
  AO22X1 U240 ( .IN1(n625), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[3][12] ), 
        .IN4(n52), .Q(n123) );
  AO22X1 U242 ( .IN1(n625), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[3][14] ), 
        .IN4(n52), .Q(n125) );
  AO22X1 U244 ( .IN1(n625), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[3][0] ), .IN4(
        n635), .Q(n127) );
  AO22X1 U245 ( .IN1(n581), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[4][1] ), .IN4(
        n584), .Q(n128) );
  AO22X1 U246 ( .IN1(n583), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[4][2] ), .IN4(
        n584), .Q(n129) );
  AO22X1 U247 ( .IN1(n582), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[4][3] ), .IN4(
        n585), .Q(n130) );
  AO22X1 U248 ( .IN1(n591), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[4][4] ), .IN4(
        n586), .Q(n131) );
  AO22X1 U249 ( .IN1(n590), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[4][5] ), .IN4(
        n585), .Q(n132) );
  AO22X1 U250 ( .IN1(n581), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[4][6] ), .IN4(
        n584), .Q(n133) );
  AO22X1 U251 ( .IN1(n589), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[4][7] ), .IN4(
        n587), .Q(n134) );
  AO22X1 U252 ( .IN1(n591), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[4][8] ), .IN4(
        n587), .Q(n135) );
  AO22X1 U253 ( .IN1(n581), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[4][9] ), .IN4(
        n586), .Q(n136) );
  AO22X1 U254 ( .IN1(n582), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[4][10] ), 
        .IN4(n584), .Q(n137) );
  AO22X1 U255 ( .IN1(n591), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[4][11] ), 
        .IN4(n585), .Q(n138) );
  AO22X1 U256 ( .IN1(n591), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[4][12] ), 
        .IN4(n586), .Q(n139) );
  AO22X1 U257 ( .IN1(n590), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[4][13] ), 
        .IN4(n585), .Q(n140) );
  AO22X1 U258 ( .IN1(n590), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[4][14] ), 
        .IN4(n586), .Q(n141) );
  AO22X1 U259 ( .IN1(n589), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[4][15] ), 
        .IN4(n587), .Q(n142) );
  AO22X1 U260 ( .IN1(n589), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[4][0] ), .IN4(
        n587), .Q(n143) );
  AO22X1 U261 ( .IN1(n632), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[5][1] ), .IN4(
        n633), .Q(n144) );
  AO22X1 U262 ( .IN1(n624), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[5][2] ), .IN4(
        n633), .Q(n145) );
  AO22X1 U263 ( .IN1(n632), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[5][3] ), .IN4(
        n633), .Q(n146) );
  AO22X1 U264 ( .IN1(n624), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[5][4] ), .IN4(
        n633), .Q(n147) );
  AO22X1 U265 ( .IN1(n624), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[5][5] ), .IN4(
        n633), .Q(n148) );
  AO22X1 U266 ( .IN1(n624), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[5][6] ), .IN4(
        n633), .Q(n149) );
  AO22X1 U267 ( .IN1(n632), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[5][7] ), .IN4(
        n633), .Q(n150) );
  AO22X1 U268 ( .IN1(n624), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[5][8] ), .IN4(
        n633), .Q(n151) );
  AO22X1 U269 ( .IN1(n632), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[5][9] ), .IN4(
        n633), .Q(n152) );
  AO22X1 U270 ( .IN1(n624), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[5][10] ), 
        .IN4(n54), .Q(n153) );
  AO22X1 U272 ( .IN1(n624), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[5][12] ), 
        .IN4(n54), .Q(n155) );
  AO22X1 U274 ( .IN1(n624), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[5][14] ), 
        .IN4(n54), .Q(n157) );
  AO22X1 U276 ( .IN1(n624), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[5][0] ), .IN4(
        n633), .Q(n159) );
  AO22X1 U277 ( .IN1(n630), .IN2(WDATA[1]), .IN3(\DUAL_RAM/RAM[6][1] ), .IN4(
        n631), .Q(n160) );
  AO22X1 U278 ( .IN1(n627), .IN2(WDATA[2]), .IN3(\DUAL_RAM/RAM[6][2] ), .IN4(
        n631), .Q(n161) );
  AO22X1 U279 ( .IN1(n630), .IN2(WDATA[3]), .IN3(\DUAL_RAM/RAM[6][3] ), .IN4(
        n631), .Q(n162) );
  AO22X1 U280 ( .IN1(n627), .IN2(WDATA[4]), .IN3(\DUAL_RAM/RAM[6][4] ), .IN4(
        n631), .Q(n163) );
  AO22X1 U281 ( .IN1(n627), .IN2(WDATA[5]), .IN3(\DUAL_RAM/RAM[6][5] ), .IN4(
        n631), .Q(n164) );
  AO22X1 U282 ( .IN1(n627), .IN2(WDATA[6]), .IN3(\DUAL_RAM/RAM[6][6] ), .IN4(
        n631), .Q(n165) );
  AO22X1 U283 ( .IN1(n630), .IN2(WDATA[7]), .IN3(\DUAL_RAM/RAM[6][7] ), .IN4(
        n631), .Q(n166) );
  AO22X1 U284 ( .IN1(n627), .IN2(WDATA[8]), .IN3(\DUAL_RAM/RAM[6][8] ), .IN4(
        n631), .Q(n167) );
  AO22X1 U285 ( .IN1(n630), .IN2(WDATA[9]), .IN3(\DUAL_RAM/RAM[6][9] ), .IN4(
        n631), .Q(n168) );
  AO22X1 U286 ( .IN1(n627), .IN2(WDATA[10]), .IN3(\DUAL_RAM/RAM[6][10] ), 
        .IN4(n55), .Q(n169) );
  AO22X1 U287 ( .IN1(n630), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[6][11] ), 
        .IN4(n55), .Q(n170) );
  AO22X1 U288 ( .IN1(n627), .IN2(WDATA[12]), .IN3(\DUAL_RAM/RAM[6][12] ), 
        .IN4(n55), .Q(n171) );
  AO22X1 U289 ( .IN1(n627), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[6][13] ), 
        .IN4(n55), .Q(n172) );
  AO22X1 U290 ( .IN1(n627), .IN2(WDATA[14]), .IN3(\DUAL_RAM/RAM[6][14] ), 
        .IN4(n55), .Q(n173) );
  AO22X1 U291 ( .IN1(n627), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[6][15] ), 
        .IN4(n55), .Q(n174) );
  AO22X1 U292 ( .IN1(n627), .IN2(WDATA[0]), .IN3(\DUAL_RAM/RAM[6][0] ), .IN4(
        n631), .Q(n175) );
  AND2X1 U293 ( .IN1(n56), .IN2(n28), .Q(n48) );
  AO22X1 U294 ( .IN1(WDATA[1]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][1] ), .IN4(
        n629), .Q(n176) );
  AO22X1 U295 ( .IN1(WDATA[2]), .IN2(n628), .IN3(\DUAL_RAM/RAM[7][2] ), .IN4(
        n629), .Q(n177) );
  AO22X1 U296 ( .IN1(WDATA[3]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][3] ), .IN4(
        n629), .Q(n178) );
  AO22X1 U297 ( .IN1(WDATA[4]), .IN2(n628), .IN3(\DUAL_RAM/RAM[7][4] ), .IN4(
        n629), .Q(n179) );
  AO22X1 U298 ( .IN1(WDATA[5]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][5] ), .IN4(
        n629), .Q(n180) );
  AO22X1 U299 ( .IN1(WDATA[6]), .IN2(n628), .IN3(\DUAL_RAM/RAM[7][6] ), .IN4(
        n629), .Q(n181) );
  AO22X1 U300 ( .IN1(WDATA[7]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][7] ), .IN4(
        n31), .Q(n182) );
  AO22X1 U302 ( .IN1(WDATA[9]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][9] ), .IN4(
        n31), .Q(n184) );
  AO22X1 U304 ( .IN1(WDATA[11]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][11] ), 
        .IN4(n31), .Q(n186) );
  AO22X1 U306 ( .IN1(WDATA[13]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][13] ), 
        .IN4(n629), .Q(n188) );
  AND2X1 U307 ( .IN1(WADDR[0]), .IN2(n56), .Q(n50) );
  XNOR2X1 U308 ( .IN1(\WR_PTR/WR_GRAYNEXT [3]), .IN2(WQ2_RPTR[3]), .Q(n61) );
  XNOR2X1 U309 ( .IN1(\WR_PTR/WR_BINNEXT [4]), .IN2(WQ2_RPTR[4]), .Q(n60) );
  XOR2X1 U310 ( .IN1(WQ2_RPTR[2]), .IN2(\WR_PTR/WR_GRAYNEXT [2]), .Q(n59) );
  XNOR2X1 U311 ( .IN1(\WR_PTR/WR_GRAYNEXT [1]), .IN2(WQ2_RPTR[1]), .Q(n63) );
  XNOR2X1 U312 ( .IN1(\WR_PTR/WR_GRAYNEXT [0]), .IN2(WQ2_RPTR[0]), .Q(n62) );
  XOR2X1 U313 ( .IN1(\WR_PTR/WR_BINNEXT [3]), .IN2(\WR_PTR/WR_BINNEXT [4]), 
        .Q(\WR_PTR/WR_GRAYNEXT [3]) );
  XOR2X1 U314 ( .IN1(\WR_PTR/WR_BINNEXT [2]), .IN2(\WR_PTR/WR_BINNEXT [3]), 
        .Q(\WR_PTR/WR_GRAYNEXT [2]) );
  XOR2X1 U315 ( .IN1(\WR_PTR/WR_BINNEXT [1]), .IN2(\WR_PTR/WR_BINNEXT [2]), 
        .Q(\WR_PTR/WR_GRAYNEXT [1]) );
  XOR2X1 U316 ( .IN1(\WR_PTR/WR_BINNEXT [1]), .IN2(\WR_PTR/WR_BINNEXT [0]), 
        .Q(\WR_PTR/WR_GRAYNEXT [0]) );
  NOR2X0 U321 ( .IN1(n614), .IN2(n656), .QN(n611) );
  XOR2X1 U322 ( .IN1(\RD_PTR/RD_GRAYNEXT [3]), .IN2(n607), .Q(n645) );
  AND2X1 U323 ( .IN1(\RD_PTR/add_32/carry [1]), .IN2(n603), .Q(
        \RD_PTR/add_32/carry [4]) );
  XOR2X1 U324 ( .IN1(\RD_PTR/RD_BINNEXT [2]), .IN2(\RD_PTR/RD_BINNEXT [1]), 
        .Q(\RD_PTR/RD_GRAYNEXT [1]) );
  XOR2X1 U325 ( .IN1(\RD_PTR/RD_BINNEXT [1]), .IN2(\RD_PTR/RD_BINNEXT [0]), 
        .Q(\RD_PTR/RD_GRAYNEXT [0]) );
  AND2X1 U326 ( .IN1(n335), .IN2(n341), .Q(n320) );
  AND2X1 U327 ( .IN1(n337), .IN2(n341), .Q(n321) );
  AND2X1 U328 ( .IN1(n343), .IN2(n341), .Q(n322) );
  AND2X1 U329 ( .IN1(n333), .IN2(n341), .Q(n323) );
  XOR2X1 U330 ( .IN1(n326), .IN2(n515), .Q(n646) );
  AND2X1 U331 ( .IN1(\DUAL_RAM/N11 ), .IN2(\DUAL_RAM/N10 ), .Q(n327) );
  XOR2X1 U332 ( .IN1(n328), .IN2(n605), .Q(\RD_PTR/RD_GRAYNEXT [2]) );
  INVX0 U333 ( .INP(\RD_PTR/RD_BINNEXT [3]), .ZN(n328) );
  AND2X1 U334 ( .IN1(\DUAL_RAM/N10 ), .IN2(n329), .Q(n603) );
  NOR2X0 U335 ( .IN1(n609), .IN2(n612), .QN(n329) );
  INVX0 U336 ( .INP(n655), .ZN(n622) );
  NBUFFX2 U337 ( .INP(n471), .Z(n503) );
  NBUFFX2 U338 ( .INP(n467), .Z(n495) );
  NBUFFX2 U339 ( .INP(n463), .Z(n487) );
  NBUFFX2 U340 ( .INP(n475), .Z(n511) );
  NBUFFX2 U341 ( .INP(n469), .Z(n506) );
  NBUFFX2 U342 ( .INP(n461), .Z(n490) );
  NBUFFX2 U343 ( .INP(n473), .Z(n514) );
  NBUFFX2 U344 ( .INP(n471), .Z(n501) );
  NBUFFX2 U345 ( .INP(n471), .Z(n502) );
  NBUFFX2 U346 ( .INP(n467), .Z(n493) );
  NBUFFX2 U347 ( .INP(n467), .Z(n494) );
  NBUFFX2 U348 ( .INP(n465), .Z(n498) );
  NBUFFX2 U349 ( .INP(n463), .Z(n485) );
  NBUFFX2 U350 ( .INP(n463), .Z(n486) );
  NBUFFX2 U351 ( .INP(n475), .Z(n509) );
  NBUFFX2 U352 ( .INP(n475), .Z(n510) );
  NBUFFX2 U353 ( .INP(n469), .Z(n504) );
  NBUFFX2 U354 ( .INP(n469), .Z(n505) );
  NBUFFX2 U355 ( .INP(n461), .Z(n488) );
  NBUFFX2 U356 ( .INP(n461), .Z(n489) );
  NBUFFX2 U357 ( .INP(n473), .Z(n512) );
  NBUFFX2 U358 ( .INP(n473), .Z(n513) );
  NBUFFX2 U359 ( .INP(n465), .Z(n496) );
  NBUFFX2 U360 ( .INP(n465), .Z(n497) );
  NBUFFX2 U361 ( .INP(n472), .Z(n500) );
  NBUFFX2 U362 ( .INP(n472), .Z(n499) );
  NBUFFX2 U363 ( .INP(n468), .Z(n492) );
  NBUFFX2 U364 ( .INP(n468), .Z(n491) );
  NBUFFX2 U365 ( .INP(n464), .Z(n484) );
  NBUFFX2 U366 ( .INP(n464), .Z(n483) );
  NBUFFX2 U367 ( .INP(n476), .Z(n508) );
  NBUFFX2 U368 ( .INP(n476), .Z(n507) );
  INVX0 U369 ( .INP(\RD_PTR/RD_GRAYNEXT [0]), .ZN(n653) );
  INVX0 U370 ( .INP(\RD_PTR/RD_GRAYNEXT [1]), .ZN(n654) );
  AND2X1 U371 ( .IN1(n337), .IN2(n342), .Q(n469) );
  AND2X1 U372 ( .IN1(n337), .IN2(n340), .Q(n471) );
  AND2X1 U373 ( .IN1(n340), .IN2(n335), .Q(n467) );
  AND2X1 U374 ( .IN1(n333), .IN2(n342), .Q(n461) );
  AND2X1 U375 ( .IN1(n333), .IN2(n340), .Q(n463) );
  AND2X1 U376 ( .IN1(n343), .IN2(n342), .Q(n473) );
  AND2X1 U377 ( .IN1(n343), .IN2(n340), .Q(n475) );
  AND2X1 U378 ( .IN1(n342), .IN2(n335), .Q(n465) );
  AND2X1 U379 ( .IN1(n337), .IN2(n339), .Q(n472) );
  AND2X1 U380 ( .IN1(n339), .IN2(n335), .Q(n468) );
  AND2X1 U381 ( .IN1(n333), .IN2(n339), .Q(n464) );
  AND2X1 U382 ( .IN1(n343), .IN2(n339), .Q(n476) );
  INVX0 U383 ( .INP(n57), .ZN(\WR_PTR/add_33/B[0] ) );
  AND2X1 U384 ( .IN1(n33), .IN2(n50), .Q(n330) );
  AND2X1 U385 ( .IN1(n36), .IN2(n44), .Q(n331) );
  INVX0 U386 ( .INP(n613), .ZN(n482) );
  XOR2X1 U387 ( .IN1(n616), .IN2(n332), .Q(\RD_PTR/RD_BINNEXT [1]) );
  NAND2X0 U388 ( .IN1(n610), .IN2(n611), .QN(n332) );
  NOR2X0 U389 ( .IN1(n29), .IN2(WADDR[2]), .QN(n38) );
  NOR2X0 U390 ( .IN1(n30), .IN2(WADDR[1]), .QN(n41) );
  NAND2X1 U391 ( .IN1(WINC), .IN2(n27), .QN(n57) );
  NOR2X0 U392 ( .IN1(n57), .IN2(WADDR[3]), .QN(n56) );
  NOR2X0 U393 ( .IN1(n30), .IN2(n29), .QN(n44) );
  NOR2X0 U394 ( .IN1(WADDR[1]), .IN2(WADDR[2]), .QN(n33) );
  AO22X1 U395 ( .IN1(n624), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[5][11] ), 
        .IN4(n54), .Q(n154) );
  AO22X1 U396 ( .IN1(n624), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[5][13] ), 
        .IN4(n54), .Q(n156) );
  AO22X1 U397 ( .IN1(n632), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[5][15] ), 
        .IN4(n54), .Q(n158) );
  AO22X1 U398 ( .IN1(n625), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[3][11] ), 
        .IN4(n52), .Q(n122) );
  AO22X1 U399 ( .IN1(n625), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[3][13] ), 
        .IN4(n52), .Q(n124) );
  AO22X1 U400 ( .IN1(n634), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[3][15] ), 
        .IN4(n52), .Q(n126) );
  AO22X1 U401 ( .IN1(n620), .IN2(WDATA[11]), .IN3(\DUAL_RAM/RAM[14][11] ), 
        .IN4(n43), .Q(n298) );
  AO22X1 U402 ( .IN1(n620), .IN2(WDATA[13]), .IN3(\DUAL_RAM/RAM[14][13] ), 
        .IN4(n43), .Q(n300) );
  AO22X1 U403 ( .IN1(n640), .IN2(WDATA[15]), .IN3(\DUAL_RAM/RAM[14][15] ), 
        .IN4(n43), .Q(n302) );
  AO22X1 U404 ( .IN1(WDATA[8]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][8] ), .IN4(
        n31), .Q(n183) );
  AO22X1 U405 ( .IN1(WDATA[10]), .IN2(n623), .IN3(\DUAL_RAM/RAM[7][10] ), 
        .IN4(n31), .Q(n185) );
  AO22X1 U406 ( .IN1(WDATA[12]), .IN2(n628), .IN3(\DUAL_RAM/RAM[7][12] ), 
        .IN4(n31), .Q(n187) );
  NOR4X0 U407 ( .IN1(n58), .IN2(n59), .IN3(n60), .IN4(n61), .QN(
        \WR_PTR/isWFULL ) );
  NAND2X1 U408 ( .IN1(n62), .IN2(n63), .QN(n58) );
  INVX0 U409 ( .INP(RINC), .ZN(n656) );
  NOR2X0 U410 ( .IN1(n481), .IN2(n613), .QN(n333) );
  NOR2X0 U411 ( .IN1(n615), .IN2(n617), .QN(n339) );
  NOR2X0 U412 ( .IN1(n608), .IN2(n617), .QN(n340) );
  AND2X1 U413 ( .IN1(n617), .IN2(n615), .Q(n341) );
  AND2X1 U414 ( .IN1(n617), .IN2(n608), .Q(n342) );
  AO22X1 U415 ( .IN1(\DUAL_RAM/RAM[11][0] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][0] ), .IN4(n490), .Q(n334) );
  AO221X1 U416 ( .IN1(\DUAL_RAM/RAM[8][0] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][0] ), .IN4(n487), .IN5(n334), .Q(n348) );
  NOR2X0 U417 ( .IN1(n481), .IN2(n482), .QN(n335) );
  AO22X1 U418 ( .IN1(\DUAL_RAM/RAM[15][0] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][0] ), .IN4(n498), .Q(n336) );
  AO221X1 U419 ( .IN1(\DUAL_RAM/RAM[12][0] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][0] ), .IN4(n495), .IN5(n336), .Q(n347) );
  NOR2X0 U420 ( .IN1(n613), .IN2(n325), .QN(n337) );
  AO22X1 U421 ( .IN1(\DUAL_RAM/RAM[3][0] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][0] ), .IN4(n506), .Q(n338) );
  AO221X1 U422 ( .IN1(\DUAL_RAM/RAM[0][0] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][0] ), .IN4(n503), .IN5(n338), .Q(n346) );
  NOR2X0 U423 ( .IN1(n482), .IN2(n325), .QN(n343) );
  AO22X1 U424 ( .IN1(\DUAL_RAM/RAM[7][0] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][0] ), .IN4(n514), .Q(n344) );
  AO221X1 U425 ( .IN1(\DUAL_RAM/RAM[4][0] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][0] ), .IN4(n511), .IN5(n344), .Q(n345) );
  OR4X1 U426 ( .IN1(n348), .IN2(n347), .IN3(n346), .IN4(n345), .Q(RDATA[0]) );
  AO22X1 U427 ( .IN1(\DUAL_RAM/RAM[11][1] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][1] ), .IN4(n490), .Q(n349) );
  AO221X1 U428 ( .IN1(\DUAL_RAM/RAM[8][1] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][1] ), .IN4(n487), .IN5(n349), .Q(n356) );
  AO22X1 U429 ( .IN1(\DUAL_RAM/RAM[15][1] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][1] ), .IN4(n498), .Q(n350) );
  AO221X1 U430 ( .IN1(\DUAL_RAM/RAM[12][1] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][1] ), .IN4(n495), .IN5(n350), .Q(n355) );
  AO22X1 U431 ( .IN1(\DUAL_RAM/RAM[3][1] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][1] ), .IN4(n506), .Q(n351) );
  AO221X1 U432 ( .IN1(\DUAL_RAM/RAM[0][1] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][1] ), .IN4(n503), .IN5(n351), .Q(n354) );
  AO22X1 U433 ( .IN1(\DUAL_RAM/RAM[7][1] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][1] ), .IN4(n514), .Q(n352) );
  AO221X1 U434 ( .IN1(\DUAL_RAM/RAM[4][1] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][1] ), .IN4(n511), .IN5(n352), .Q(n353) );
  OR4X1 U435 ( .IN1(n356), .IN2(n355), .IN3(n354), .IN4(n353), .Q(RDATA[1]) );
  AO22X1 U436 ( .IN1(\DUAL_RAM/RAM[11][2] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][2] ), .IN4(n490), .Q(n357) );
  AO221X1 U437 ( .IN1(\DUAL_RAM/RAM[8][2] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][2] ), .IN4(n487), .IN5(n357), .Q(n364) );
  AO22X1 U438 ( .IN1(\DUAL_RAM/RAM[15][2] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][2] ), .IN4(n498), .Q(n358) );
  AO221X1 U439 ( .IN1(\DUAL_RAM/RAM[12][2] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][2] ), .IN4(n495), .IN5(n358), .Q(n363) );
  AO22X1 U440 ( .IN1(\DUAL_RAM/RAM[3][2] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][2] ), .IN4(n506), .Q(n359) );
  AO221X1 U441 ( .IN1(\DUAL_RAM/RAM[0][2] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][2] ), .IN4(n503), .IN5(n359), .Q(n362) );
  AO22X1 U442 ( .IN1(\DUAL_RAM/RAM[7][2] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][2] ), .IN4(n514), .Q(n360) );
  AO221X1 U443 ( .IN1(\DUAL_RAM/RAM[4][2] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][2] ), .IN4(n511), .IN5(n360), .Q(n361) );
  OR4X1 U444 ( .IN1(n364), .IN2(n363), .IN3(n362), .IN4(n361), .Q(RDATA[2]) );
  AO22X1 U445 ( .IN1(\DUAL_RAM/RAM[11][3] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][3] ), .IN4(n490), .Q(n365) );
  AO221X1 U446 ( .IN1(\DUAL_RAM/RAM[8][3] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][3] ), .IN4(n487), .IN5(n365), .Q(n372) );
  AO22X1 U447 ( .IN1(\DUAL_RAM/RAM[15][3] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][3] ), .IN4(n498), .Q(n366) );
  AO221X1 U448 ( .IN1(\DUAL_RAM/RAM[12][3] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][3] ), .IN4(n495), .IN5(n366), .Q(n371) );
  AO22X1 U449 ( .IN1(\DUAL_RAM/RAM[3][3] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][3] ), .IN4(n506), .Q(n367) );
  AO221X1 U450 ( .IN1(\DUAL_RAM/RAM[0][3] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][3] ), .IN4(n503), .IN5(n367), .Q(n370) );
  AO22X1 U451 ( .IN1(\DUAL_RAM/RAM[7][3] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][3] ), .IN4(n514), .Q(n368) );
  AO221X1 U452 ( .IN1(\DUAL_RAM/RAM[4][3] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][3] ), .IN4(n511), .IN5(n368), .Q(n369) );
  OR4X1 U453 ( .IN1(n372), .IN2(n371), .IN3(n370), .IN4(n369), .Q(RDATA[3]) );
  AO22X1 U454 ( .IN1(\DUAL_RAM/RAM[11][4] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][4] ), .IN4(n490), .Q(n373) );
  AO221X1 U455 ( .IN1(\DUAL_RAM/RAM[8][4] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][4] ), .IN4(n487), .IN5(n373), .Q(n380) );
  AO22X1 U456 ( .IN1(\DUAL_RAM/RAM[15][4] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][4] ), .IN4(n498), .Q(n374) );
  AO221X1 U457 ( .IN1(\DUAL_RAM/RAM[12][4] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][4] ), .IN4(n495), .IN5(n374), .Q(n379) );
  AO22X1 U458 ( .IN1(\DUAL_RAM/RAM[3][4] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][4] ), .IN4(n506), .Q(n375) );
  AO221X1 U459 ( .IN1(\DUAL_RAM/RAM[0][4] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][4] ), .IN4(n503), .IN5(n375), .Q(n378) );
  AO22X1 U460 ( .IN1(\DUAL_RAM/RAM[7][4] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][4] ), .IN4(n514), .Q(n376) );
  AO221X1 U461 ( .IN1(\DUAL_RAM/RAM[4][4] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][4] ), .IN4(n511), .IN5(n376), .Q(n377) );
  OR4X1 U462 ( .IN1(n380), .IN2(n379), .IN3(n378), .IN4(n377), .Q(RDATA[4]) );
  AO22X1 U463 ( .IN1(\DUAL_RAM/RAM[11][5] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][5] ), .IN4(n490), .Q(n381) );
  AO221X1 U464 ( .IN1(\DUAL_RAM/RAM[8][5] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][5] ), .IN4(n487), .IN5(n381), .Q(n388) );
  AO22X1 U465 ( .IN1(\DUAL_RAM/RAM[15][5] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][5] ), .IN4(n498), .Q(n382) );
  AO221X1 U466 ( .IN1(\DUAL_RAM/RAM[12][5] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][5] ), .IN4(n495), .IN5(n382), .Q(n387) );
  AO22X1 U467 ( .IN1(\DUAL_RAM/RAM[3][5] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][5] ), .IN4(n506), .Q(n383) );
  AO221X1 U468 ( .IN1(\DUAL_RAM/RAM[0][5] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][5] ), .IN4(n503), .IN5(n383), .Q(n386) );
  AO22X1 U469 ( .IN1(\DUAL_RAM/RAM[7][5] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][5] ), .IN4(n514), .Q(n384) );
  AO221X1 U470 ( .IN1(\DUAL_RAM/RAM[4][5] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][5] ), .IN4(n511), .IN5(n384), .Q(n385) );
  OR4X1 U471 ( .IN1(n388), .IN2(n387), .IN3(n386), .IN4(n385), .Q(RDATA[5]) );
  AO22X1 U472 ( .IN1(\DUAL_RAM/RAM[11][6] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][6] ), .IN4(n488), .Q(n389) );
  AO221X1 U473 ( .IN1(\DUAL_RAM/RAM[8][6] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][6] ), .IN4(n485), .IN5(n389), .Q(n396) );
  AO22X1 U474 ( .IN1(\DUAL_RAM/RAM[15][6] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][6] ), .IN4(n496), .Q(n390) );
  AO221X1 U475 ( .IN1(\DUAL_RAM/RAM[12][6] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][6] ), .IN4(n493), .IN5(n390), .Q(n395) );
  AO22X1 U476 ( .IN1(\DUAL_RAM/RAM[3][6] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][6] ), .IN4(n504), .Q(n391) );
  AO221X1 U477 ( .IN1(\DUAL_RAM/RAM[0][6] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][6] ), .IN4(n501), .IN5(n391), .Q(n394) );
  AO22X1 U478 ( .IN1(\DUAL_RAM/RAM[7][6] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][6] ), .IN4(n512), .Q(n392) );
  AO221X1 U479 ( .IN1(\DUAL_RAM/RAM[4][6] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][6] ), .IN4(n509), .IN5(n392), .Q(n393) );
  OR4X1 U480 ( .IN1(n396), .IN2(n395), .IN3(n394), .IN4(n393), .Q(RDATA[6]) );
  AO22X1 U481 ( .IN1(\DUAL_RAM/RAM[11][7] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][7] ), .IN4(n489), .Q(n397) );
  AO221X1 U482 ( .IN1(\DUAL_RAM/RAM[8][7] ), .IN2(n484), .IN3(
        \DUAL_RAM/RAM[9][7] ), .IN4(n486), .IN5(n397), .Q(n404) );
  AO22X1 U483 ( .IN1(\DUAL_RAM/RAM[15][7] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][7] ), .IN4(n497), .Q(n398) );
  AO221X1 U484 ( .IN1(\DUAL_RAM/RAM[12][7] ), .IN2(n492), .IN3(
        \DUAL_RAM/RAM[13][7] ), .IN4(n494), .IN5(n398), .Q(n403) );
  AO22X1 U485 ( .IN1(\DUAL_RAM/RAM[3][7] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][7] ), .IN4(n505), .Q(n399) );
  AO221X1 U486 ( .IN1(\DUAL_RAM/RAM[0][7] ), .IN2(n500), .IN3(
        \DUAL_RAM/RAM[1][7] ), .IN4(n502), .IN5(n399), .Q(n402) );
  AO22X1 U487 ( .IN1(\DUAL_RAM/RAM[7][7] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][7] ), .IN4(n513), .Q(n400) );
  AO221X1 U488 ( .IN1(\DUAL_RAM/RAM[4][7] ), .IN2(n508), .IN3(
        \DUAL_RAM/RAM[5][7] ), .IN4(n510), .IN5(n400), .Q(n401) );
  OR4X1 U489 ( .IN1(n404), .IN2(n403), .IN3(n402), .IN4(n401), .Q(RDATA[7]) );
  AO22X1 U490 ( .IN1(\DUAL_RAM/RAM[11][8] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][8] ), .IN4(n488), .Q(n405) );
  AO221X1 U491 ( .IN1(\DUAL_RAM/RAM[8][8] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][8] ), .IN4(n485), .IN5(n405), .Q(n412) );
  AO22X1 U492 ( .IN1(\DUAL_RAM/RAM[15][8] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][8] ), .IN4(n496), .Q(n406) );
  AO221X1 U493 ( .IN1(\DUAL_RAM/RAM[12][8] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][8] ), .IN4(n493), .IN5(n406), .Q(n411) );
  AO22X1 U494 ( .IN1(\DUAL_RAM/RAM[3][8] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][8] ), .IN4(n504), .Q(n407) );
  AO221X1 U495 ( .IN1(\DUAL_RAM/RAM[0][8] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][8] ), .IN4(n501), .IN5(n407), .Q(n410) );
  AO22X1 U496 ( .IN1(\DUAL_RAM/RAM[7][8] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][8] ), .IN4(n512), .Q(n408) );
  AO221X1 U497 ( .IN1(\DUAL_RAM/RAM[4][8] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][8] ), .IN4(n509), .IN5(n408), .Q(n409) );
  OR4X1 U498 ( .IN1(n412), .IN2(n411), .IN3(n410), .IN4(n409), .Q(RDATA[8]) );
  AO22X1 U499 ( .IN1(\DUAL_RAM/RAM[11][9] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][9] ), .IN4(n489), .Q(n413) );
  AO221X1 U500 ( .IN1(\DUAL_RAM/RAM[8][9] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][9] ), .IN4(n486), .IN5(n413), .Q(n420) );
  AO22X1 U501 ( .IN1(\DUAL_RAM/RAM[15][9] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][9] ), .IN4(n497), .Q(n414) );
  AO221X1 U502 ( .IN1(\DUAL_RAM/RAM[12][9] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][9] ), .IN4(n494), .IN5(n414), .Q(n419) );
  AO22X1 U503 ( .IN1(\DUAL_RAM/RAM[3][9] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][9] ), .IN4(n505), .Q(n415) );
  AO221X1 U504 ( .IN1(\DUAL_RAM/RAM[0][9] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][9] ), .IN4(n502), .IN5(n415), .Q(n418) );
  AO22X1 U505 ( .IN1(\DUAL_RAM/RAM[7][9] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][9] ), .IN4(n513), .Q(n416) );
  AO221X1 U506 ( .IN1(\DUAL_RAM/RAM[4][9] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][9] ), .IN4(n510), .IN5(n416), .Q(n417) );
  OR4X1 U507 ( .IN1(n420), .IN2(n419), .IN3(n418), .IN4(n417), .Q(RDATA[9]) );
  AO22X1 U508 ( .IN1(\DUAL_RAM/RAM[11][10] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][10] ), .IN4(n488), .Q(n421) );
  AO221X1 U509 ( .IN1(\DUAL_RAM/RAM[8][10] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][10] ), .IN4(n485), .IN5(n421), .Q(n428) );
  AO22X1 U510 ( .IN1(\DUAL_RAM/RAM[15][10] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][10] ), .IN4(n496), .Q(n422) );
  AO221X1 U511 ( .IN1(\DUAL_RAM/RAM[12][10] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][10] ), .IN4(n493), .IN5(n422), .Q(n427) );
  AO22X1 U512 ( .IN1(\DUAL_RAM/RAM[3][10] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][10] ), .IN4(n504), .Q(n423) );
  AO221X1 U513 ( .IN1(\DUAL_RAM/RAM[0][10] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][10] ), .IN4(n501), .IN5(n423), .Q(n426) );
  AO22X1 U514 ( .IN1(\DUAL_RAM/RAM[7][10] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][10] ), .IN4(n512), .Q(n424) );
  AO221X1 U515 ( .IN1(\DUAL_RAM/RAM[4][10] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][10] ), .IN4(n509), .IN5(n424), .Q(n425) );
  OR4X1 U516 ( .IN1(n428), .IN2(n427), .IN3(n426), .IN4(n425), .Q(RDATA[10])
         );
  AO22X1 U517 ( .IN1(\DUAL_RAM/RAM[11][11] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][11] ), .IN4(n489), .Q(n429) );
  AO221X1 U518 ( .IN1(\DUAL_RAM/RAM[8][11] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][11] ), .IN4(n486), .IN5(n429), .Q(n436) );
  AO22X1 U519 ( .IN1(\DUAL_RAM/RAM[15][11] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][11] ), .IN4(n497), .Q(n430) );
  AO221X1 U520 ( .IN1(\DUAL_RAM/RAM[12][11] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][11] ), .IN4(n494), .IN5(n430), .Q(n435) );
  AO22X1 U521 ( .IN1(\DUAL_RAM/RAM[3][11] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][11] ), .IN4(n505), .Q(n431) );
  AO221X1 U522 ( .IN1(\DUAL_RAM/RAM[0][11] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][11] ), .IN4(n502), .IN5(n431), .Q(n434) );
  AO22X1 U523 ( .IN1(\DUAL_RAM/RAM[7][11] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][11] ), .IN4(n513), .Q(n432) );
  AO221X1 U524 ( .IN1(\DUAL_RAM/RAM[4][11] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][11] ), .IN4(n510), .IN5(n432), .Q(n433) );
  OR4X1 U525 ( .IN1(n436), .IN2(n435), .IN3(n434), .IN4(n433), .Q(RDATA[11])
         );
  AO22X1 U526 ( .IN1(\DUAL_RAM/RAM[11][12] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][12] ), .IN4(n488), .Q(n437) );
  AO221X1 U527 ( .IN1(\DUAL_RAM/RAM[8][12] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][12] ), .IN4(n485), .IN5(n437), .Q(n444) );
  AO22X1 U528 ( .IN1(\DUAL_RAM/RAM[15][12] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][12] ), .IN4(n496), .Q(n438) );
  AO221X1 U529 ( .IN1(\DUAL_RAM/RAM[12][12] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][12] ), .IN4(n493), .IN5(n438), .Q(n443) );
  AO22X1 U530 ( .IN1(\DUAL_RAM/RAM[3][12] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][12] ), .IN4(n504), .Q(n439) );
  AO221X1 U531 ( .IN1(\DUAL_RAM/RAM[0][12] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][12] ), .IN4(n501), .IN5(n439), .Q(n442) );
  AO22X1 U532 ( .IN1(\DUAL_RAM/RAM[7][12] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][12] ), .IN4(n512), .Q(n440) );
  AO221X1 U533 ( .IN1(\DUAL_RAM/RAM[4][12] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][12] ), .IN4(n509), .IN5(n440), .Q(n441) );
  OR4X1 U534 ( .IN1(n444), .IN2(n443), .IN3(n442), .IN4(n441), .Q(RDATA[12])
         );
  AO22X1 U535 ( .IN1(\DUAL_RAM/RAM[11][13] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][13] ), .IN4(n489), .Q(n445) );
  AO221X1 U536 ( .IN1(\DUAL_RAM/RAM[8][13] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][13] ), .IN4(n486), .IN5(n445), .Q(n452) );
  AO22X1 U537 ( .IN1(\DUAL_RAM/RAM[15][13] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][13] ), .IN4(n497), .Q(n446) );
  AO221X1 U538 ( .IN1(\DUAL_RAM/RAM[12][13] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][13] ), .IN4(n494), .IN5(n446), .Q(n451) );
  AO22X1 U539 ( .IN1(\DUAL_RAM/RAM[3][13] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][13] ), .IN4(n505), .Q(n447) );
  AO221X1 U540 ( .IN1(\DUAL_RAM/RAM[0][13] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][13] ), .IN4(n502), .IN5(n447), .Q(n450) );
  AO22X1 U541 ( .IN1(\DUAL_RAM/RAM[7][13] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][13] ), .IN4(n513), .Q(n448) );
  AO221X1 U542 ( .IN1(\DUAL_RAM/RAM[4][13] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][13] ), .IN4(n510), .IN5(n448), .Q(n449) );
  OR4X1 U543 ( .IN1(n452), .IN2(n451), .IN3(n450), .IN4(n449), .Q(RDATA[13])
         );
  AO22X1 U544 ( .IN1(\DUAL_RAM/RAM[11][14] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][14] ), .IN4(n488), .Q(n453) );
  AO221X1 U545 ( .IN1(\DUAL_RAM/RAM[8][14] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][14] ), .IN4(n485), .IN5(n453), .Q(n460) );
  AO22X1 U546 ( .IN1(\DUAL_RAM/RAM[15][14] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][14] ), .IN4(n496), .Q(n454) );
  AO221X1 U547 ( .IN1(\DUAL_RAM/RAM[12][14] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][14] ), .IN4(n493), .IN5(n454), .Q(n459) );
  AO22X1 U548 ( .IN1(\DUAL_RAM/RAM[3][14] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][14] ), .IN4(n504), .Q(n455) );
  AO221X1 U549 ( .IN1(\DUAL_RAM/RAM[0][14] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][14] ), .IN4(n501), .IN5(n455), .Q(n458) );
  AO22X1 U550 ( .IN1(\DUAL_RAM/RAM[7][14] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][14] ), .IN4(n512), .Q(n456) );
  AO221X1 U551 ( .IN1(\DUAL_RAM/RAM[4][14] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][14] ), .IN4(n509), .IN5(n456), .Q(n457) );
  OR4X1 U552 ( .IN1(n460), .IN2(n459), .IN3(n458), .IN4(n457), .Q(RDATA[14])
         );
  AO22X1 U553 ( .IN1(\DUAL_RAM/RAM[11][15] ), .IN2(n323), .IN3(
        \DUAL_RAM/RAM[10][15] ), .IN4(n489), .Q(n462) );
  AO221X1 U554 ( .IN1(\DUAL_RAM/RAM[8][15] ), .IN2(n483), .IN3(
        \DUAL_RAM/RAM[9][15] ), .IN4(n486), .IN5(n462), .Q(n480) );
  AO22X1 U555 ( .IN1(\DUAL_RAM/RAM[15][15] ), .IN2(n320), .IN3(
        \DUAL_RAM/RAM[14][15] ), .IN4(n497), .Q(n466) );
  AO221X1 U556 ( .IN1(\DUAL_RAM/RAM[12][15] ), .IN2(n491), .IN3(
        \DUAL_RAM/RAM[13][15] ), .IN4(n494), .IN5(n466), .Q(n479) );
  AO22X1 U557 ( .IN1(\DUAL_RAM/RAM[3][15] ), .IN2(n321), .IN3(
        \DUAL_RAM/RAM[2][15] ), .IN4(n505), .Q(n470) );
  AO221X1 U558 ( .IN1(\DUAL_RAM/RAM[0][15] ), .IN2(n499), .IN3(
        \DUAL_RAM/RAM[1][15] ), .IN4(n502), .IN5(n470), .Q(n478) );
  AO22X1 U559 ( .IN1(\DUAL_RAM/RAM[7][15] ), .IN2(n322), .IN3(
        \DUAL_RAM/RAM[6][15] ), .IN4(n513), .Q(n474) );
  AO221X1 U560 ( .IN1(\DUAL_RAM/RAM[4][15] ), .IN2(n507), .IN3(
        \DUAL_RAM/RAM[5][15] ), .IN4(n510), .IN5(n474), .Q(n477) );
  OR4X1 U561 ( .IN1(n480), .IN2(n479), .IN3(n478), .IN4(n477), .Q(RDATA[15])
         );
  INVX0 U562 ( .INP(n325), .ZN(n481) );
  AND2X1 U563 ( .IN1(\RD_PTR/add_32/carry [1]), .IN2(\DUAL_RAM/N10 ), .Q(
        \RD_PTR/add_32/carry [2]) );
  XOR2X1 U564 ( .IN1(\RD_PTR/add_32/carry [4]), .IN2(\RD_PTR/RD_BIN[4] ), .Q(
        n515) );
  INVX0 U565 ( .INP(n54), .ZN(n632) );
  INVX0 U566 ( .INP(n632), .ZN(n633) );
  INVX0 U567 ( .INP(n55), .ZN(n630) );
  INVX0 U568 ( .INP(n630), .ZN(n631) );
  INVX0 U569 ( .INP(n52), .ZN(n634) );
  INVX0 U570 ( .INP(n634), .ZN(n635) );
  INVX0 U571 ( .INP(n31), .ZN(n628) );
  INVX0 U572 ( .INP(n628), .ZN(n629) );
  INVX0 U573 ( .INP(n43), .ZN(n640) );
  INVX0 U574 ( .INP(n640), .ZN(n641) );
  NAND2X1 U575 ( .IN1(n48), .IN2(n44), .QN(n55) );
  NAND2X0 U576 ( .IN1(n41), .IN2(n50), .QN(n54) );
  NAND2X0 U577 ( .IN1(n38), .IN2(n50), .QN(n52) );
  NAND2X0 U578 ( .IN1(n44), .IN2(n50), .QN(n31) );
  INVX0 U579 ( .INP(n43), .ZN(n620) );
  INVX0 U580 ( .INP(n331), .ZN(n638) );
  INVX0 U581 ( .INP(n331), .ZN(n639) );
  INVX0 U582 ( .INP(n638), .ZN(n618) );
  INVX0 U583 ( .INP(n655), .ZN(n516) );
  INVX0 U584 ( .INP(n516), .ZN(n517) );
  INVX0 U585 ( .INP(n622), .ZN(n518) );
  INVX0 U586 ( .INP(n516), .ZN(n519) );
  INVX0 U587 ( .INP(n32), .ZN(n520) );
  INVX0 U588 ( .INP(n520), .ZN(n521) );
  INVX0 U589 ( .INP(n520), .ZN(n522) );
  INVX0 U590 ( .INP(n32), .ZN(n644) );
  INVX0 U591 ( .INP(n621), .ZN(n523) );
  INVX0 U592 ( .INP(n523), .ZN(n524) );
  INVX0 U593 ( .INP(n621), .ZN(n525) );
  INVX0 U594 ( .INP(n525), .ZN(n526) );
  INVX0 U595 ( .INP(n40), .ZN(n527) );
  INVX0 U596 ( .INP(n527), .ZN(n528) );
  INVX0 U597 ( .INP(n527), .ZN(n529) );
  INVX0 U598 ( .INP(n40), .ZN(n643) );
  INVX0 U599 ( .INP(n40), .ZN(n621) );
  INVX0 U600 ( .INP(n619), .ZN(n530) );
  INVX0 U601 ( .INP(n530), .ZN(n531) );
  INVX0 U602 ( .INP(n619), .ZN(n532) );
  INVX0 U603 ( .INP(n532), .ZN(n533) );
  INVX0 U604 ( .INP(n42), .ZN(n534) );
  INVX0 U605 ( .INP(n534), .ZN(n535) );
  INVX0 U606 ( .INP(n534), .ZN(n536) );
  INVX0 U607 ( .INP(n42), .ZN(n642) );
  INVX0 U608 ( .INP(n42), .ZN(n619) );
  INVX0 U609 ( .INP(n330), .ZN(n636) );
  INVX0 U610 ( .INP(n330), .ZN(n637) );
  INVX0 U611 ( .INP(n636), .ZN(n626) );
  INVX0 U612 ( .INP(n55), .ZN(n627) );
  NAND2X0 U613 ( .IN1(n34), .IN2(n44), .QN(n43) );
  INVX0 U614 ( .INP(n35), .ZN(n537) );
  INVX0 U615 ( .INP(n35), .ZN(n538) );
  INVX0 U616 ( .INP(n537), .ZN(n539) );
  INVX0 U617 ( .INP(n537), .ZN(n540) );
  INVX0 U618 ( .INP(n537), .ZN(n541) );
  INVX0 U619 ( .INP(n538), .ZN(n542) );
  INVX0 U620 ( .INP(n538), .ZN(n543) );
  INVX0 U621 ( .INP(n543), .ZN(n544) );
  INVX0 U622 ( .INP(n543), .ZN(n545) );
  INVX0 U623 ( .INP(n543), .ZN(n546) );
  INVX0 U624 ( .INP(n35), .ZN(n547) );
  NAND2X0 U625 ( .IN1(n36), .IN2(n33), .QN(n35) );
  INVX0 U626 ( .INP(n47), .ZN(n548) );
  INVX0 U627 ( .INP(n47), .ZN(n549) );
  INVX0 U628 ( .INP(n47), .ZN(n550) );
  INVX0 U629 ( .INP(n548), .ZN(n551) );
  INVX0 U630 ( .INP(n549), .ZN(n552) );
  INVX0 U631 ( .INP(n549), .ZN(n553) );
  INVX0 U632 ( .INP(n550), .ZN(n554) );
  INVX0 U633 ( .INP(n550), .ZN(n555) );
  INVX0 U634 ( .INP(n555), .ZN(n556) );
  INVX0 U635 ( .INP(n555), .ZN(n557) );
  INVX0 U636 ( .INP(n555), .ZN(n558) );
  NAND2X0 U637 ( .IN1(n48), .IN2(n33), .QN(n47) );
  INVX0 U638 ( .INP(n37), .ZN(n559) );
  INVX0 U639 ( .INP(n37), .ZN(n560) );
  INVX0 U640 ( .INP(n559), .ZN(n561) );
  INVX0 U641 ( .INP(n559), .ZN(n562) );
  INVX0 U642 ( .INP(n559), .ZN(n563) );
  INVX0 U643 ( .INP(n560), .ZN(n564) );
  INVX0 U644 ( .INP(n560), .ZN(n565) );
  INVX0 U645 ( .INP(n565), .ZN(n566) );
  INVX0 U646 ( .INP(n565), .ZN(n567) );
  INVX0 U647 ( .INP(n565), .ZN(n568) );
  INVX0 U648 ( .INP(n37), .ZN(n569) );
  NAND2X0 U649 ( .IN1(n38), .IN2(n34), .QN(n37) );
  INVX0 U650 ( .INP(n54), .ZN(n624) );
  NAND2X0 U651 ( .IN1(n41), .IN2(n34), .QN(n40) );
  INVX0 U652 ( .INP(n39), .ZN(n570) );
  INVX0 U653 ( .INP(n39), .ZN(n571) );
  INVX0 U654 ( .INP(n570), .ZN(n572) );
  INVX0 U655 ( .INP(n570), .ZN(n573) );
  INVX0 U656 ( .INP(n570), .ZN(n574) );
  INVX0 U657 ( .INP(n571), .ZN(n575) );
  INVX0 U658 ( .INP(n571), .ZN(n576) );
  INVX0 U659 ( .INP(n576), .ZN(n577) );
  INVX0 U660 ( .INP(n576), .ZN(n578) );
  INVX0 U661 ( .INP(n576), .ZN(n579) );
  INVX0 U662 ( .INP(n576), .ZN(n580) );
  NAND2X0 U663 ( .IN1(n38), .IN2(n36), .QN(n39) );
  INVX0 U664 ( .INP(n52), .ZN(n625) );
  NAND2X0 U665 ( .IN1(n41), .IN2(n36), .QN(n42) );
  INVX0 U666 ( .INP(n53), .ZN(n581) );
  INVX0 U667 ( .INP(n53), .ZN(n582) );
  INVX0 U668 ( .INP(n53), .ZN(n583) );
  INVX0 U669 ( .INP(n581), .ZN(n584) );
  INVX0 U670 ( .INP(n582), .ZN(n585) );
  INVX0 U671 ( .INP(n582), .ZN(n586) );
  INVX0 U672 ( .INP(n583), .ZN(n587) );
  INVX0 U673 ( .INP(n583), .ZN(n588) );
  INVX0 U674 ( .INP(n588), .ZN(n589) );
  INVX0 U675 ( .INP(n588), .ZN(n590) );
  INVX0 U676 ( .INP(n588), .ZN(n591) );
  NAND2X0 U677 ( .IN1(n48), .IN2(n41), .QN(n53) );
  INVX0 U678 ( .INP(n51), .ZN(n592) );
  INVX0 U679 ( .INP(n51), .ZN(n593) );
  INVX0 U680 ( .INP(n51), .ZN(n594) );
  INVX0 U681 ( .INP(n592), .ZN(n595) );
  INVX0 U682 ( .INP(n593), .ZN(n596) );
  INVX0 U683 ( .INP(n593), .ZN(n597) );
  INVX0 U684 ( .INP(n594), .ZN(n598) );
  INVX0 U685 ( .INP(n594), .ZN(n599) );
  INVX0 U686 ( .INP(n599), .ZN(n600) );
  INVX0 U687 ( .INP(n599), .ZN(n601) );
  INVX0 U688 ( .INP(n599), .ZN(n602) );
  NAND2X0 U689 ( .IN1(n48), .IN2(n38), .QN(n51) );
  INVX0 U690 ( .INP(n31), .ZN(n623) );
  NAND2X0 U691 ( .IN1(n33), .IN2(n34), .QN(n32) );
  INVX0 U692 ( .INP(n32), .ZN(n655) );
  XOR2X1 U693 ( .IN1(n604), .IN2(n609), .Q(\RD_PTR/RD_BINNEXT [3]) );
  NAND2X0 U694 ( .IN1(n327), .IN2(\RD_PTR/add_32/carry [1]), .QN(n604) );
  XOR2X1 U695 ( .IN1(\RD_PTR/RD_BINNEXT [4]), .IN2(\RD_PTR/RD_BINNEXT [3]), 
        .Q(\RD_PTR/RD_GRAYNEXT [3]) );
  INVX0 U696 ( .INP(\RD_PTR/RD_BINNEXT [2]), .ZN(n605) );
  INVX0 U697 ( .INP(n605), .ZN(n606) );
  NOR2X0 U698 ( .IN1(REMPTY), .IN2(n656), .QN(\RD_PTR/N1 ) );
  INVX0 U699 ( .INP(\DUAL_RAM/N9 ), .ZN(n608) );
  AND2X1 U700 ( .IN1(n611), .IN2(n610), .Q(\RD_PTR/add_32/carry [1]) );
  INVX0 U701 ( .INP(n612), .ZN(n613) );
  INVX0 U702 ( .INP(n608), .ZN(n615) );
  INVX0 U703 ( .INP(n616), .ZN(n617) );
  NAND2X1 U704 ( .IN1(n645), .IN2(n646), .QN(n652) );
  XOR2X1 U705 ( .IN1(\WR_PTR/WR_BIN[4] ), .IN2(\WR_PTR/add_33/carry [4]), .Q(
        \WR_PTR/WR_BINNEXT [4]) );
  AND2X1 U706 ( .IN1(\WR_PTR/add_33/carry [3]), .IN2(WADDR[3]), .Q(
        \WR_PTR/add_33/carry [4]) );
  XOR2X1 U707 ( .IN1(WADDR[3]), .IN2(\WR_PTR/add_33/carry [3]), .Q(
        \WR_PTR/WR_BINNEXT [3]) );
  AND2X1 U708 ( .IN1(\WR_PTR/add_33/carry [2]), .IN2(WADDR[2]), .Q(
        \WR_PTR/add_33/carry [3]) );
  XOR2X1 U709 ( .IN1(WADDR[2]), .IN2(\WR_PTR/add_33/carry [2]), .Q(
        \WR_PTR/WR_BINNEXT [2]) );
  AND2X1 U710 ( .IN1(\WR_PTR/add_33/carry [1]), .IN2(WADDR[1]), .Q(
        \WR_PTR/add_33/carry [2]) );
  XOR2X1 U711 ( .IN1(WADDR[1]), .IN2(\WR_PTR/add_33/carry [1]), .Q(
        \WR_PTR/WR_BINNEXT [1]) );
  AND2X1 U712 ( .IN1(\WR_PTR/add_33/B[0] ), .IN2(WADDR[0]), .Q(
        \WR_PTR/add_33/carry [1]) );
  XOR2X1 U713 ( .IN1(WADDR[0]), .IN2(\WR_PTR/add_33/B[0] ), .Q(
        \WR_PTR/WR_BINNEXT [0]) );
  XOR2X1 U714 ( .IN1(\RD_PTR/add_32/carry [4]), .IN2(\RD_PTR/RD_BIN[4] ), .Q(
        \RD_PTR/RD_BINNEXT [4]) );
  XOR2X1 U715 ( .IN1(\DUAL_RAM/N11 ), .IN2(\RD_PTR/add_32/carry [2]), .Q(
        \RD_PTR/RD_BINNEXT [2]) );
  XOR2X1 U716 ( .IN1(\DUAL_RAM/N9 ), .IN2(\RD_PTR/N1 ), .Q(
        \RD_PTR/RD_BINNEXT [0]) );
  XOR2X1 U717 ( .IN1(RQ2_WPTR[2]), .IN2(\RD_PTR/RD_GRAYNEXT [2]), .Q(n651) );
  NOR2X0 U718 ( .IN1(n653), .IN2(RQ2_WPTR[0]), .QN(n647) );
  OA22X1 U719 ( .IN1(n647), .IN2(n324), .IN3(\RD_PTR/RD_GRAYNEXT [1]), .IN4(
        n647), .Q(n650) );
  AND2X1 U720 ( .IN1(RQ2_WPTR[0]), .IN2(n653), .Q(n648) );
  OA22X1 U721 ( .IN1(RQ2_WPTR[1]), .IN2(n648), .IN3(n648), .IN4(n654), .Q(n649) );
  NOR4X0 U722 ( .IN1(n652), .IN2(n651), .IN3(n650), .IN4(n649), .QN(
        \RD_PTR/isREMPTY ) );
endmodule

