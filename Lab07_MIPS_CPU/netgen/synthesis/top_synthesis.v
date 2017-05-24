////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.70d
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Wed May 24 19:16:16 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc3s500e-5-fg320
// Input file	: top.ngc
// Output file	: D:\ISE Project\COD-Labs\Lab07_MIPS_CPU\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : e:\Xilinx\12.3\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk, rst_n, ALU_ZERO, Branch_gz, Branch_ne, en0, PC_En_Conflict, DMemVisit, JmpSig, PCWrite, ALU_POSITIVE, flush, BranchSig, Branch, IR_Write, 
bubble, RegDst, RegWrite, PC_En_Start, ALU_SrcA, MemWrite, MemtoReg, PC_en, IorD, funct, PC_Src, next_PC, state, ALUOp, alu_result, JmpSigEn, ackstate
, sext_Immed, Immed, alu_op, r3_addr_mux, PC, instruction, BrSigEn, alu_a, alu_b, alu_out, r1_dout, mem_data, bubblePri, Jump_addr, r1_data, 
reg_datain, Mem_addr, r1_addr, r2_dout, ALU_SrcB, r2_data, flushPri, M_doutb, r2_addr, opcode, next_state
);
  input clk;
  input rst_n;
  output ALU_ZERO;
  output Branch_gz;
  output Branch_ne;
  output en0;
  output PC_En_Conflict;
  output DMemVisit;
  output JmpSig;
  output PCWrite;
  output ALU_POSITIVE;
  output flush;
  output BranchSig;
  output Branch;
  output IR_Write;
  output bubble;
  output RegDst;
  output RegWrite;
  output PC_En_Start;
  output ALU_SrcA;
  output MemWrite;
  output MemtoReg;
  output PC_en;
  output IorD;
  output [5 : 0] funct;
  output [1 : 0] PC_Src;
  output [31 : 0] next_PC;
  output [6 : 0] state;
  output [1 : 0] ALUOp;
  output [31 : 0] alu_result;
  output [1 : 0] JmpSigEn;
  output [6 : 0] ackstate;
  output [31 : 0] sext_Immed;
  output [15 : 0] Immed;
  output [3 : 0] alu_op;
  output [4 : 0] r3_addr_mux;
  output [31 : 0] PC;
  output [31 : 0] instruction;
  output [1 : 0] BrSigEn;
  output [31 : 0] alu_a;
  output [31 : 0] alu_b;
  output [31 : 0] alu_out;
  output [31 : 0] r1_dout;
  output [31 : 0] mem_data;
  output [2 : 0] bubblePri;
  output [25 : 0] Jump_addr;
  output [31 : 0] r1_data;
  output [31 : 0] reg_datain;
  output [31 : 0] Mem_addr;
  output [4 : 0] r1_addr;
  output [31 : 0] r2_dout;
  output [1 : 0] ALU_SrcB;
  output [31 : 0] r2_data;
  output [2 : 0] flushPri;
  output [31 : 0] M_doutb;
  output [4 : 0] r2_addr;
  output [5 : 0] opcode;
  output [6 : 0] next_state;
  wire \ALURESULT/rst_n_inv ;
  wire ALU_POSITIVE_OBUF_6;
  wire \CONTROL/BrSigEn_not0001 ;
  wire \CONTROL/FSM1/MemtoReg_20 ;
  wire \CONTROL/FSM1/MemtoReg_mux0000_21 ;
  wire \CONTROL/FSM1/RegDst_22 ;
  wire \CONTROL/FSM1/RegDst_mux0000_23 ;
  wire \CONTROL/FSM1/RegWrite_24 ;
  wire \CONTROL/FSM1/RegWrite_mux0000_25 ;
  wire \CONTROL/FSM1/fromWB_26 ;
  wire \CONTROL/FSM1/fromWB_mux0000 ;
  wire \CONTROL/FSM1/fromWB_not0001 ;
  wire \CONTROL/FSM1/next_en_29 ;
  wire \CONTROL/FSM1/next_state_not0001 ;
  wire \CONTROL/FSM2/MemtoReg_47 ;
  wire \CONTROL/FSM2/MemtoReg_mux0000_48 ;
  wire \CONTROL/FSM2/RegDst_49 ;
  wire \CONTROL/FSM2/RegDst_mux0000_50 ;
  wire \CONTROL/FSM2/RegWrite_51 ;
  wire \CONTROL/FSM2/RegWrite_mux0000_52 ;
  wire \CONTROL/FSM2/SaveWB_53 ;
  wire \CONTROL/FSM2/fromWB_55 ;
  wire \CONTROL/FSM2/fromWB_mux0000 ;
  wire \CONTROL/FSM2/fromWB_mux00001_57 ;
  wire \CONTROL/FSM2/fromWB_not0001 ;
  wire \CONTROL/FSM2/next_en_59 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>3_66 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>4_67 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>5_68 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>_f5_69 ;
  wire \CONTROL/FSM2/next_state_mux0000<1>73_71 ;
  wire \CONTROL/FSM2/next_state_not0001 ;
  wire \CONTROL/FSM2/next_state_not00011_76 ;
  wire \CONTROL/FSM2/next_state_not00012_77 ;
  wire \CONTROL/FSM3/MemtoReg_88 ;
  wire \CONTROL/FSM3/MemtoReg_mux0000_89 ;
  wire \CONTROL/FSM3/RegDst_90 ;
  wire \CONTROL/FSM3/RegDst_mux0000_91 ;
  wire \CONTROL/FSM3/RegWrite_92 ;
  wire \CONTROL/FSM3/RegWrite_mux0000_93 ;
  wire \CONTROL/FSM3/SaveWB_94 ;
  wire \CONTROL/FSM3/fromWB_96 ;
  wire \CONTROL/FSM3/fromWB_mux0000 ;
  wire \CONTROL/FSM3/fromWB_mux00001_98 ;
  wire \CONTROL/FSM3/fromWB_not0001 ;
  wire \CONTROL/FSM3/next_en_100 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>3_107 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>4_108 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>5_109 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>_f5_110 ;
  wire \CONTROL/FSM3/next_state_not0001 ;
  wire \CONTROL/FSM3/next_state_not00011_116 ;
  wire \CONTROL/FSM3/next_state_not00012_117 ;
  wire \CONTROL/FSM4/MemtoReg_128 ;
  wire \CONTROL/FSM4/MemtoReg_mux0000_129 ;
  wire \CONTROL/FSM4/RegDst_130 ;
  wire \CONTROL/FSM4/RegDst_mux0000_131 ;
  wire \CONTROL/FSM4/RegWrite_132 ;
  wire \CONTROL/FSM4/RegWrite_mux0000_133 ;
  wire \CONTROL/FSM4/SaveWB_134 ;
  wire \CONTROL/FSM4/fromWB_136 ;
  wire \CONTROL/FSM4/fromWB_mux0000 ;
  wire \CONTROL/FSM4/fromWB_mux00001_138 ;
  wire \CONTROL/FSM4/fromWB_not0001 ;
  wire \CONTROL/FSM4/next_en_140 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>1_147 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>2_148 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>3_149 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>_f5_150 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>_f51 ;
  wire \CONTROL/FSM4/next_state_not0001 ;
  wire \CONTROL/FSM4/next_state_not00011_157 ;
  wire \CONTROL/FSM4/next_state_not00012_158 ;
  wire \CONTROL/FSM5/MemtoReg_169 ;
  wire \CONTROL/FSM5/MemtoReg_mux0000_170 ;
  wire \CONTROL/FSM5/RegDst_171 ;
  wire \CONTROL/FSM5/RegDst_mux0000_172 ;
  wire \CONTROL/FSM5/RegWrite_173 ;
  wire \CONTROL/FSM5/RegWrite_mux0000_174 ;
  wire \CONTROL/FSM5/SaveWB_175 ;
  wire \CONTROL/FSM5/fromWB_177 ;
  wire \CONTROL/FSM5/fromWB_mux0000 ;
  wire \CONTROL/FSM5/fromWB_mux00001_179 ;
  wire \CONTROL/FSM5/fromWB_not0001 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>1_187 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>2_188 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>3_189 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>_f5_190 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>_f51 ;
  wire \CONTROL/FSM5/next_state_not0001 ;
  wire \CONTROL/FSM5/next_state_not00011_197 ;
  wire \CONTROL/FSM5/next_state_not00012_198 ;
  wire \CONTROL/JmpSigEn_not0000 ;
  wire \CONTROL/Mcount_BrSigEn_eqn_0 ;
  wire \CONTROL/Mcount_BrSigEn_eqn_1 ;
  wire \CONTROL/MemtoReg11_214 ;
  wire \CONTROL/MemtoReg111 ;
  wire \CONTROL/MemtoReg22_216 ;
  wire \CONTROL/MemtoReg8_217 ;
  wire \CONTROL/N1 ;
  wire \CONTROL/N195 ;
  wire \CONTROL/N2 ;
  wire \CONTROL/N29 ;
  wire \CONTROL/N3 ;
  wire \CONTROL/N30 ;
  wire \CONTROL/N4 ;
  wire \CONTROL/N5 ;
  wire \CONTROL/N66 ;
  wire \CONTROL/N69 ;
  wire \CONTROL/N70 ;
  wire \CONTROL/N71 ;
  wire \CONTROL/N72 ;
  wire \CONTROL/N77 ;
  wire \CONTROL/RegDst31 ;
  wire \CONTROL/RegWrite111 ;
  wire \CONTROL/RegWrite238_234 ;
  wire \CONTROL/RegWrite31 ;
  wire \CONTROL/ack1 ;
  wire \CONTROL/ack2_239 ;
  wire \CONTROL/ack3 ;
  wire \CONTROL/ack4_241 ;
  wire \CONTROL/ack5 ;
  wire \CONTROL/en0_243 ;
  wire \CONTROL/en0_1_244 ;
  wire M_doutb_0_OBUF_357;
  wire M_doutb_10_OBUF_358;
  wire M_doutb_11_OBUF_359;
  wire M_doutb_12_OBUF_360;
  wire M_doutb_13_OBUF_361;
  wire M_doutb_14_OBUF_362;
  wire M_doutb_15_OBUF_363;
  wire M_doutb_16_OBUF_364;
  wire M_doutb_17_OBUF_365;
  wire M_doutb_18_OBUF_366;
  wire M_doutb_19_OBUF_367;
  wire M_doutb_1_OBUF_368;
  wire M_doutb_20_OBUF_369;
  wire M_doutb_21_OBUF_370;
  wire M_doutb_22_OBUF_371;
  wire M_doutb_23_OBUF_372;
  wire M_doutb_24_OBUF_373;
  wire M_doutb_25_OBUF_374;
  wire M_doutb_26_OBUF_375;
  wire M_doutb_27_OBUF_376;
  wire M_doutb_28_OBUF_377;
  wire M_doutb_29_OBUF_378;
  wire M_doutb_2_OBUF_379;
  wire M_doutb_30_OBUF_380;
  wire M_doutb_31_OBUF_381;
  wire M_doutb_3_OBUF_382;
  wire M_doutb_4_OBUF_383;
  wire M_doutb_5_OBUF_384;
  wire M_doutb_6_OBUF_385;
  wire M_doutb_7_OBUF_386;
  wire M_doutb_8_OBUF_387;
  wire M_doutb_9_OBUF_388;
  wire MemtoReg_OBUF_423;
  wire N100;
  wire N102;
  wire N104;
  wire N106;
  wire N108;
  wire N110;
  wire N112;
  wire N114;
  wire N116;
  wire N120;
  wire N122;
  wire N124;
  wire N126;
  wire N128;
  wire N130;
  wire N135;
  wire N137;
  wire N142;
  wire N144;
  wire N146;
  wire N148;
  wire N152;
  wire N154;
  wire N156;
  wire N157;
  wire N158;
  wire N160;
  wire N162;
  wire N170;
  wire N172;
  wire N174;
  wire N176;
  wire N178;
  wire N182;
  wire N184;
  wire N186;
  wire N188;
  wire N190;
  wire N192;
  wire N194;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N200;
  wire N201;
  wire N202;
  wire N203;
  wire N204;
  wire N205;
  wire N206;
  wire N207;
  wire N208;
  wire N209;
  wire N210;
  wire N211;
  wire N212;
  wire N213;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N25;
  wire N27;
  wire N29;
  wire N33;
  wire N35;
  wire N37;
  wire N42;
  wire N50;
  wire N51;
  wire N53;
  wire N54;
  wire N56;
  wire N57;
  wire N59;
  wire N60;
  wire N62;
  wire N63;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N72;
  wire N74;
  wire N76;
  wire N78;
  wire N80;
  wire N84;
  wire N86;
  wire N88;
  wire N90;
  wire N92;
  wire N94;
  wire N96;
  wire N98;
  wire PCWrite_OBUF_584;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_588 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_590 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_592 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_594 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_596 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_598 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_600 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_602 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_604 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_606 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_608 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_610 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_612 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_614 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_616 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_618 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_620 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_622 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_624 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_626 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_629 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_631 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_633 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_635 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_637 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_639 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_641 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_643 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt_645 ;
  wire \PC_Generator/Mmux_next_PC_4 ;
  wire \PC_Generator/Mmux_next_PC_41 ;
  wire \PC_Generator/Mmux_next_PC_410 ;
  wire \PC_Generator/Mmux_next_PC_411 ;
  wire \PC_Generator/Mmux_next_PC_412 ;
  wire \PC_Generator/Mmux_next_PC_413 ;
  wire \PC_Generator/Mmux_next_PC_414 ;
  wire \PC_Generator/Mmux_next_PC_415 ;
  wire \PC_Generator/Mmux_next_PC_416 ;
  wire \PC_Generator/Mmux_next_PC_417 ;
  wire \PC_Generator/Mmux_next_PC_418 ;
  wire \PC_Generator/Mmux_next_PC_419 ;
  wire \PC_Generator/Mmux_next_PC_42 ;
  wire \PC_Generator/Mmux_next_PC_420 ;
  wire \PC_Generator/Mmux_next_PC_421 ;
  wire \PC_Generator/Mmux_next_PC_422 ;
  wire \PC_Generator/Mmux_next_PC_423 ;
  wire \PC_Generator/Mmux_next_PC_424 ;
  wire \PC_Generator/Mmux_next_PC_425 ;
  wire \PC_Generator/Mmux_next_PC_43 ;
  wire \PC_Generator/Mmux_next_PC_44 ;
  wire \PC_Generator/Mmux_next_PC_45 ;
  wire \PC_Generator/Mmux_next_PC_46 ;
  wire \PC_Generator/Mmux_next_PC_47 ;
  wire \PC_Generator/Mmux_next_PC_48 ;
  wire \PC_Generator/Mmux_next_PC_49 ;
  wire \RegDatainMux/reg_realdatain<0>13_675 ;
  wire \RegDatainMux/reg_realdatain<0>27_676 ;
  wire \RegDatainMux/reg_realdatain<0>44_677 ;
  wire \RegDatainMux/reg_realdatain<0>62_678 ;
  wire RegDst_OBUF_680;
  wire \RegFile/R_0_0_681 ;
  wire \RegFile/R_0_not0001 ;
  wire ackstate_0_OBUF_691;
  wire alu_op_1_OBUF_760;
  wire clk_BUFGP_830;
  wire fromWB;
  wire next_PC_28_OBUF_940;
  wire next_PC_29_OBUF_941;
  wire next_PC_30_OBUF_942;
  wire next_PC_31_OBUF_943;
  wire reg_datain_0_OBUF_1125;
  wire reg_datain_10_OBUF_1126;
  wire reg_datain_11_OBUF_1127;
  wire reg_datain_12_OBUF_1128;
  wire reg_datain_13_OBUF_1129;
  wire reg_datain_14_OBUF_1130;
  wire reg_datain_15_OBUF_1131;
  wire reg_datain_16_OBUF_1132;
  wire reg_datain_17_OBUF_1133;
  wire reg_datain_18_OBUF_1134;
  wire reg_datain_19_OBUF_1135;
  wire reg_datain_1_OBUF_1136;
  wire reg_datain_20_OBUF_1137;
  wire reg_datain_21_OBUF_1138;
  wire reg_datain_22_OBUF_1139;
  wire reg_datain_23_OBUF_1140;
  wire reg_datain_24_OBUF_1141;
  wire reg_datain_25_OBUF_1142;
  wire reg_datain_26_OBUF_1143;
  wire reg_datain_27_OBUF_1144;
  wire reg_datain_28_OBUF_1145;
  wire reg_datain_29_OBUF_1146;
  wire reg_datain_2_OBUF_1147;
  wire reg_datain_30_OBUF_1148;
  wire reg_datain_31_OBUF_1149;
  wire reg_datain_3_OBUF_1150;
  wire reg_datain_4_OBUF_1151;
  wire reg_datain_5_OBUF_1152;
  wire reg_datain_6_OBUF_1153;
  wire reg_datain_7_OBUF_1154;
  wire reg_datain_8_OBUF_1155;
  wire reg_datain_9_OBUF_1156;
  wire reg_realdatain;
  wire rst_n_IBUF_1160;
  wire [1 : 0] \ALURESULT/alu_out ;
  wire [1 : 0] \CONTROL/BrSigEn ;
  wire [3 : 0] \CONTROL/FSM1/next_state ;
  wire [3 : 0] \CONTROL/FSM1/next_state_mux0000 ;
  wire [3 : 0] \CONTROL/FSM1/state ;
  wire [6 : 3] \CONTROL/FSM1/state_mux0000 ;
  wire [0 : 0] \CONTROL/FSM2/WB_value ;
  wire [4 : 0] \CONTROL/FSM2/next_state ;
  wire [4 : 0] \CONTROL/FSM2/next_state_mux0000 ;
  wire [4 : 0] \CONTROL/FSM2/state ;
  wire [6 : 2] \CONTROL/FSM2/state_mux0000 ;
  wire [0 : 0] \CONTROL/FSM3/WB_value ;
  wire [4 : 0] \CONTROL/FSM3/next_state ;
  wire [4 : 0] \CONTROL/FSM3/next_state_mux0000 ;
  wire [4 : 0] \CONTROL/FSM3/state ;
  wire [6 : 2] \CONTROL/FSM3/state_mux0000 ;
  wire [0 : 0] \CONTROL/FSM4/WB_value ;
  wire [4 : 0] \CONTROL/FSM4/next_state ;
  wire [4 : 0] \CONTROL/FSM4/next_state_mux0000 ;
  wire [4 : 0] \CONTROL/FSM4/state ;
  wire [6 : 2] \CONTROL/FSM4/state_mux0000 ;
  wire [0 : 0] \CONTROL/FSM5/WB_value ;
  wire [4 : 0] \CONTROL/FSM5/next_state ;
  wire [4 : 0] \CONTROL/FSM5/next_state_mux0000 ;
  wire [4 : 0] \CONTROL/FSM5/state ;
  wire [6 : 2] \CONTROL/FSM5/state_mux0000 ;
  wire [1 : 0] \CONTROL/JmpSigEn ;
  wire [1 : 0] \CONTROL/Result ;
  wire [31 : 0] \InstrData/data ;
  wire [31 : 2] \PCReg/PC ;
  wire [30 : 2] \PC_Generator/Madd_next_PC_addsub0000_cy ;
  wire [2 : 2] \PC_Generator/Madd_next_PC_addsub0000_lut ;
  wire [0 : 0] \myALU/Maddsub_alu_out_addsub0000_cy ;
  wire [0 : 0] \reg_out/r2_dout ;
  GND   XST_GND (
    .G(\ALURESULT/alu_out [0])
  );
  VCC   XST_VCC (
    .P(alu_op_1_OBUF_760)
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<2>  (
    .CI(\ALURESULT/alu_out [0]),
    .DI(alu_op_1_OBUF_760),
    .S(\PC_Generator/Madd_next_PC_addsub0000_lut [2]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [2])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<2>  (
    .CI(\ALURESULT/alu_out [0]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_lut [2]),
    .O(\PC_Generator/Mmux_next_PC_418 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<3>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [2]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_631 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [3])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<3>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [2]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_631 ),
    .O(\PC_Generator/Mmux_next_PC_419 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<4>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [3]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_633 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [4])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<4>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [3]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_633 ),
    .O(\PC_Generator/Mmux_next_PC_420 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<5>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [4]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_635 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [5])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<5>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [4]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_635 ),
    .O(\PC_Generator/Mmux_next_PC_421 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<6>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [5]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_637 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [6])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<6>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [5]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_637 ),
    .O(\PC_Generator/Mmux_next_PC_422 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<7>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [6]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_639 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [7])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<7>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [6]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_639 ),
    .O(\PC_Generator/Mmux_next_PC_423 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<8>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [7]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_641 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [8])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<8>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [7]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_641 ),
    .O(\PC_Generator/Mmux_next_PC_424 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<9>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [8]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_643 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [9])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<9>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [8]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_643 ),
    .O(\PC_Generator/Mmux_next_PC_425 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<10>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [9]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_588 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [10])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<10>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [9]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_588 ),
    .O(\PC_Generator/Mmux_next_PC_4 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<11>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [10]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_590 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [11])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<11>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [10]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_590 ),
    .O(\PC_Generator/Mmux_next_PC_41 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<12>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [11]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_592 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [12])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<12>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [11]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_592 ),
    .O(\PC_Generator/Mmux_next_PC_42 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<13>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [12]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_594 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [13])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<13>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [12]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_594 ),
    .O(\PC_Generator/Mmux_next_PC_43 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<14>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [13]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_596 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [14])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<14>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [13]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_596 ),
    .O(\PC_Generator/Mmux_next_PC_44 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<15>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [14]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_598 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [15])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<15>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [14]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_598 ),
    .O(\PC_Generator/Mmux_next_PC_45 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<16>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [15]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_600 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [16])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<16>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [15]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_600 ),
    .O(\PC_Generator/Mmux_next_PC_46 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<17>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [16]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_602 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [17])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<17>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [16]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_602 ),
    .O(\PC_Generator/Mmux_next_PC_47 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<18>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [17]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_604 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [18])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<18>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [17]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_604 ),
    .O(\PC_Generator/Mmux_next_PC_48 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<19>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [18]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_606 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [19])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<19>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [18]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_606 ),
    .O(\PC_Generator/Mmux_next_PC_49 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<20>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [19]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_608 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [20])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<20>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [19]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_608 ),
    .O(\PC_Generator/Mmux_next_PC_410 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<21>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [20]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_610 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [21])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<21>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [20]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_610 ),
    .O(\PC_Generator/Mmux_next_PC_411 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<22>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [21]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_612 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [22])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<22>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [21]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_612 ),
    .O(\PC_Generator/Mmux_next_PC_412 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<23>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [22]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_614 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [23])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<23>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [22]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_614 ),
    .O(\PC_Generator/Mmux_next_PC_413 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<24>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [23]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_616 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [24])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<24>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [23]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_616 ),
    .O(\PC_Generator/Mmux_next_PC_414 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<25>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [24]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_618 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [25])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<25>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [24]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_618 ),
    .O(\PC_Generator/Mmux_next_PC_415 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<26>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [25]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_620 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [26])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<26>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [25]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_620 ),
    .O(\PC_Generator/Mmux_next_PC_416 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<27>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [26]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_622 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [27])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<27>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [26]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_622 ),
    .O(\PC_Generator/Mmux_next_PC_417 )
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<28>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [27]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_624 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [28])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<28>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [27]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_624 ),
    .O(next_PC_28_OBUF_940)
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<29>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [28]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_626 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [29])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<29>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [28]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_626 ),
    .O(next_PC_29_OBUF_941)
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<30>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [29]),
    .DI(\ALURESULT/alu_out [0]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_629 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [30])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<30>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [29]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_629 ),
    .O(next_PC_30_OBUF_942)
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<31>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [30]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt_645 ),
    .O(next_PC_31_OBUF_943)
  );
  Memory   myMemory (
    .clka(clk_BUFGP_830),
    .douta({M_doutb_31_OBUF_381, M_doutb_30_OBUF_380, M_doutb_29_OBUF_378, M_doutb_28_OBUF_377, M_doutb_27_OBUF_376, M_doutb_26_OBUF_375, 
M_doutb_25_OBUF_374, M_doutb_24_OBUF_373, M_doutb_23_OBUF_372, M_doutb_22_OBUF_371, M_doutb_21_OBUF_370, M_doutb_20_OBUF_369, M_doutb_19_OBUF_367, 
M_doutb_18_OBUF_366, M_doutb_17_OBUF_365, M_doutb_16_OBUF_364, M_doutb_15_OBUF_363, M_doutb_14_OBUF_362, M_doutb_13_OBUF_361, M_doutb_12_OBUF_360, 
M_doutb_11_OBUF_359, M_doutb_10_OBUF_358, M_doutb_9_OBUF_388, M_doutb_8_OBUF_387, M_doutb_7_OBUF_386, M_doutb_6_OBUF_385, M_doutb_5_OBUF_384, 
M_doutb_4_OBUF_383, M_doutb_3_OBUF_382, M_doutb_2_OBUF_379, M_doutb_1_OBUF_368, M_doutb_0_OBUF_357}),
    .wea({\ALURESULT/alu_out [0]}),
    .addra({\PCReg/PC [8], \PCReg/PC [7], \PCReg/PC [6], \PCReg/PC [5], \PCReg/PC [4], \PCReg/PC [3], \PCReg/PC [2]}),
    .dina({\ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], 
\ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], 
\ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], 
\ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], 
\ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \ALURESULT/alu_out [0], 
\ALURESULT/alu_out [0], \ALURESULT/alu_out [0], \reg_out/r2_dout [0]})
  );
  FDCE   \PCReg/PC_31  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_31_OBUF_943),
    .Q(\PCReg/PC [31])
  );
  FDCE   \PCReg/PC_30  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_30_OBUF_942),
    .Q(\PCReg/PC [30])
  );
  FDCE   \PCReg/PC_29  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_29_OBUF_941),
    .Q(\PCReg/PC [29])
  );
  FDCE   \PCReg/PC_28  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_28_OBUF_940),
    .Q(\PCReg/PC [28])
  );
  FDCE   \PCReg/PC_27  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_417 ),
    .Q(\PCReg/PC [27])
  );
  FDCE   \PCReg/PC_26  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_416 ),
    .Q(\PCReg/PC [26])
  );
  FDCE   \PCReg/PC_25  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_415 ),
    .Q(\PCReg/PC [25])
  );
  FDCE   \PCReg/PC_24  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_414 ),
    .Q(\PCReg/PC [24])
  );
  FDCE   \PCReg/PC_23  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_413 ),
    .Q(\PCReg/PC [23])
  );
  FDCE   \PCReg/PC_22  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_412 ),
    .Q(\PCReg/PC [22])
  );
  FDCE   \PCReg/PC_21  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_411 ),
    .Q(\PCReg/PC [21])
  );
  FDCE   \PCReg/PC_20  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_410 ),
    .Q(\PCReg/PC [20])
  );
  FDCE   \PCReg/PC_19  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_49 ),
    .Q(\PCReg/PC [19])
  );
  FDCE   \PCReg/PC_18  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_48 ),
    .Q(\PCReg/PC [18])
  );
  FDCE   \PCReg/PC_17  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_47 ),
    .Q(\PCReg/PC [17])
  );
  FDCE   \PCReg/PC_16  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_46 ),
    .Q(\PCReg/PC [16])
  );
  FDCE   \PCReg/PC_15  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_45 ),
    .Q(\PCReg/PC [15])
  );
  FDCE   \PCReg/PC_14  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_44 ),
    .Q(\PCReg/PC [14])
  );
  FDCE   \PCReg/PC_13  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_43 ),
    .Q(\PCReg/PC [13])
  );
  FDCE   \PCReg/PC_12  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_42 ),
    .Q(\PCReg/PC [12])
  );
  FDCE   \PCReg/PC_11  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_41 ),
    .Q(\PCReg/PC [11])
  );
  FDCE   \PCReg/PC_10  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_4 ),
    .Q(\PCReg/PC [10])
  );
  FDCE   \PCReg/PC_9  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_425 ),
    .Q(\PCReg/PC [9])
  );
  FDCE   \PCReg/PC_8  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_424 ),
    .Q(\PCReg/PC [8])
  );
  FDCE   \PCReg/PC_7  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_423 ),
    .Q(\PCReg/PC [7])
  );
  FDCE   \PCReg/PC_6  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_422 ),
    .Q(\PCReg/PC [6])
  );
  FDCE   \PCReg/PC_5  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_421 ),
    .Q(\PCReg/PC [5])
  );
  FDCE   \PCReg/PC_4  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_420 ),
    .Q(\PCReg/PC [4])
  );
  FDCE   \PCReg/PC_3  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_419 ),
    .Q(\PCReg/PC [3])
  );
  FDCE   \PCReg/PC_2  (
    .C(clk_BUFGP_830),
    .CE(PCWrite_OBUF_584),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\PC_Generator/Mmux_next_PC_418 ),
    .Q(\PCReg/PC [2])
  );
  FDC   \InstrData/data_31  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_31_OBUF_381),
    .Q(\InstrData/data [31])
  );
  FDC   \InstrData/data_30  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_30_OBUF_380),
    .Q(\InstrData/data [30])
  );
  FDC   \InstrData/data_29  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_29_OBUF_378),
    .Q(\InstrData/data [29])
  );
  FDC   \InstrData/data_28  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_28_OBUF_377),
    .Q(\InstrData/data [28])
  );
  FDC   \InstrData/data_27  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_27_OBUF_376),
    .Q(\InstrData/data [27])
  );
  FDC   \InstrData/data_26  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_26_OBUF_375),
    .Q(\InstrData/data [26])
  );
  FDC   \InstrData/data_25  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_25_OBUF_374),
    .Q(\InstrData/data [25])
  );
  FDC   \InstrData/data_24  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_24_OBUF_373),
    .Q(\InstrData/data [24])
  );
  FDC   \InstrData/data_23  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_23_OBUF_372),
    .Q(\InstrData/data [23])
  );
  FDC   \InstrData/data_22  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_22_OBUF_371),
    .Q(\InstrData/data [22])
  );
  FDC   \InstrData/data_21  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_21_OBUF_370),
    .Q(\InstrData/data [21])
  );
  FDC   \InstrData/data_20  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_20_OBUF_369),
    .Q(\InstrData/data [20])
  );
  FDC   \InstrData/data_19  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_19_OBUF_367),
    .Q(\InstrData/data [19])
  );
  FDC   \InstrData/data_18  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_18_OBUF_366),
    .Q(\InstrData/data [18])
  );
  FDC   \InstrData/data_17  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_17_OBUF_365),
    .Q(\InstrData/data [17])
  );
  FDC   \InstrData/data_16  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_16_OBUF_364),
    .Q(\InstrData/data [16])
  );
  FDC   \InstrData/data_15  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_15_OBUF_363),
    .Q(\InstrData/data [15])
  );
  FDC   \InstrData/data_14  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_14_OBUF_362),
    .Q(\InstrData/data [14])
  );
  FDC   \InstrData/data_13  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_13_OBUF_361),
    .Q(\InstrData/data [13])
  );
  FDC   \InstrData/data_12  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_12_OBUF_360),
    .Q(\InstrData/data [12])
  );
  FDC   \InstrData/data_11  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_11_OBUF_359),
    .Q(\InstrData/data [11])
  );
  FDC   \InstrData/data_10  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_10_OBUF_358),
    .Q(\InstrData/data [10])
  );
  FDC   \InstrData/data_9  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_9_OBUF_388),
    .Q(\InstrData/data [9])
  );
  FDC   \InstrData/data_8  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_8_OBUF_387),
    .Q(\InstrData/data [8])
  );
  FDC   \InstrData/data_7  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_7_OBUF_386),
    .Q(\InstrData/data [7])
  );
  FDC   \InstrData/data_6  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_6_OBUF_385),
    .Q(\InstrData/data [6])
  );
  FDC   \InstrData/data_5  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_5_OBUF_384),
    .Q(\InstrData/data [5])
  );
  FDC   \InstrData/data_4  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_4_OBUF_383),
    .Q(\InstrData/data [4])
  );
  FDC   \InstrData/data_3  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_3_OBUF_382),
    .Q(\InstrData/data [3])
  );
  FDC   \InstrData/data_2  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_2_OBUF_379),
    .Q(\InstrData/data [2])
  );
  FDC   \InstrData/data_1  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_1_OBUF_368),
    .Q(\InstrData/data [1])
  );
  FDC   \InstrData/data_0  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_0_OBUF_357),
    .Q(\InstrData/data [0])
  );
  FDCE   \RegFile/R_0_0  (
    .C(clk_BUFGP_830),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain),
    .Q(\RegFile/R_0_0_681 )
  );
  FDC   \reg_out/r2_dout_0  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_0_681 ),
    .Q(\reg_out/r2_dout [0])
  );
  FDC   \ALURESULT/alu_out_1  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(ALU_POSITIVE_OBUF_6),
    .Q(\ALURESULT/alu_out [1])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<1>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [0]),
    .LI(\ALURESULT/alu_out [0]),
    .O(ALU_POSITIVE_OBUF_6)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<0>  (
    .CI(alu_op_1_OBUF_760),
    .DI(\reg_out/r2_dout [0]),
    .S(\ALURESULT/alu_out [0]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [0])
  );
  FDPE   \CONTROL/FSM5/state_0  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM5/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [0])
  );
  FDPE   \CONTROL/FSM5/state_1  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM5/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [1])
  );
  FDPE   \CONTROL/FSM5/state_2  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM5/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [2])
  );
  FDPE   \CONTROL/FSM5/state_3  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM5/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [3])
  );
  FDCE   \CONTROL/FSM5/state_4  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/state_mux0000 [2]),
    .Q(\CONTROL/FSM5/state [4])
  );
  FDPE   \CONTROL/FSM4/state_0  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM4/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [0])
  );
  FDPE   \CONTROL/FSM4/state_1  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM4/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [1])
  );
  FDPE   \CONTROL/FSM4/state_2  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM4/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [2])
  );
  FDPE   \CONTROL/FSM4/state_3  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM4/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [3])
  );
  FDCE   \CONTROL/FSM4/state_4  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [2]),
    .Q(\CONTROL/FSM4/state [4])
  );
  FDPE   \CONTROL/FSM3/state_0  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM3/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [0])
  );
  FDPE   \CONTROL/FSM3/state_1  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM3/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [1])
  );
  FDPE   \CONTROL/FSM3/state_2  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM3/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [2])
  );
  FDPE   \CONTROL/FSM3/state_3  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM3/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [3])
  );
  FDCE   \CONTROL/FSM3/state_4  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [2]),
    .Q(\CONTROL/FSM3/state [4])
  );
  FDPE   \CONTROL/FSM2/state_0  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM2/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [0])
  );
  FDPE   \CONTROL/FSM2/state_1  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM2/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [1])
  );
  FDPE   \CONTROL/FSM2/state_2  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM2/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [2])
  );
  FDPE   \CONTROL/FSM2/state_3  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM2/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [3])
  );
  FDCE   \CONTROL/FSM2/state_4  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [2]),
    .Q(\CONTROL/FSM2/state [4])
  );
  FDPE   \CONTROL/FSM1/state_0  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM1/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [0])
  );
  FDPE   \CONTROL/FSM1/state_1  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM1/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [1])
  );
  FDPE   \CONTROL/FSM1/state_2  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM1/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [2])
  );
  FDPE   \CONTROL/FSM1/state_3  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM1/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [3])
  );
  FDCE   \CONTROL/BrSigEn_1  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/BrSigEn_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/Mcount_BrSigEn_eqn_1 ),
    .Q(\CONTROL/BrSigEn [1])
  );
  FDPE   \CONTROL/BrSigEn_0  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/BrSigEn_not0001 ),
    .D(\CONTROL/Mcount_BrSigEn_eqn_0 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/BrSigEn [0])
  );
  FDCE   \CONTROL/JmpSigEn_1  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/JmpSigEn_not0000 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/Result [1]),
    .Q(\CONTROL/JmpSigEn [1])
  );
  FDCE   \CONTROL/JmpSigEn_0  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/JmpSigEn_not0000 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/Result [0]),
    .Q(\CONTROL/JmpSigEn [0])
  );
  FDC   \CONTROL/FSM1/next_en  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/en0_243 ),
    .Q(\CONTROL/FSM1/next_en_29 )
  );
  FDCE   \CONTROL/FSM1/fromWB  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM1/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/fromWB_mux0000 ),
    .Q(\CONTROL/FSM1/fromWB_26 )
  );
  FDPE   \CONTROL/FSM1/MemtoReg  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM1/MemtoReg_mux0000_21 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/MemtoReg_20 )
  );
  FDCE   \CONTROL/FSM1/RegWrite  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/RegWrite_mux0000_25 ),
    .Q(\CONTROL/FSM1/RegWrite_24 )
  );
  FDPE   \CONTROL/FSM1/RegDst  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM1/RegDst_mux0000_23 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/RegDst_22 )
  );
  LD   \CONTROL/FSM1/next_state_0  (
    .D(\CONTROL/FSM1/next_state_mux0000 [0]),
    .G(\CONTROL/FSM1/next_state_not0001 ),
    .Q(\CONTROL/FSM1/next_state [0])
  );
  LD   \CONTROL/FSM1/next_state_1  (
    .D(\CONTROL/FSM1/next_state_mux0000 [1]),
    .G(\CONTROL/FSM1/next_state_not0001 ),
    .Q(\CONTROL/FSM1/next_state [1])
  );
  LD   \CONTROL/FSM1/next_state_2  (
    .D(\CONTROL/FSM1/next_state_mux0000 [2]),
    .G(\CONTROL/FSM1/next_state_not0001 ),
    .Q(\CONTROL/FSM1/next_state [2])
  );
  LD   \CONTROL/FSM1/next_state_3  (
    .D(\CONTROL/FSM1/next_state_mux0000 [3]),
    .G(\CONTROL/FSM1/next_state_not0001 ),
    .Q(\CONTROL/FSM1/next_state [3])
  );
  FDC   \CONTROL/FSM2/next_en  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/next_en_29 ),
    .Q(\CONTROL/FSM2/next_en_59 )
  );
  FDCE   \CONTROL/FSM2/WB_value_0  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM2/SaveWB_53 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_1125),
    .Q(\CONTROL/FSM2/WB_value [0])
  );
  FDCE   \CONTROL/FSM2/fromWB  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM2/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/fromWB_mux0000 ),
    .Q(\CONTROL/FSM2/fromWB_55 )
  );
  FDPE   \CONTROL/FSM2/MemtoReg  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM2/MemtoReg_mux0000_48 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/MemtoReg_47 )
  );
  FDCE   \CONTROL/FSM2/RegWrite  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/RegWrite_mux0000_52 ),
    .Q(\CONTROL/FSM2/RegWrite_51 )
  );
  FDPE   \CONTROL/FSM2/RegDst  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM2/RegDst_mux0000_50 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/RegDst_49 )
  );
  LD   \CONTROL/FSM2/next_state_0  (
    .D(\CONTROL/FSM2/next_state_mux0000 [0]),
    .G(\CONTROL/FSM2/next_state_not0001 ),
    .Q(\CONTROL/FSM2/next_state [0])
  );
  LD   \CONTROL/FSM2/next_state_1  (
    .D(\CONTROL/FSM2/next_state_mux0000 [1]),
    .G(\CONTROL/FSM2/next_state_not0001 ),
    .Q(\CONTROL/FSM2/next_state [1])
  );
  LD   \CONTROL/FSM2/next_state_2  (
    .D(\CONTROL/FSM2/next_state_mux0000 [2]),
    .G(\CONTROL/FSM2/next_state_not0001 ),
    .Q(\CONTROL/FSM2/next_state [2])
  );
  LD   \CONTROL/FSM2/next_state_3  (
    .D(\CONTROL/FSM2/next_state_mux0000 [3]),
    .G(\CONTROL/FSM2/next_state_not0001 ),
    .Q(\CONTROL/FSM2/next_state [3])
  );
  LD   \CONTROL/FSM2/next_state_4  (
    .D(\CONTROL/FSM2/next_state_mux0000 [4]),
    .G(\CONTROL/FSM2/next_state_not0001 ),
    .Q(\CONTROL/FSM2/next_state [4])
  );
  FDC   \CONTROL/FSM3/next_en  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/next_en_59 ),
    .Q(\CONTROL/FSM3/next_en_100 )
  );
  FDCE   \CONTROL/FSM3/WB_value_0  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM3/SaveWB_94 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_1125),
    .Q(\CONTROL/FSM3/WB_value [0])
  );
  FDCE   \CONTROL/FSM3/fromWB  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM3/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/fromWB_mux0000 ),
    .Q(\CONTROL/FSM3/fromWB_96 )
  );
  FDPE   \CONTROL/FSM3/MemtoReg  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM3/MemtoReg_mux0000_89 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/MemtoReg_88 )
  );
  FDCE   \CONTROL/FSM3/RegWrite  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/RegWrite_mux0000_93 ),
    .Q(\CONTROL/FSM3/RegWrite_92 )
  );
  FDPE   \CONTROL/FSM3/RegDst  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM3/RegDst_mux0000_91 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/RegDst_90 )
  );
  LD   \CONTROL/FSM3/next_state_0  (
    .D(\CONTROL/FSM3/next_state_mux0000 [0]),
    .G(\CONTROL/FSM3/next_state_not0001 ),
    .Q(\CONTROL/FSM3/next_state [0])
  );
  LD   \CONTROL/FSM3/next_state_1  (
    .D(\CONTROL/FSM3/next_state_mux0000 [1]),
    .G(\CONTROL/FSM3/next_state_not0001 ),
    .Q(\CONTROL/FSM3/next_state [1])
  );
  LD   \CONTROL/FSM3/next_state_2  (
    .D(\CONTROL/FSM3/next_state_mux0000 [2]),
    .G(\CONTROL/FSM3/next_state_not0001 ),
    .Q(\CONTROL/FSM3/next_state [2])
  );
  LD   \CONTROL/FSM3/next_state_3  (
    .D(\CONTROL/FSM3/next_state_mux0000 [3]),
    .G(\CONTROL/FSM3/next_state_not0001 ),
    .Q(\CONTROL/FSM3/next_state [3])
  );
  LD   \CONTROL/FSM3/next_state_4  (
    .D(\CONTROL/FSM3/next_state_mux0000 [4]),
    .G(\CONTROL/FSM3/next_state_not0001 ),
    .Q(\CONTROL/FSM3/next_state [4])
  );
  FDC   \CONTROL/FSM4/next_en  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/next_en_100 ),
    .Q(\CONTROL/FSM4/next_en_140 )
  );
  FDCE   \CONTROL/FSM4/WB_value_0  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM4/SaveWB_134 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_1125),
    .Q(\CONTROL/FSM4/WB_value [0])
  );
  FDCE   \CONTROL/FSM4/fromWB  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM4/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/fromWB_mux0000 ),
    .Q(\CONTROL/FSM4/fromWB_136 )
  );
  FDPE   \CONTROL/FSM4/MemtoReg  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM4/MemtoReg_mux0000_129 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/MemtoReg_128 )
  );
  FDCE   \CONTROL/FSM4/RegWrite  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/RegWrite_mux0000_133 ),
    .Q(\CONTROL/FSM4/RegWrite_132 )
  );
  FDPE   \CONTROL/FSM4/RegDst  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM4/RegDst_mux0000_131 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/RegDst_130 )
  );
  LD   \CONTROL/FSM4/next_state_0  (
    .D(\CONTROL/FSM4/next_state_mux0000 [0]),
    .G(\CONTROL/FSM4/next_state_not0001 ),
    .Q(\CONTROL/FSM4/next_state [0])
  );
  LD   \CONTROL/FSM4/next_state_1  (
    .D(\CONTROL/FSM4/next_state_mux0000 [1]),
    .G(\CONTROL/FSM4/next_state_not0001 ),
    .Q(\CONTROL/FSM4/next_state [1])
  );
  LD   \CONTROL/FSM4/next_state_2  (
    .D(\CONTROL/FSM4/next_state_mux0000 [2]),
    .G(\CONTROL/FSM4/next_state_not0001 ),
    .Q(\CONTROL/FSM4/next_state [2])
  );
  LD   \CONTROL/FSM4/next_state_3  (
    .D(\CONTROL/FSM4/next_state_mux0000 [3]),
    .G(\CONTROL/FSM4/next_state_not0001 ),
    .Q(\CONTROL/FSM4/next_state [3])
  );
  LD   \CONTROL/FSM4/next_state_4  (
    .D(\CONTROL/FSM4/next_state_mux0000 [4]),
    .G(\CONTROL/FSM4/next_state_not0001 ),
    .Q(\CONTROL/FSM4/next_state [4])
  );
  FDCE   \CONTROL/FSM5/WB_value_0  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM5/SaveWB_175 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_1125),
    .Q(\CONTROL/FSM5/WB_value [0])
  );
  FDCE   \CONTROL/FSM5/fromWB  (
    .C(clk_BUFGP_830),
    .CE(\CONTROL/FSM5/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/fromWB_mux0000 ),
    .Q(\CONTROL/FSM5/fromWB_177 )
  );
  FDPE   \CONTROL/FSM5/MemtoReg  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM5/MemtoReg_mux0000_170 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/MemtoReg_169 )
  );
  FDCE   \CONTROL/FSM5/RegWrite  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/RegWrite_mux0000_174 ),
    .Q(\CONTROL/FSM5/RegWrite_173 )
  );
  FDPE   \CONTROL/FSM5/RegDst  (
    .C(clk_BUFGP_830),
    .CE(alu_op_1_OBUF_760),
    .D(\CONTROL/FSM5/RegDst_mux0000_172 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/RegDst_171 )
  );
  LD   \CONTROL/FSM5/next_state_0  (
    .D(\CONTROL/FSM5/next_state_mux0000 [0]),
    .G(\CONTROL/FSM5/next_state_not0001 ),
    .Q(\CONTROL/FSM5/next_state [0])
  );
  LD   \CONTROL/FSM5/next_state_1  (
    .D(\CONTROL/FSM5/next_state_mux0000 [1]),
    .G(\CONTROL/FSM5/next_state_not0001 ),
    .Q(\CONTROL/FSM5/next_state [1])
  );
  LD   \CONTROL/FSM5/next_state_2  (
    .D(\CONTROL/FSM5/next_state_mux0000 [2]),
    .G(\CONTROL/FSM5/next_state_not0001 ),
    .Q(\CONTROL/FSM5/next_state [2])
  );
  LD   \CONTROL/FSM5/next_state_3  (
    .D(\CONTROL/FSM5/next_state_mux0000 [3]),
    .G(\CONTROL/FSM5/next_state_not0001 ),
    .Q(\CONTROL/FSM5/next_state [3])
  );
  LD   \CONTROL/FSM5/next_state_4  (
    .D(\CONTROL/FSM5/next_state_mux0000 [4]),
    .G(\CONTROL/FSM5/next_state_not0001 ),
    .Q(\CONTROL/FSM5/next_state [4])
  );
  FDC   \CONTROL/en0  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_op_1_OBUF_760),
    .Q(\CONTROL/en0_243 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM5/RegWrite_mux000011  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .I3(\CONTROL/FSM5/next_state [0]),
    .O(\CONTROL/N69 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM4/RegWrite_mux000011  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [3]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(\CONTROL/FSM4/next_state [0]),
    .O(\CONTROL/N70 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM3/RegWrite_mux000011  (
    .I0(\CONTROL/FSM3/next_state [4]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .I2(\CONTROL/FSM3/next_state [1]),
    .I3(\CONTROL/FSM3/next_state [0]),
    .O(\CONTROL/N71 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM2/RegWrite_mux000011  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .I3(\CONTROL/FSM2/next_state [0]),
    .O(\CONTROL/N72 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM1/fromWB_mux00001  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [1]),
    .I3(\CONTROL/FSM1/next_state [0]),
    .O(\CONTROL/FSM1/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM1/next_state_not00011  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/FSM1/state [2]),
    .O(\CONTROL/FSM1/next_state_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2009 ))
  \CONTROL/FSM1/next_state_mux0000<0>1  (
    .I0(\CONTROL/FSM1/state [1]),
    .I1(\CONTROL/FSM1/state [2]),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/FSM1/state [3]),
    .O(\CONTROL/FSM1/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h069C ))
  \CONTROL/FSM1/next_state_mux0000<2>1  (
    .I0(\CONTROL/FSM1/state [1]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [2]),
    .O(\CONTROL/FSM1/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hA37B ))
  \CONTROL/FSM5/next_state_mux0000<4>_SW0  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/FSM5/state [2]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/FSM5/state [3]),
    .O(N25)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \CONTROL/FSM5/next_state_mux0000<4>  (
    .I0(\CONTROL/ack5 ),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(N25),
    .O(\CONTROL/FSM5/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hA37B ))
  \CONTROL/FSM4/next_state_mux0000<4>_SW0  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/FSM4/state [3]),
    .O(N27)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \CONTROL/FSM4/next_state_mux0000<4>  (
    .I0(\CONTROL/ack4_241 ),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(N27),
    .O(\CONTROL/FSM4/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hA37B ))
  \CONTROL/FSM3/next_state_mux0000<4>_SW0  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(N29)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \CONTROL/FSM3/next_state_mux0000<4>  (
    .I0(\CONTROL/ack3 ),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(N29),
    .O(\CONTROL/FSM3/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/FSM5/next_state_mux0000<0>1  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [3]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/ack5 ),
    .O(\CONTROL/FSM5/next_state_mux0000<0>1_187 )
  );
  LUT4 #(
    .INIT ( 16'h14C0 ))
  \CONTROL/FSM5/next_state_mux0000<0>2  (
    .I0(\CONTROL/ack5 ),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(\CONTROL/FSM5/next_state_mux0000<0>2_188 )
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<0>_f5  (
    .I0(\CONTROL/FSM5/next_state_mux0000<0>2_188 ),
    .I1(\CONTROL/FSM5/next_state_mux0000<0>1_187 ),
    .S(\CONTROL/FSM5/state [4]),
    .O(\CONTROL/FSM5/next_state_mux0000<0>_f5_190 )
  );
  LUT4 #(
    .INIT ( 16'h41F9 ))
  \CONTROL/FSM5/next_state_mux0000<0>3  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [2]),
    .I3(\CONTROL/ack5 ),
    .O(\CONTROL/FSM5/next_state_mux0000<0>3_189 )
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<0>_f5_0  (
    .I0(\CONTROL/FSM5/next_state_mux0000<0>3_189 ),
    .I1(\ALURESULT/alu_out [0]),
    .S(\CONTROL/FSM5/state [4]),
    .O(\CONTROL/FSM5/next_state_mux0000<0>_f51 )
  );
  MUXF6   \CONTROL/FSM5/next_state_mux0000<0>_f6  (
    .I0(\CONTROL/FSM5/next_state_mux0000<0>_f51 ),
    .I1(\CONTROL/FSM5/next_state_mux0000<0>_f5_190 ),
    .S(\CONTROL/FSM5/state [0]),
    .O(\CONTROL/FSM5/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/FSM4/next_state_mux0000<0>1  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(\CONTROL/FSM4/state [3]),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/ack4_241 ),
    .O(\CONTROL/FSM4/next_state_mux0000<0>1_147 )
  );
  LUT4 #(
    .INIT ( 16'h14C0 ))
  \CONTROL/FSM4/next_state_mux0000<0>2  (
    .I0(\CONTROL/ack4_241 ),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [2]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>2_148 )
  );
  MUXF5   \CONTROL/FSM4/next_state_mux0000<0>_f5  (
    .I0(\CONTROL/FSM4/next_state_mux0000<0>2_148 ),
    .I1(\CONTROL/FSM4/next_state_mux0000<0>1_147 ),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>_f5_150 )
  );
  LUT4 #(
    .INIT ( 16'h41F9 ))
  \CONTROL/FSM4/next_state_mux0000<0>3  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(\CONTROL/ack4_241 ),
    .O(\CONTROL/FSM4/next_state_mux0000<0>3_149 )
  );
  MUXF5   \CONTROL/FSM4/next_state_mux0000<0>_f5_0  (
    .I0(\CONTROL/FSM4/next_state_mux0000<0>3_149 ),
    .I1(\ALURESULT/alu_out [0]),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>_f51 )
  );
  MUXF6   \CONTROL/FSM4/next_state_mux0000<0>_f6  (
    .I0(\CONTROL/FSM4/next_state_mux0000<0>_f51 ),
    .I1(\CONTROL/FSM4/next_state_mux0000<0>_f5_150 ),
    .S(\CONTROL/FSM4/state [0]),
    .O(\CONTROL/FSM4/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM3/next_state_mux0000<0>3  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>3_107 )
  );
  LUT4 #(
    .INIT ( 16'h14C0 ))
  \CONTROL/FSM3/next_state_mux0000<0>4  (
    .I0(\CONTROL/N195 ),
    .I1(\CONTROL/FSM3/state [3]),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [2]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>4_108 )
  );
  LUT4 #(
    .INIT ( 16'h41F9 ))
  \CONTROL/FSM3/next_state_mux0000<0>5  (
    .I0(\CONTROL/FSM3/state [3]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [2]),
    .I3(\CONTROL/N195 ),
    .O(\CONTROL/FSM3/next_state_mux0000<0>5_109 )
  );
  MUXF5   \CONTROL/FSM3/next_state_mux0000<0>_f5  (
    .I0(\CONTROL/FSM3/next_state_mux0000<0>5_109 ),
    .I1(\CONTROL/FSM3/next_state_mux0000<0>4_108 ),
    .S(\CONTROL/FSM3/state [0]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>_f5_110 )
  );
  MUXF6   \CONTROL/FSM3/next_state_mux0000<0>_f6  (
    .I0(\CONTROL/FSM3/next_state_mux0000<0>_f5_110 ),
    .I1(\CONTROL/FSM3/next_state_mux0000<0>3_107 ),
    .S(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM2/next_state_mux0000<0>3  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [1]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(\CONTROL/FSM2/next_state_mux0000<0>3_66 )
  );
  LUT4 #(
    .INIT ( 16'h6808 ))
  \CONTROL/FSM2/next_state_mux0000<0>4  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM2/state [3]),
    .I2(\CONTROL/FSM2/state [2]),
    .I3(\CONTROL/ack1 ),
    .O(\CONTROL/FSM2/next_state_mux0000<0>4_67 )
  );
  LUT4 #(
    .INIT ( 16'hEB09 ))
  \CONTROL/FSM2/next_state_mux0000<0>5  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/ack1 ),
    .O(\CONTROL/FSM2/next_state_mux0000<0>5_68 )
  );
  MUXF5   \CONTROL/FSM2/next_state_mux0000<0>_f5  (
    .I0(\CONTROL/FSM2/next_state_mux0000<0>5_68 ),
    .I1(\CONTROL/FSM2/next_state_mux0000<0>4_67 ),
    .S(\CONTROL/FSM2/state [0]),
    .O(\CONTROL/FSM2/next_state_mux0000<0>_f5_69 )
  );
  MUXF6   \CONTROL/FSM2/next_state_mux0000<0>_f6  (
    .I0(\CONTROL/FSM2/next_state_mux0000<0>_f5_69 ),
    .I1(\CONTROL/FSM2/next_state_mux0000<0>3_66 ),
    .S(\CONTROL/FSM2/state [4]),
    .O(\CONTROL/FSM2/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/FSM4/next_state_mux0000<3>  (
    .I0(N33),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(\CONTROL/N3 ),
    .I3(\CONTROL/ack4_241 ),
    .O(\CONTROL/FSM4/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/FSM3/next_state_mux0000<3>  (
    .I0(N35),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(\CONTROL/N4 ),
    .I3(\CONTROL/ack3 ),
    .O(\CONTROL/FSM3/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/FSM2/next_state_mux0000<3>  (
    .I0(N37),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/N5 ),
    .I3(\CONTROL/ack2_239 ),
    .O(\CONTROL/FSM2/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF965 ))
  \CONTROL/FSM5/next_state_mux0000<2>_SW0  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/FSM5/next_state_mux0000<2>  (
    .I0(N42),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(\CONTROL/N2 ),
    .I3(\CONTROL/ack5 ),
    .O(\CONTROL/FSM5/next_state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<6>1  (
    .I0(\CONTROL/FSM4/next_en_140 ),
    .I1(\CONTROL/FSM5/next_state [0]),
    .O(\CONTROL/FSM5/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<5>1  (
    .I0(\CONTROL/FSM4/next_en_140 ),
    .I1(\CONTROL/FSM5/next_state [1]),
    .O(\CONTROL/FSM5/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<4>1  (
    .I0(\CONTROL/FSM4/next_en_140 ),
    .I1(\CONTROL/FSM5/next_state [2]),
    .O(\CONTROL/FSM5/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<3>1  (
    .I0(\CONTROL/FSM4/next_en_140 ),
    .I1(\CONTROL/FSM5/next_state [3]),
    .O(\CONTROL/FSM5/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM5/state_mux0000<2>1  (
    .I0(\CONTROL/FSM4/next_en_140 ),
    .I1(\CONTROL/FSM5/next_state [4]),
    .O(\CONTROL/FSM5/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<6>1  (
    .I0(\CONTROL/FSM3/next_en_100 ),
    .I1(\CONTROL/FSM4/next_state [0]),
    .O(\CONTROL/FSM4/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<5>1  (
    .I0(\CONTROL/FSM3/next_en_100 ),
    .I1(\CONTROL/FSM4/next_state [1]),
    .O(\CONTROL/FSM4/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<4>1  (
    .I0(\CONTROL/FSM3/next_en_100 ),
    .I1(\CONTROL/FSM4/next_state [2]),
    .O(\CONTROL/FSM4/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<3>1  (
    .I0(\CONTROL/FSM3/next_en_100 ),
    .I1(\CONTROL/FSM4/next_state [3]),
    .O(\CONTROL/FSM4/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM4/state_mux0000<2>1  (
    .I0(\CONTROL/FSM3/next_en_100 ),
    .I1(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<6>1  (
    .I0(\CONTROL/FSM2/next_en_59 ),
    .I1(\CONTROL/FSM3/next_state [0]),
    .O(\CONTROL/FSM3/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<5>1  (
    .I0(\CONTROL/FSM2/next_en_59 ),
    .I1(\CONTROL/FSM3/next_state [1]),
    .O(\CONTROL/FSM3/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<4>1  (
    .I0(\CONTROL/FSM2/next_en_59 ),
    .I1(\CONTROL/FSM3/next_state [2]),
    .O(\CONTROL/FSM3/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<3>1  (
    .I0(\CONTROL/FSM2/next_en_59 ),
    .I1(\CONTROL/FSM3/next_state [3]),
    .O(\CONTROL/FSM3/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM3/state_mux0000<2>1  (
    .I0(\CONTROL/FSM2/next_en_59 ),
    .I1(\CONTROL/FSM3/next_state [4]),
    .O(\CONTROL/FSM3/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<6>1  (
    .I0(\CONTROL/FSM1/next_en_29 ),
    .I1(\CONTROL/FSM2/next_state [0]),
    .O(\CONTROL/FSM2/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<5>1  (
    .I0(\CONTROL/FSM1/next_en_29 ),
    .I1(\CONTROL/FSM2/next_state [1]),
    .O(\CONTROL/FSM2/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<4>1  (
    .I0(\CONTROL/FSM1/next_en_29 ),
    .I1(\CONTROL/FSM2/next_state [2]),
    .O(\CONTROL/FSM2/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<3>1  (
    .I0(\CONTROL/FSM1/next_en_29 ),
    .I1(\CONTROL/FSM2/next_state [3]),
    .O(\CONTROL/FSM2/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM2/state_mux0000<2>1  (
    .I0(\CONTROL/FSM1/next_en_29 ),
    .I1(\CONTROL/FSM2/next_state [4]),
    .O(\CONTROL/FSM2/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<6>1  (
    .I0(\CONTROL/en0_243 ),
    .I1(\CONTROL/FSM1/next_state [0]),
    .O(\CONTROL/FSM1/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<5>1  (
    .I0(\CONTROL/en0_243 ),
    .I1(\CONTROL/FSM1/next_state [1]),
    .O(\CONTROL/FSM1/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<4>1  (
    .I0(\CONTROL/en0_243 ),
    .I1(\CONTROL/FSM1/next_state [2]),
    .O(\CONTROL/FSM1/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<3>1  (
    .I0(\CONTROL/en0_243 ),
    .I1(\CONTROL/FSM1/next_state [3]),
    .O(\CONTROL/FSM1/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \CONTROL/Mcount_JmpSigEn_xor<1>11  (
    .I0(\CONTROL/JmpSigEn [1]),
    .I1(\CONTROL/JmpSigEn [0]),
    .O(\CONTROL/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \CONTROL/Mcount_BrSigEn_eqn_11  (
    .I0(\CONTROL/BrSigEn [0]),
    .I1(\CONTROL/BrSigEn [1]),
    .O(\CONTROL/Mcount_BrSigEn_eqn_1 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \CONTROL/FSM5/RegDst_mux0000_SW0  (
    .I0(\CONTROL/FSM5/next_state [2]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [3]),
    .O(N50)
  );
  LUT4 #(
    .INIT ( 16'hFEF7 ))
  \CONTROL/FSM5/RegDst_mux0000_SW1  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM5/RegDst_mux0000  (
    .I0(\CONTROL/FSM5/RegDst_171 ),
    .I1(N51),
    .I2(\CONTROL/FSM5/next_state [4]),
    .I3(N50),
    .O(\CONTROL/FSM5/RegDst_mux0000_172 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM5/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .I3(\CONTROL/FSM5/next_state [0]),
    .O(N53)
  );
  LUT4 #(
    .INIT ( 16'hDFF7 ))
  \CONTROL/FSM5/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM5/next_state [1]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM5/MemtoReg_mux0000  (
    .I0(\CONTROL/FSM5/MemtoReg_169 ),
    .I1(N54),
    .I2(\CONTROL/FSM5/next_state [4]),
    .I3(N53),
    .O(\CONTROL/FSM5/MemtoReg_mux0000_170 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \CONTROL/FSM4/RegDst_mux0000_SW0  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [3]),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hFEF7 ))
  \CONTROL/FSM4/RegDst_mux0000_SW1  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM4/RegDst_mux0000  (
    .I0(\CONTROL/FSM4/RegDst_130 ),
    .I1(N57),
    .I2(\CONTROL/FSM4/next_state [4]),
    .I3(N56),
    .O(\CONTROL/FSM4/RegDst_mux0000_131 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM4/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [2]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(\CONTROL/FSM4/next_state [0]),
    .O(N59)
  );
  LUT4 #(
    .INIT ( 16'hDFF7 ))
  \CONTROL/FSM4/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM4/next_state [1]),
    .I1(\CONTROL/FSM4/next_state [3]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM4/MemtoReg_mux0000  (
    .I0(\CONTROL/FSM4/MemtoReg_128 ),
    .I1(N60),
    .I2(\CONTROL/FSM4/next_state [4]),
    .I3(N59),
    .O(\CONTROL/FSM4/MemtoReg_mux0000_129 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \CONTROL/FSM3/RegDst_mux0000_SW0  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/FSM3/next_state [0]),
    .I3(\CONTROL/FSM3/next_state [3]),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'hFEF7 ))
  \CONTROL/FSM3/RegDst_mux0000_SW1  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/FSM3/next_state [0]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N63)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM3/RegDst_mux0000  (
    .I0(\CONTROL/FSM3/RegDst_90 ),
    .I1(N63),
    .I2(\CONTROL/FSM3/next_state [4]),
    .I3(N62),
    .O(\CONTROL/FSM3/RegDst_mux0000_91 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM3/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [2]),
    .I2(\CONTROL/FSM3/next_state [1]),
    .I3(\CONTROL/FSM3/next_state [0]),
    .O(N65)
  );
  LUT4 #(
    .INIT ( 16'hDFF7 ))
  \CONTROL/FSM3/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .I2(\CONTROL/FSM3/next_state [0]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM3/MemtoReg_mux0000  (
    .I0(\CONTROL/FSM3/MemtoReg_88 ),
    .I1(N66),
    .I2(\CONTROL/FSM3/next_state [4]),
    .I3(N65),
    .O(\CONTROL/FSM3/MemtoReg_mux0000_89 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \CONTROL/FSM2/RegDst_mux0000_SW0  (
    .I0(\CONTROL/FSM2/next_state [2]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [3]),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hFEF7 ))
  \CONTROL/FSM2/RegDst_mux0000_SW1  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N69)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM2/RegDst_mux0000  (
    .I0(\CONTROL/FSM2/RegDst_49 ),
    .I1(N69),
    .I2(\CONTROL/FSM2/next_state [4]),
    .I3(N68),
    .O(\CONTROL/FSM2/RegDst_mux0000_50 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM2/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [2]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .I3(\CONTROL/FSM2/next_state [0]),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'hDFF7 ))
  \CONTROL/FSM2/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM2/next_state [1]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'hA8AD ))
  \CONTROL/FSM2/MemtoReg_mux0000  (
    .I0(\CONTROL/FSM2/MemtoReg_47 ),
    .I1(N72),
    .I2(\CONTROL/FSM2/next_state [4]),
    .I3(N71),
    .O(\CONTROL/FSM2/MemtoReg_mux0000_48 )
  );
  LUT4 #(
    .INIT ( 16'hBEF7 ))
  \CONTROL/FSM5/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N74)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \CONTROL/FSM5/RegWrite_mux0000  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(N74),
    .I2(\CONTROL/FSM5/RegWrite_173 ),
    .I3(\CONTROL/N69 ),
    .O(\CONTROL/FSM5/RegWrite_mux0000_174 )
  );
  LUT4 #(
    .INIT ( 16'hBEF7 ))
  \CONTROL/FSM4/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \CONTROL/FSM4/RegWrite_mux0000  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(N76),
    .I2(\CONTROL/FSM4/RegWrite_132 ),
    .I3(\CONTROL/N70 ),
    .O(\CONTROL/FSM4/RegWrite_mux0000_133 )
  );
  LUT4 #(
    .INIT ( 16'hBEF7 ))
  \CONTROL/FSM3/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/FSM3/next_state [0]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \CONTROL/FSM3/RegWrite_mux0000  (
    .I0(\CONTROL/FSM3/next_state [4]),
    .I1(N78),
    .I2(\CONTROL/FSM3/RegWrite_92 ),
    .I3(\CONTROL/N71 ),
    .O(\CONTROL/FSM3/RegWrite_mux0000_93 )
  );
  LUT4 #(
    .INIT ( 16'hBEF7 ))
  \CONTROL/FSM2/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \CONTROL/FSM2/RegWrite_mux0000  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(N80),
    .I2(\CONTROL/FSM2/RegWrite_51 ),
    .I3(\CONTROL/N72 ),
    .O(\CONTROL/FSM2/RegWrite_mux0000_52 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/JmpSigEn_not00001  (
    .I0(\CONTROL/JmpSigEn [0]),
    .I1(\CONTROL/JmpSigEn [1]),
    .O(\CONTROL/JmpSigEn_not0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/BrSigEn_not00011  (
    .I0(\CONTROL/BrSigEn [0]),
    .I1(\CONTROL/BrSigEn [1]),
    .O(\CONTROL/BrSigEn_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \CONTROL/FSM5/fromWB_not00011  (
    .I0(\CONTROL/FSM5/next_state [2]),
    .I1(\CONTROL/N69 ),
    .I2(\CONTROL/FSM5/SaveWB_175 ),
    .O(\CONTROL/FSM5/fromWB_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \CONTROL/FSM4/fromWB_not00011  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/N70 ),
    .I2(\CONTROL/FSM4/SaveWB_134 ),
    .O(\CONTROL/FSM4/fromWB_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \CONTROL/FSM3/fromWB_not00011  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/N71 ),
    .I2(\CONTROL/FSM3/SaveWB_94 ),
    .O(\CONTROL/FSM3/fromWB_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \CONTROL/FSM2/fromWB_not00011  (
    .I0(\CONTROL/FSM2/next_state [2]),
    .I1(\CONTROL/N72 ),
    .I2(\CONTROL/FSM2/SaveWB_53 ),
    .O(\CONTROL/FSM2/fromWB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM5/stage_mux0000<0>1  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(N84),
    .O(\CONTROL/N2 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM4/stage_mux0000<0>1  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM4/state [0]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(N86),
    .O(\CONTROL/N3 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM3/stage_mux0000<0>1  (
    .I0(\CONTROL/FSM3/state [1]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(N88),
    .O(\CONTROL/N4 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM2/stage_mux0000<0>1  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(N90),
    .O(\CONTROL/N5 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM5/SaveWB_SW0  (
    .I0(\CONTROL/FSM5/next_state [2]),
    .I1(\CONTROL/FSM5/next_state [0]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .I3(\CONTROL/FSM5/next_state [3]),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM5/SaveWB  (
    .I0(N92),
    .I1(\CONTROL/N2 ),
    .I2(\CONTROL/FSM5/next_state [4]),
    .I3(\CONTROL/FSM5/RegWrite_173 ),
    .O(\CONTROL/FSM5/SaveWB_175 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM4/SaveWB_SW0  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/FSM4/next_state [0]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(\CONTROL/FSM4/next_state [3]),
    .O(N94)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM4/SaveWB  (
    .I0(N94),
    .I1(\CONTROL/N3 ),
    .I2(\CONTROL/FSM4/next_state [4]),
    .I3(\CONTROL/FSM4/RegWrite_132 ),
    .O(\CONTROL/FSM4/SaveWB_134 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM3/SaveWB_SW0  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [0]),
    .I2(\CONTROL/FSM3/next_state [1]),
    .I3(\CONTROL/FSM3/next_state [3]),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM3/SaveWB  (
    .I0(N96),
    .I1(\CONTROL/N4 ),
    .I2(\CONTROL/FSM3/next_state [4]),
    .I3(\CONTROL/FSM3/RegWrite_92 ),
    .O(\CONTROL/FSM3/SaveWB_94 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM2/SaveWB_SW0  (
    .I0(\CONTROL/FSM2/next_state [2]),
    .I1(\CONTROL/FSM2/next_state [0]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .I3(\CONTROL/FSM2/next_state [3]),
    .O(N98)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM2/SaveWB  (
    .I0(N98),
    .I1(\CONTROL/N5 ),
    .I2(\CONTROL/FSM2/next_state [4]),
    .I3(\CONTROL/FSM2/RegWrite_51 ),
    .O(\CONTROL/FSM2/SaveWB_53 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \CONTROL/I9_cy<4>1101  (
    .I0(\CONTROL/FSM1/fromWB_26 ),
    .I1(\CONTROL/ack1 ),
    .O(\CONTROL/N1 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/PC_En_Start  (
    .I0(N100),
    .I1(\CONTROL/ack4_241 ),
    .I2(\CONTROL/ack3 ),
    .I3(N217),
    .O(PCWrite_OBUF_584)
  );
  LUT4 #(
    .INIT ( 16'hFFD5 ))
  \CONTROL/fromWB  (
    .I0(\CONTROL/N29 ),
    .I1(\CONTROL/ack5 ),
    .I2(\CONTROL/FSM5/fromWB_177 ),
    .I3(N102),
    .O(fromWB)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<9>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_9_OBUF_388),
    .O(reg_datain_9_OBUF_1156)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<8>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_8_OBUF_387),
    .O(reg_datain_8_OBUF_1155)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<7>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_7_OBUF_386),
    .O(reg_datain_7_OBUF_1154)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<6>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_6_OBUF_385),
    .O(reg_datain_6_OBUF_1153)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<5>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_5_OBUF_384),
    .O(reg_datain_5_OBUF_1152)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<4>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_4_OBUF_383),
    .O(reg_datain_4_OBUF_1151)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<3>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_3_OBUF_382),
    .O(reg_datain_3_OBUF_1150)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<31>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_31_OBUF_381),
    .O(reg_datain_31_OBUF_1149)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<30>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_30_OBUF_380),
    .O(reg_datain_30_OBUF_1148)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<2>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_2_OBUF_379),
    .O(reg_datain_2_OBUF_1147)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<29>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_29_OBUF_378),
    .O(reg_datain_29_OBUF_1146)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<28>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_28_OBUF_377),
    .O(reg_datain_28_OBUF_1145)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<27>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_27_OBUF_376),
    .O(reg_datain_27_OBUF_1144)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<26>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_26_OBUF_375),
    .O(reg_datain_26_OBUF_1143)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<25>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_25_OBUF_374),
    .O(reg_datain_25_OBUF_1142)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<24>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_24_OBUF_373),
    .O(reg_datain_24_OBUF_1141)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<23>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_23_OBUF_372),
    .O(reg_datain_23_OBUF_1140)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<22>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_22_OBUF_371),
    .O(reg_datain_22_OBUF_1139)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<21>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_21_OBUF_370),
    .O(reg_datain_21_OBUF_1138)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<20>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_20_OBUF_369),
    .O(reg_datain_20_OBUF_1137)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<19>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_19_OBUF_367),
    .O(reg_datain_19_OBUF_1135)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<18>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_18_OBUF_366),
    .O(reg_datain_18_OBUF_1134)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<17>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_17_OBUF_365),
    .O(reg_datain_17_OBUF_1133)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<16>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_16_OBUF_364),
    .O(reg_datain_16_OBUF_1132)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<15>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_15_OBUF_363),
    .O(reg_datain_15_OBUF_1131)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<14>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_14_OBUF_362),
    .O(reg_datain_14_OBUF_1130)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<13>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_13_OBUF_361),
    .O(reg_datain_13_OBUF_1129)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<12>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_12_OBUF_360),
    .O(reg_datain_12_OBUF_1128)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<11>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_11_OBUF_359),
    .O(reg_datain_11_OBUF_1127)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<10>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(M_doutb_10_OBUF_358),
    .O(reg_datain_10_OBUF_1126)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_datain<1>1  (
    .I0(MemtoReg_OBUF_423),
    .I1(\ALURESULT/alu_out [1]),
    .I2(M_doutb_1_OBUF_368),
    .O(reg_datain_1_OBUF_1136)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \CONTROL/ack2  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N210),
    .I2(\CONTROL/ack1 ),
    .O(\CONTROL/ack2_239 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/MemtoReg1  (
    .I0(\CONTROL/FSM1/MemtoReg_20 ),
    .I1(N208),
    .O(\CONTROL/MemtoReg11_214 )
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_1160)
  );
  OBUF   ALU_ZERO_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ALU_ZERO)
  );
  OBUF   Branch_gz_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Branch_gz)
  );
  OBUF   Branch_ne_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Branch_ne)
  );
  OBUF   en0_OBUF (
    .I(\CONTROL/en0_1_244 ),
    .O(en0)
  );
  OBUF   PC_En_Conflict_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(PC_En_Conflict)
  );
  OBUF   DMemVisit_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(DMemVisit)
  );
  OBUF   JmpSig_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(JmpSig)
  );
  OBUF   PCWrite_OBUF (
    .I(PCWrite_OBUF_584),
    .O(PCWrite)
  );
  OBUF   ALU_POSITIVE_OBUF (
    .I(ALU_POSITIVE_OBUF_6),
    .O(ALU_POSITIVE)
  );
  OBUF   flush_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(flush)
  );
  OBUF   BranchSig_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(BranchSig)
  );
  OBUF   Branch_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Branch)
  );
  OBUF   IR_Write_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(IR_Write)
  );
  OBUF   bubble_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(bubble)
  );
  OBUF   RegDst_OBUF (
    .I(RegDst_OBUF_680),
    .O(RegDst)
  );
  OBUF   RegWrite_OBUF (
    .I(\RegFile/R_0_not0001 ),
    .O(RegWrite)
  );
  OBUF   PC_En_Start_OBUF (
    .I(PCWrite_OBUF_584),
    .O(PC_En_Start)
  );
  OBUF   ALU_SrcA_OBUF (
    .I(alu_op_1_OBUF_760),
    .O(ALU_SrcA)
  );
  OBUF   MemWrite_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(MemWrite)
  );
  OBUF   MemtoReg_OBUF (
    .I(MemtoReg_OBUF_423),
    .O(MemtoReg)
  );
  OBUF   PC_en_OBUF (
    .I(PCWrite_OBUF_584),
    .O(PC_en)
  );
  OBUF   IorD_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(IorD)
  );
  OBUF   funct_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(funct[5])
  );
  OBUF   funct_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(funct[4])
  );
  OBUF   funct_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(funct[3])
  );
  OBUF   funct_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(funct[2])
  );
  OBUF   funct_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(funct[1])
  );
  OBUF   funct_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(funct[0])
  );
  OBUF   PC_Src_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(PC_Src[1])
  );
  OBUF   PC_Src_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(PC_Src[0])
  );
  OBUF   next_PC_31_OBUF (
    .I(next_PC_31_OBUF_943),
    .O(next_PC[31])
  );
  OBUF   next_PC_30_OBUF (
    .I(next_PC_30_OBUF_942),
    .O(next_PC[30])
  );
  OBUF   next_PC_29_OBUF (
    .I(next_PC_29_OBUF_941),
    .O(next_PC[29])
  );
  OBUF   next_PC_28_OBUF (
    .I(next_PC_28_OBUF_940),
    .O(next_PC[28])
  );
  OBUF   next_PC_27_OBUF (
    .I(\PC_Generator/Mmux_next_PC_417 ),
    .O(next_PC[27])
  );
  OBUF   next_PC_26_OBUF (
    .I(\PC_Generator/Mmux_next_PC_416 ),
    .O(next_PC[26])
  );
  OBUF   next_PC_25_OBUF (
    .I(\PC_Generator/Mmux_next_PC_415 ),
    .O(next_PC[25])
  );
  OBUF   next_PC_24_OBUF (
    .I(\PC_Generator/Mmux_next_PC_414 ),
    .O(next_PC[24])
  );
  OBUF   next_PC_23_OBUF (
    .I(\PC_Generator/Mmux_next_PC_413 ),
    .O(next_PC[23])
  );
  OBUF   next_PC_22_OBUF (
    .I(\PC_Generator/Mmux_next_PC_412 ),
    .O(next_PC[22])
  );
  OBUF   next_PC_21_OBUF (
    .I(\PC_Generator/Mmux_next_PC_411 ),
    .O(next_PC[21])
  );
  OBUF   next_PC_20_OBUF (
    .I(\PC_Generator/Mmux_next_PC_410 ),
    .O(next_PC[20])
  );
  OBUF   next_PC_19_OBUF (
    .I(\PC_Generator/Mmux_next_PC_49 ),
    .O(next_PC[19])
  );
  OBUF   next_PC_18_OBUF (
    .I(\PC_Generator/Mmux_next_PC_48 ),
    .O(next_PC[18])
  );
  OBUF   next_PC_17_OBUF (
    .I(\PC_Generator/Mmux_next_PC_47 ),
    .O(next_PC[17])
  );
  OBUF   next_PC_16_OBUF (
    .I(\PC_Generator/Mmux_next_PC_46 ),
    .O(next_PC[16])
  );
  OBUF   next_PC_15_OBUF (
    .I(\PC_Generator/Mmux_next_PC_45 ),
    .O(next_PC[15])
  );
  OBUF   next_PC_14_OBUF (
    .I(\PC_Generator/Mmux_next_PC_44 ),
    .O(next_PC[14])
  );
  OBUF   next_PC_13_OBUF (
    .I(\PC_Generator/Mmux_next_PC_43 ),
    .O(next_PC[13])
  );
  OBUF   next_PC_12_OBUF (
    .I(\PC_Generator/Mmux_next_PC_42 ),
    .O(next_PC[12])
  );
  OBUF   next_PC_11_OBUF (
    .I(\PC_Generator/Mmux_next_PC_41 ),
    .O(next_PC[11])
  );
  OBUF   next_PC_10_OBUF (
    .I(\PC_Generator/Mmux_next_PC_4 ),
    .O(next_PC[10])
  );
  OBUF   next_PC_9_OBUF (
    .I(\PC_Generator/Mmux_next_PC_425 ),
    .O(next_PC[9])
  );
  OBUF   next_PC_8_OBUF (
    .I(\PC_Generator/Mmux_next_PC_424 ),
    .O(next_PC[8])
  );
  OBUF   next_PC_7_OBUF (
    .I(\PC_Generator/Mmux_next_PC_423 ),
    .O(next_PC[7])
  );
  OBUF   next_PC_6_OBUF (
    .I(\PC_Generator/Mmux_next_PC_422 ),
    .O(next_PC[6])
  );
  OBUF   next_PC_5_OBUF (
    .I(\PC_Generator/Mmux_next_PC_421 ),
    .O(next_PC[5])
  );
  OBUF   next_PC_4_OBUF (
    .I(\PC_Generator/Mmux_next_PC_420 ),
    .O(next_PC[4])
  );
  OBUF   next_PC_3_OBUF (
    .I(\PC_Generator/Mmux_next_PC_419 ),
    .O(next_PC[3])
  );
  OBUF   next_PC_2_OBUF (
    .I(\PC_Generator/Mmux_next_PC_418 ),
    .O(next_PC[2])
  );
  OBUF   next_PC_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(next_PC[1])
  );
  OBUF   next_PC_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(next_PC[0])
  );
  OBUF   ALUOp_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ALUOp[1])
  );
  OBUF   ALUOp_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ALUOp[0])
  );
  OBUF   alu_result_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[31])
  );
  OBUF   alu_result_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[30])
  );
  OBUF   alu_result_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[29])
  );
  OBUF   alu_result_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[28])
  );
  OBUF   alu_result_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[27])
  );
  OBUF   alu_result_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[26])
  );
  OBUF   alu_result_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[25])
  );
  OBUF   alu_result_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[24])
  );
  OBUF   alu_result_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[23])
  );
  OBUF   alu_result_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[22])
  );
  OBUF   alu_result_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[21])
  );
  OBUF   alu_result_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[20])
  );
  OBUF   alu_result_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[19])
  );
  OBUF   alu_result_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[18])
  );
  OBUF   alu_result_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[17])
  );
  OBUF   alu_result_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[16])
  );
  OBUF   alu_result_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[15])
  );
  OBUF   alu_result_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[14])
  );
  OBUF   alu_result_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[13])
  );
  OBUF   alu_result_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[12])
  );
  OBUF   alu_result_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[11])
  );
  OBUF   alu_result_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[10])
  );
  OBUF   alu_result_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[9])
  );
  OBUF   alu_result_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[8])
  );
  OBUF   alu_result_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[7])
  );
  OBUF   alu_result_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[6])
  );
  OBUF   alu_result_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[5])
  );
  OBUF   alu_result_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[4])
  );
  OBUF   alu_result_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[3])
  );
  OBUF   alu_result_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[2])
  );
  OBUF   alu_result_1_OBUF (
    .I(ALU_POSITIVE_OBUF_6),
    .O(alu_result[1])
  );
  OBUF   alu_result_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_result[0])
  );
  OBUF   JmpSigEn_1_OBUF (
    .I(\CONTROL/JmpSigEn [1]),
    .O(JmpSigEn[1])
  );
  OBUF   JmpSigEn_0_OBUF (
    .I(\CONTROL/JmpSigEn [0]),
    .O(JmpSigEn[0])
  );
  OBUF   ackstate_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ackstate[6])
  );
  OBUF   ackstate_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ackstate[5])
  );
  OBUF   ackstate_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ackstate[4])
  );
  OBUF   ackstate_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ackstate[3])
  );
  OBUF   ackstate_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ackstate[2])
  );
  OBUF   ackstate_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ackstate[1])
  );
  OBUF   ackstate_0_OBUF (
    .I(ackstate_0_OBUF_691),
    .O(ackstate[0])
  );
  OBUF   sext_Immed_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[31])
  );
  OBUF   sext_Immed_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[30])
  );
  OBUF   sext_Immed_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[29])
  );
  OBUF   sext_Immed_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[28])
  );
  OBUF   sext_Immed_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[27])
  );
  OBUF   sext_Immed_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[26])
  );
  OBUF   sext_Immed_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[25])
  );
  OBUF   sext_Immed_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[24])
  );
  OBUF   sext_Immed_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[23])
  );
  OBUF   sext_Immed_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[22])
  );
  OBUF   sext_Immed_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[21])
  );
  OBUF   sext_Immed_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[20])
  );
  OBUF   sext_Immed_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[19])
  );
  OBUF   sext_Immed_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[18])
  );
  OBUF   sext_Immed_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[17])
  );
  OBUF   sext_Immed_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[16])
  );
  OBUF   sext_Immed_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[15])
  );
  OBUF   sext_Immed_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[14])
  );
  OBUF   sext_Immed_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[13])
  );
  OBUF   sext_Immed_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[12])
  );
  OBUF   sext_Immed_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[11])
  );
  OBUF   sext_Immed_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[10])
  );
  OBUF   sext_Immed_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[9])
  );
  OBUF   sext_Immed_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[8])
  );
  OBUF   sext_Immed_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[7])
  );
  OBUF   sext_Immed_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[6])
  );
  OBUF   sext_Immed_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[5])
  );
  OBUF   sext_Immed_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[4])
  );
  OBUF   sext_Immed_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[3])
  );
  OBUF   sext_Immed_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[2])
  );
  OBUF   sext_Immed_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[1])
  );
  OBUF   sext_Immed_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(sext_Immed[0])
  );
  OBUF   Immed_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[15])
  );
  OBUF   Immed_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[14])
  );
  OBUF   Immed_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[13])
  );
  OBUF   Immed_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[12])
  );
  OBUF   Immed_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[11])
  );
  OBUF   Immed_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[10])
  );
  OBUF   Immed_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[9])
  );
  OBUF   Immed_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[8])
  );
  OBUF   Immed_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[7])
  );
  OBUF   Immed_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[6])
  );
  OBUF   Immed_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[5])
  );
  OBUF   Immed_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[4])
  );
  OBUF   Immed_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[3])
  );
  OBUF   Immed_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[2])
  );
  OBUF   Immed_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[1])
  );
  OBUF   Immed_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Immed[0])
  );
  OBUF   alu_op_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_op[3])
  );
  OBUF   alu_op_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_op[2])
  );
  OBUF   alu_op_1_OBUF (
    .I(alu_op_1_OBUF_760),
    .O(alu_op[1])
  );
  OBUF   alu_op_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_op[0])
  );
  OBUF   r3_addr_mux_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r3_addr_mux[4])
  );
  OBUF   r3_addr_mux_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r3_addr_mux[3])
  );
  OBUF   r3_addr_mux_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r3_addr_mux[2])
  );
  OBUF   r3_addr_mux_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r3_addr_mux[1])
  );
  OBUF   r3_addr_mux_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r3_addr_mux[0])
  );
  OBUF   PC_31_OBUF (
    .I(\PCReg/PC [31]),
    .O(PC[31])
  );
  OBUF   PC_30_OBUF (
    .I(\PCReg/PC [30]),
    .O(PC[30])
  );
  OBUF   PC_29_OBUF (
    .I(\PCReg/PC [29]),
    .O(PC[29])
  );
  OBUF   PC_28_OBUF (
    .I(\PCReg/PC [28]),
    .O(PC[28])
  );
  OBUF   PC_27_OBUF (
    .I(\PCReg/PC [27]),
    .O(PC[27])
  );
  OBUF   PC_26_OBUF (
    .I(\PCReg/PC [26]),
    .O(PC[26])
  );
  OBUF   PC_25_OBUF (
    .I(\PCReg/PC [25]),
    .O(PC[25])
  );
  OBUF   PC_24_OBUF (
    .I(\PCReg/PC [24]),
    .O(PC[24])
  );
  OBUF   PC_23_OBUF (
    .I(\PCReg/PC [23]),
    .O(PC[23])
  );
  OBUF   PC_22_OBUF (
    .I(\PCReg/PC [22]),
    .O(PC[22])
  );
  OBUF   PC_21_OBUF (
    .I(\PCReg/PC [21]),
    .O(PC[21])
  );
  OBUF   PC_20_OBUF (
    .I(\PCReg/PC [20]),
    .O(PC[20])
  );
  OBUF   PC_19_OBUF (
    .I(\PCReg/PC [19]),
    .O(PC[19])
  );
  OBUF   PC_18_OBUF (
    .I(\PCReg/PC [18]),
    .O(PC[18])
  );
  OBUF   PC_17_OBUF (
    .I(\PCReg/PC [17]),
    .O(PC[17])
  );
  OBUF   PC_16_OBUF (
    .I(\PCReg/PC [16]),
    .O(PC[16])
  );
  OBUF   PC_15_OBUF (
    .I(\PCReg/PC [15]),
    .O(PC[15])
  );
  OBUF   PC_14_OBUF (
    .I(\PCReg/PC [14]),
    .O(PC[14])
  );
  OBUF   PC_13_OBUF (
    .I(\PCReg/PC [13]),
    .O(PC[13])
  );
  OBUF   PC_12_OBUF (
    .I(\PCReg/PC [12]),
    .O(PC[12])
  );
  OBUF   PC_11_OBUF (
    .I(\PCReg/PC [11]),
    .O(PC[11])
  );
  OBUF   PC_10_OBUF (
    .I(\PCReg/PC [10]),
    .O(PC[10])
  );
  OBUF   PC_9_OBUF (
    .I(\PCReg/PC [9]),
    .O(PC[9])
  );
  OBUF   PC_8_OBUF (
    .I(\PCReg/PC [8]),
    .O(PC[8])
  );
  OBUF   PC_7_OBUF (
    .I(\PCReg/PC [7]),
    .O(PC[7])
  );
  OBUF   PC_6_OBUF (
    .I(\PCReg/PC [6]),
    .O(PC[6])
  );
  OBUF   PC_5_OBUF (
    .I(\PCReg/PC [5]),
    .O(PC[5])
  );
  OBUF   PC_4_OBUF (
    .I(\PCReg/PC [4]),
    .O(PC[4])
  );
  OBUF   PC_3_OBUF (
    .I(\PCReg/PC [3]),
    .O(PC[3])
  );
  OBUF   PC_2_OBUF (
    .I(\PCReg/PC [2]),
    .O(PC[2])
  );
  OBUF   PC_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(PC[1])
  );
  OBUF   PC_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(PC[0])
  );
  OBUF   instruction_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[31])
  );
  OBUF   instruction_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[30])
  );
  OBUF   instruction_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[29])
  );
  OBUF   instruction_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[28])
  );
  OBUF   instruction_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[27])
  );
  OBUF   instruction_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[26])
  );
  OBUF   instruction_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[25])
  );
  OBUF   instruction_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[24])
  );
  OBUF   instruction_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[23])
  );
  OBUF   instruction_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[22])
  );
  OBUF   instruction_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[21])
  );
  OBUF   instruction_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[20])
  );
  OBUF   instruction_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[19])
  );
  OBUF   instruction_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[18])
  );
  OBUF   instruction_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[17])
  );
  OBUF   instruction_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[16])
  );
  OBUF   instruction_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[15])
  );
  OBUF   instruction_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[14])
  );
  OBUF   instruction_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[13])
  );
  OBUF   instruction_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[12])
  );
  OBUF   instruction_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[11])
  );
  OBUF   instruction_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[10])
  );
  OBUF   instruction_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[9])
  );
  OBUF   instruction_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[8])
  );
  OBUF   instruction_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[7])
  );
  OBUF   instruction_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[6])
  );
  OBUF   instruction_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[5])
  );
  OBUF   instruction_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[4])
  );
  OBUF   instruction_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[3])
  );
  OBUF   instruction_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[2])
  );
  OBUF   instruction_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[1])
  );
  OBUF   instruction_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(instruction[0])
  );
  OBUF   BrSigEn_1_OBUF (
    .I(\CONTROL/BrSigEn [1]),
    .O(BrSigEn[1])
  );
  OBUF   BrSigEn_0_OBUF (
    .I(\CONTROL/BrSigEn [0]),
    .O(BrSigEn[0])
  );
  OBUF   alu_a_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[31])
  );
  OBUF   alu_a_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[30])
  );
  OBUF   alu_a_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[29])
  );
  OBUF   alu_a_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[28])
  );
  OBUF   alu_a_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[27])
  );
  OBUF   alu_a_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[26])
  );
  OBUF   alu_a_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[25])
  );
  OBUF   alu_a_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[24])
  );
  OBUF   alu_a_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[23])
  );
  OBUF   alu_a_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[22])
  );
  OBUF   alu_a_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[21])
  );
  OBUF   alu_a_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[20])
  );
  OBUF   alu_a_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[19])
  );
  OBUF   alu_a_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[18])
  );
  OBUF   alu_a_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[17])
  );
  OBUF   alu_a_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[16])
  );
  OBUF   alu_a_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[15])
  );
  OBUF   alu_a_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[14])
  );
  OBUF   alu_a_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[13])
  );
  OBUF   alu_a_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[12])
  );
  OBUF   alu_a_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[11])
  );
  OBUF   alu_a_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[10])
  );
  OBUF   alu_a_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[9])
  );
  OBUF   alu_a_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[8])
  );
  OBUF   alu_a_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[7])
  );
  OBUF   alu_a_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[6])
  );
  OBUF   alu_a_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[5])
  );
  OBUF   alu_a_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[4])
  );
  OBUF   alu_a_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[3])
  );
  OBUF   alu_a_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[2])
  );
  OBUF   alu_a_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_a[1])
  );
  OBUF   alu_a_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(alu_a[0])
  );
  OBUF   alu_b_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[31])
  );
  OBUF   alu_b_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[30])
  );
  OBUF   alu_b_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[29])
  );
  OBUF   alu_b_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[28])
  );
  OBUF   alu_b_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[27])
  );
  OBUF   alu_b_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[26])
  );
  OBUF   alu_b_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[25])
  );
  OBUF   alu_b_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[24])
  );
  OBUF   alu_b_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[23])
  );
  OBUF   alu_b_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[22])
  );
  OBUF   alu_b_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[21])
  );
  OBUF   alu_b_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[20])
  );
  OBUF   alu_b_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[19])
  );
  OBUF   alu_b_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[18])
  );
  OBUF   alu_b_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[17])
  );
  OBUF   alu_b_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[16])
  );
  OBUF   alu_b_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[15])
  );
  OBUF   alu_b_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[14])
  );
  OBUF   alu_b_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[13])
  );
  OBUF   alu_b_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[12])
  );
  OBUF   alu_b_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[11])
  );
  OBUF   alu_b_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[10])
  );
  OBUF   alu_b_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[9])
  );
  OBUF   alu_b_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[8])
  );
  OBUF   alu_b_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[7])
  );
  OBUF   alu_b_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[6])
  );
  OBUF   alu_b_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[5])
  );
  OBUF   alu_b_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[4])
  );
  OBUF   alu_b_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[3])
  );
  OBUF   alu_b_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[2])
  );
  OBUF   alu_b_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_b[1])
  );
  OBUF   alu_b_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(alu_b[0])
  );
  OBUF   alu_out_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[31])
  );
  OBUF   alu_out_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[30])
  );
  OBUF   alu_out_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[29])
  );
  OBUF   alu_out_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[28])
  );
  OBUF   alu_out_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[27])
  );
  OBUF   alu_out_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[26])
  );
  OBUF   alu_out_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[25])
  );
  OBUF   alu_out_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[24])
  );
  OBUF   alu_out_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[23])
  );
  OBUF   alu_out_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[22])
  );
  OBUF   alu_out_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[21])
  );
  OBUF   alu_out_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[20])
  );
  OBUF   alu_out_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[19])
  );
  OBUF   alu_out_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[18])
  );
  OBUF   alu_out_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[17])
  );
  OBUF   alu_out_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[16])
  );
  OBUF   alu_out_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[15])
  );
  OBUF   alu_out_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[14])
  );
  OBUF   alu_out_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[13])
  );
  OBUF   alu_out_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[12])
  );
  OBUF   alu_out_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[11])
  );
  OBUF   alu_out_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[10])
  );
  OBUF   alu_out_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[9])
  );
  OBUF   alu_out_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[8])
  );
  OBUF   alu_out_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[7])
  );
  OBUF   alu_out_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[6])
  );
  OBUF   alu_out_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[5])
  );
  OBUF   alu_out_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[4])
  );
  OBUF   alu_out_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[3])
  );
  OBUF   alu_out_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[2])
  );
  OBUF   alu_out_1_OBUF (
    .I(\ALURESULT/alu_out [1]),
    .O(alu_out[1])
  );
  OBUF   alu_out_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(alu_out[0])
  );
  OBUF   r1_dout_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[31])
  );
  OBUF   r1_dout_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[30])
  );
  OBUF   r1_dout_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[29])
  );
  OBUF   r1_dout_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[28])
  );
  OBUF   r1_dout_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[27])
  );
  OBUF   r1_dout_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[26])
  );
  OBUF   r1_dout_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[25])
  );
  OBUF   r1_dout_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[24])
  );
  OBUF   r1_dout_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[23])
  );
  OBUF   r1_dout_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[22])
  );
  OBUF   r1_dout_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[21])
  );
  OBUF   r1_dout_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[20])
  );
  OBUF   r1_dout_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[19])
  );
  OBUF   r1_dout_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[18])
  );
  OBUF   r1_dout_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[17])
  );
  OBUF   r1_dout_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[16])
  );
  OBUF   r1_dout_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[15])
  );
  OBUF   r1_dout_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[14])
  );
  OBUF   r1_dout_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[13])
  );
  OBUF   r1_dout_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[12])
  );
  OBUF   r1_dout_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[11])
  );
  OBUF   r1_dout_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[10])
  );
  OBUF   r1_dout_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[9])
  );
  OBUF   r1_dout_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[8])
  );
  OBUF   r1_dout_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[7])
  );
  OBUF   r1_dout_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[6])
  );
  OBUF   r1_dout_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[5])
  );
  OBUF   r1_dout_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[4])
  );
  OBUF   r1_dout_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[3])
  );
  OBUF   r1_dout_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[2])
  );
  OBUF   r1_dout_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_dout[1])
  );
  OBUF   r1_dout_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(r1_dout[0])
  );
  OBUF   mem_data_31_OBUF (
    .I(\InstrData/data [31]),
    .O(mem_data[31])
  );
  OBUF   mem_data_30_OBUF (
    .I(\InstrData/data [30]),
    .O(mem_data[30])
  );
  OBUF   mem_data_29_OBUF (
    .I(\InstrData/data [29]),
    .O(mem_data[29])
  );
  OBUF   mem_data_28_OBUF (
    .I(\InstrData/data [28]),
    .O(mem_data[28])
  );
  OBUF   mem_data_27_OBUF (
    .I(\InstrData/data [27]),
    .O(mem_data[27])
  );
  OBUF   mem_data_26_OBUF (
    .I(\InstrData/data [26]),
    .O(mem_data[26])
  );
  OBUF   mem_data_25_OBUF (
    .I(\InstrData/data [25]),
    .O(mem_data[25])
  );
  OBUF   mem_data_24_OBUF (
    .I(\InstrData/data [24]),
    .O(mem_data[24])
  );
  OBUF   mem_data_23_OBUF (
    .I(\InstrData/data [23]),
    .O(mem_data[23])
  );
  OBUF   mem_data_22_OBUF (
    .I(\InstrData/data [22]),
    .O(mem_data[22])
  );
  OBUF   mem_data_21_OBUF (
    .I(\InstrData/data [21]),
    .O(mem_data[21])
  );
  OBUF   mem_data_20_OBUF (
    .I(\InstrData/data [20]),
    .O(mem_data[20])
  );
  OBUF   mem_data_19_OBUF (
    .I(\InstrData/data [19]),
    .O(mem_data[19])
  );
  OBUF   mem_data_18_OBUF (
    .I(\InstrData/data [18]),
    .O(mem_data[18])
  );
  OBUF   mem_data_17_OBUF (
    .I(\InstrData/data [17]),
    .O(mem_data[17])
  );
  OBUF   mem_data_16_OBUF (
    .I(\InstrData/data [16]),
    .O(mem_data[16])
  );
  OBUF   mem_data_15_OBUF (
    .I(\InstrData/data [15]),
    .O(mem_data[15])
  );
  OBUF   mem_data_14_OBUF (
    .I(\InstrData/data [14]),
    .O(mem_data[14])
  );
  OBUF   mem_data_13_OBUF (
    .I(\InstrData/data [13]),
    .O(mem_data[13])
  );
  OBUF   mem_data_12_OBUF (
    .I(\InstrData/data [12]),
    .O(mem_data[12])
  );
  OBUF   mem_data_11_OBUF (
    .I(\InstrData/data [11]),
    .O(mem_data[11])
  );
  OBUF   mem_data_10_OBUF (
    .I(\InstrData/data [10]),
    .O(mem_data[10])
  );
  OBUF   mem_data_9_OBUF (
    .I(\InstrData/data [9]),
    .O(mem_data[9])
  );
  OBUF   mem_data_8_OBUF (
    .I(\InstrData/data [8]),
    .O(mem_data[8])
  );
  OBUF   mem_data_7_OBUF (
    .I(\InstrData/data [7]),
    .O(mem_data[7])
  );
  OBUF   mem_data_6_OBUF (
    .I(\InstrData/data [6]),
    .O(mem_data[6])
  );
  OBUF   mem_data_5_OBUF (
    .I(\InstrData/data [5]),
    .O(mem_data[5])
  );
  OBUF   mem_data_4_OBUF (
    .I(\InstrData/data [4]),
    .O(mem_data[4])
  );
  OBUF   mem_data_3_OBUF (
    .I(\InstrData/data [3]),
    .O(mem_data[3])
  );
  OBUF   mem_data_2_OBUF (
    .I(\InstrData/data [2]),
    .O(mem_data[2])
  );
  OBUF   mem_data_1_OBUF (
    .I(\InstrData/data [1]),
    .O(mem_data[1])
  );
  OBUF   mem_data_0_OBUF (
    .I(\InstrData/data [0]),
    .O(mem_data[0])
  );
  OBUF   bubblePri_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(bubblePri[2])
  );
  OBUF   bubblePri_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(bubblePri[1])
  );
  OBUF   bubblePri_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(bubblePri[0])
  );
  OBUF   Jump_addr_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[25])
  );
  OBUF   Jump_addr_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[24])
  );
  OBUF   Jump_addr_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[23])
  );
  OBUF   Jump_addr_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[22])
  );
  OBUF   Jump_addr_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[21])
  );
  OBUF   Jump_addr_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[20])
  );
  OBUF   Jump_addr_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[19])
  );
  OBUF   Jump_addr_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[18])
  );
  OBUF   Jump_addr_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[17])
  );
  OBUF   Jump_addr_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[16])
  );
  OBUF   Jump_addr_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[15])
  );
  OBUF   Jump_addr_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[14])
  );
  OBUF   Jump_addr_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[13])
  );
  OBUF   Jump_addr_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[12])
  );
  OBUF   Jump_addr_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[11])
  );
  OBUF   Jump_addr_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[10])
  );
  OBUF   Jump_addr_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[9])
  );
  OBUF   Jump_addr_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[8])
  );
  OBUF   Jump_addr_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[7])
  );
  OBUF   Jump_addr_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[6])
  );
  OBUF   Jump_addr_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[5])
  );
  OBUF   Jump_addr_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[4])
  );
  OBUF   Jump_addr_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[3])
  );
  OBUF   Jump_addr_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[2])
  );
  OBUF   Jump_addr_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[1])
  );
  OBUF   Jump_addr_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Jump_addr[0])
  );
  OBUF   r1_data_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[31])
  );
  OBUF   r1_data_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[30])
  );
  OBUF   r1_data_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[29])
  );
  OBUF   r1_data_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[28])
  );
  OBUF   r1_data_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[27])
  );
  OBUF   r1_data_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[26])
  );
  OBUF   r1_data_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[25])
  );
  OBUF   r1_data_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[24])
  );
  OBUF   r1_data_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[23])
  );
  OBUF   r1_data_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[22])
  );
  OBUF   r1_data_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[21])
  );
  OBUF   r1_data_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[20])
  );
  OBUF   r1_data_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[19])
  );
  OBUF   r1_data_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[18])
  );
  OBUF   r1_data_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[17])
  );
  OBUF   r1_data_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[16])
  );
  OBUF   r1_data_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[15])
  );
  OBUF   r1_data_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[14])
  );
  OBUF   r1_data_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[13])
  );
  OBUF   r1_data_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[12])
  );
  OBUF   r1_data_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[11])
  );
  OBUF   r1_data_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[10])
  );
  OBUF   r1_data_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[9])
  );
  OBUF   r1_data_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[8])
  );
  OBUF   r1_data_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[7])
  );
  OBUF   r1_data_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[6])
  );
  OBUF   r1_data_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[5])
  );
  OBUF   r1_data_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[4])
  );
  OBUF   r1_data_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[3])
  );
  OBUF   r1_data_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[2])
  );
  OBUF   r1_data_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_data[1])
  );
  OBUF   r1_data_0_OBUF (
    .I(\RegFile/R_0_0_681 ),
    .O(r1_data[0])
  );
  OBUF   reg_datain_31_OBUF (
    .I(reg_datain_31_OBUF_1149),
    .O(reg_datain[31])
  );
  OBUF   reg_datain_30_OBUF (
    .I(reg_datain_30_OBUF_1148),
    .O(reg_datain[30])
  );
  OBUF   reg_datain_29_OBUF (
    .I(reg_datain_29_OBUF_1146),
    .O(reg_datain[29])
  );
  OBUF   reg_datain_28_OBUF (
    .I(reg_datain_28_OBUF_1145),
    .O(reg_datain[28])
  );
  OBUF   reg_datain_27_OBUF (
    .I(reg_datain_27_OBUF_1144),
    .O(reg_datain[27])
  );
  OBUF   reg_datain_26_OBUF (
    .I(reg_datain_26_OBUF_1143),
    .O(reg_datain[26])
  );
  OBUF   reg_datain_25_OBUF (
    .I(reg_datain_25_OBUF_1142),
    .O(reg_datain[25])
  );
  OBUF   reg_datain_24_OBUF (
    .I(reg_datain_24_OBUF_1141),
    .O(reg_datain[24])
  );
  OBUF   reg_datain_23_OBUF (
    .I(reg_datain_23_OBUF_1140),
    .O(reg_datain[23])
  );
  OBUF   reg_datain_22_OBUF (
    .I(reg_datain_22_OBUF_1139),
    .O(reg_datain[22])
  );
  OBUF   reg_datain_21_OBUF (
    .I(reg_datain_21_OBUF_1138),
    .O(reg_datain[21])
  );
  OBUF   reg_datain_20_OBUF (
    .I(reg_datain_20_OBUF_1137),
    .O(reg_datain[20])
  );
  OBUF   reg_datain_19_OBUF (
    .I(reg_datain_19_OBUF_1135),
    .O(reg_datain[19])
  );
  OBUF   reg_datain_18_OBUF (
    .I(reg_datain_18_OBUF_1134),
    .O(reg_datain[18])
  );
  OBUF   reg_datain_17_OBUF (
    .I(reg_datain_17_OBUF_1133),
    .O(reg_datain[17])
  );
  OBUF   reg_datain_16_OBUF (
    .I(reg_datain_16_OBUF_1132),
    .O(reg_datain[16])
  );
  OBUF   reg_datain_15_OBUF (
    .I(reg_datain_15_OBUF_1131),
    .O(reg_datain[15])
  );
  OBUF   reg_datain_14_OBUF (
    .I(reg_datain_14_OBUF_1130),
    .O(reg_datain[14])
  );
  OBUF   reg_datain_13_OBUF (
    .I(reg_datain_13_OBUF_1129),
    .O(reg_datain[13])
  );
  OBUF   reg_datain_12_OBUF (
    .I(reg_datain_12_OBUF_1128),
    .O(reg_datain[12])
  );
  OBUF   reg_datain_11_OBUF (
    .I(reg_datain_11_OBUF_1127),
    .O(reg_datain[11])
  );
  OBUF   reg_datain_10_OBUF (
    .I(reg_datain_10_OBUF_1126),
    .O(reg_datain[10])
  );
  OBUF   reg_datain_9_OBUF (
    .I(reg_datain_9_OBUF_1156),
    .O(reg_datain[9])
  );
  OBUF   reg_datain_8_OBUF (
    .I(reg_datain_8_OBUF_1155),
    .O(reg_datain[8])
  );
  OBUF   reg_datain_7_OBUF (
    .I(reg_datain_7_OBUF_1154),
    .O(reg_datain[7])
  );
  OBUF   reg_datain_6_OBUF (
    .I(reg_datain_6_OBUF_1153),
    .O(reg_datain[6])
  );
  OBUF   reg_datain_5_OBUF (
    .I(reg_datain_5_OBUF_1152),
    .O(reg_datain[5])
  );
  OBUF   reg_datain_4_OBUF (
    .I(reg_datain_4_OBUF_1151),
    .O(reg_datain[4])
  );
  OBUF   reg_datain_3_OBUF (
    .I(reg_datain_3_OBUF_1150),
    .O(reg_datain[3])
  );
  OBUF   reg_datain_2_OBUF (
    .I(reg_datain_2_OBUF_1147),
    .O(reg_datain[2])
  );
  OBUF   reg_datain_1_OBUF (
    .I(reg_datain_1_OBUF_1136),
    .O(reg_datain[1])
  );
  OBUF   reg_datain_0_OBUF (
    .I(reg_datain_0_OBUF_1125),
    .O(reg_datain[0])
  );
  OBUF   Mem_addr_31_OBUF (
    .I(\PCReg/PC [31]),
    .O(Mem_addr[31])
  );
  OBUF   Mem_addr_30_OBUF (
    .I(\PCReg/PC [30]),
    .O(Mem_addr[30])
  );
  OBUF   Mem_addr_29_OBUF (
    .I(\PCReg/PC [29]),
    .O(Mem_addr[29])
  );
  OBUF   Mem_addr_28_OBUF (
    .I(\PCReg/PC [28]),
    .O(Mem_addr[28])
  );
  OBUF   Mem_addr_27_OBUF (
    .I(\PCReg/PC [27]),
    .O(Mem_addr[27])
  );
  OBUF   Mem_addr_26_OBUF (
    .I(\PCReg/PC [26]),
    .O(Mem_addr[26])
  );
  OBUF   Mem_addr_25_OBUF (
    .I(\PCReg/PC [25]),
    .O(Mem_addr[25])
  );
  OBUF   Mem_addr_24_OBUF (
    .I(\PCReg/PC [24]),
    .O(Mem_addr[24])
  );
  OBUF   Mem_addr_23_OBUF (
    .I(\PCReg/PC [23]),
    .O(Mem_addr[23])
  );
  OBUF   Mem_addr_22_OBUF (
    .I(\PCReg/PC [22]),
    .O(Mem_addr[22])
  );
  OBUF   Mem_addr_21_OBUF (
    .I(\PCReg/PC [21]),
    .O(Mem_addr[21])
  );
  OBUF   Mem_addr_20_OBUF (
    .I(\PCReg/PC [20]),
    .O(Mem_addr[20])
  );
  OBUF   Mem_addr_19_OBUF (
    .I(\PCReg/PC [19]),
    .O(Mem_addr[19])
  );
  OBUF   Mem_addr_18_OBUF (
    .I(\PCReg/PC [18]),
    .O(Mem_addr[18])
  );
  OBUF   Mem_addr_17_OBUF (
    .I(\PCReg/PC [17]),
    .O(Mem_addr[17])
  );
  OBUF   Mem_addr_16_OBUF (
    .I(\PCReg/PC [16]),
    .O(Mem_addr[16])
  );
  OBUF   Mem_addr_15_OBUF (
    .I(\PCReg/PC [15]),
    .O(Mem_addr[15])
  );
  OBUF   Mem_addr_14_OBUF (
    .I(\PCReg/PC [14]),
    .O(Mem_addr[14])
  );
  OBUF   Mem_addr_13_OBUF (
    .I(\PCReg/PC [13]),
    .O(Mem_addr[13])
  );
  OBUF   Mem_addr_12_OBUF (
    .I(\PCReg/PC [12]),
    .O(Mem_addr[12])
  );
  OBUF   Mem_addr_11_OBUF (
    .I(\PCReg/PC [11]),
    .O(Mem_addr[11])
  );
  OBUF   Mem_addr_10_OBUF (
    .I(\PCReg/PC [10]),
    .O(Mem_addr[10])
  );
  OBUF   Mem_addr_9_OBUF (
    .I(\PCReg/PC [9]),
    .O(Mem_addr[9])
  );
  OBUF   Mem_addr_8_OBUF (
    .I(\PCReg/PC [8]),
    .O(Mem_addr[8])
  );
  OBUF   Mem_addr_7_OBUF (
    .I(\PCReg/PC [7]),
    .O(Mem_addr[7])
  );
  OBUF   Mem_addr_6_OBUF (
    .I(\PCReg/PC [6]),
    .O(Mem_addr[6])
  );
  OBUF   Mem_addr_5_OBUF (
    .I(\PCReg/PC [5]),
    .O(Mem_addr[5])
  );
  OBUF   Mem_addr_4_OBUF (
    .I(\PCReg/PC [4]),
    .O(Mem_addr[4])
  );
  OBUF   Mem_addr_3_OBUF (
    .I(\PCReg/PC [3]),
    .O(Mem_addr[3])
  );
  OBUF   Mem_addr_2_OBUF (
    .I(\PCReg/PC [2]),
    .O(Mem_addr[2])
  );
  OBUF   Mem_addr_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Mem_addr[1])
  );
  OBUF   Mem_addr_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(Mem_addr[0])
  );
  OBUF   r1_addr_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_addr[4])
  );
  OBUF   r1_addr_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_addr[3])
  );
  OBUF   r1_addr_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_addr[2])
  );
  OBUF   r1_addr_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_addr[1])
  );
  OBUF   r1_addr_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r1_addr[0])
  );
  OBUF   r2_dout_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[31])
  );
  OBUF   r2_dout_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[30])
  );
  OBUF   r2_dout_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[29])
  );
  OBUF   r2_dout_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[28])
  );
  OBUF   r2_dout_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[27])
  );
  OBUF   r2_dout_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[26])
  );
  OBUF   r2_dout_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[25])
  );
  OBUF   r2_dout_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[24])
  );
  OBUF   r2_dout_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[23])
  );
  OBUF   r2_dout_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[22])
  );
  OBUF   r2_dout_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[21])
  );
  OBUF   r2_dout_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[20])
  );
  OBUF   r2_dout_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[19])
  );
  OBUF   r2_dout_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[18])
  );
  OBUF   r2_dout_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[17])
  );
  OBUF   r2_dout_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[16])
  );
  OBUF   r2_dout_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[15])
  );
  OBUF   r2_dout_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[14])
  );
  OBUF   r2_dout_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[13])
  );
  OBUF   r2_dout_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[12])
  );
  OBUF   r2_dout_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[11])
  );
  OBUF   r2_dout_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[10])
  );
  OBUF   r2_dout_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[9])
  );
  OBUF   r2_dout_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[8])
  );
  OBUF   r2_dout_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[7])
  );
  OBUF   r2_dout_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[6])
  );
  OBUF   r2_dout_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[5])
  );
  OBUF   r2_dout_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[4])
  );
  OBUF   r2_dout_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[3])
  );
  OBUF   r2_dout_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[2])
  );
  OBUF   r2_dout_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_dout[1])
  );
  OBUF   r2_dout_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(r2_dout[0])
  );
  OBUF   ALU_SrcB_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ALU_SrcB[1])
  );
  OBUF   ALU_SrcB_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(ALU_SrcB[0])
  );
  OBUF   r2_data_31_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[31])
  );
  OBUF   r2_data_30_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[30])
  );
  OBUF   r2_data_29_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[29])
  );
  OBUF   r2_data_28_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[28])
  );
  OBUF   r2_data_27_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[27])
  );
  OBUF   r2_data_26_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[26])
  );
  OBUF   r2_data_25_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[25])
  );
  OBUF   r2_data_24_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[24])
  );
  OBUF   r2_data_23_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[23])
  );
  OBUF   r2_data_22_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[22])
  );
  OBUF   r2_data_21_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[21])
  );
  OBUF   r2_data_20_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[20])
  );
  OBUF   r2_data_19_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[19])
  );
  OBUF   r2_data_18_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[18])
  );
  OBUF   r2_data_17_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[17])
  );
  OBUF   r2_data_16_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[16])
  );
  OBUF   r2_data_15_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[15])
  );
  OBUF   r2_data_14_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[14])
  );
  OBUF   r2_data_13_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[13])
  );
  OBUF   r2_data_12_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[12])
  );
  OBUF   r2_data_11_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[11])
  );
  OBUF   r2_data_10_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[10])
  );
  OBUF   r2_data_9_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[9])
  );
  OBUF   r2_data_8_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[8])
  );
  OBUF   r2_data_7_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[7])
  );
  OBUF   r2_data_6_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[6])
  );
  OBUF   r2_data_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[5])
  );
  OBUF   r2_data_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[4])
  );
  OBUF   r2_data_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[3])
  );
  OBUF   r2_data_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[2])
  );
  OBUF   r2_data_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_data[1])
  );
  OBUF   r2_data_0_OBUF (
    .I(\RegFile/R_0_0_681 ),
    .O(r2_data[0])
  );
  OBUF   flushPri_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(flushPri[2])
  );
  OBUF   flushPri_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(flushPri[1])
  );
  OBUF   flushPri_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(flushPri[0])
  );
  OBUF   M_doutb_31_OBUF (
    .I(M_doutb_31_OBUF_381),
    .O(M_doutb[31])
  );
  OBUF   M_doutb_30_OBUF (
    .I(M_doutb_30_OBUF_380),
    .O(M_doutb[30])
  );
  OBUF   M_doutb_29_OBUF (
    .I(M_doutb_29_OBUF_378),
    .O(M_doutb[29])
  );
  OBUF   M_doutb_28_OBUF (
    .I(M_doutb_28_OBUF_377),
    .O(M_doutb[28])
  );
  OBUF   M_doutb_27_OBUF (
    .I(M_doutb_27_OBUF_376),
    .O(M_doutb[27])
  );
  OBUF   M_doutb_26_OBUF (
    .I(M_doutb_26_OBUF_375),
    .O(M_doutb[26])
  );
  OBUF   M_doutb_25_OBUF (
    .I(M_doutb_25_OBUF_374),
    .O(M_doutb[25])
  );
  OBUF   M_doutb_24_OBUF (
    .I(M_doutb_24_OBUF_373),
    .O(M_doutb[24])
  );
  OBUF   M_doutb_23_OBUF (
    .I(M_doutb_23_OBUF_372),
    .O(M_doutb[23])
  );
  OBUF   M_doutb_22_OBUF (
    .I(M_doutb_22_OBUF_371),
    .O(M_doutb[22])
  );
  OBUF   M_doutb_21_OBUF (
    .I(M_doutb_21_OBUF_370),
    .O(M_doutb[21])
  );
  OBUF   M_doutb_20_OBUF (
    .I(M_doutb_20_OBUF_369),
    .O(M_doutb[20])
  );
  OBUF   M_doutb_19_OBUF (
    .I(M_doutb_19_OBUF_367),
    .O(M_doutb[19])
  );
  OBUF   M_doutb_18_OBUF (
    .I(M_doutb_18_OBUF_366),
    .O(M_doutb[18])
  );
  OBUF   M_doutb_17_OBUF (
    .I(M_doutb_17_OBUF_365),
    .O(M_doutb[17])
  );
  OBUF   M_doutb_16_OBUF (
    .I(M_doutb_16_OBUF_364),
    .O(M_doutb[16])
  );
  OBUF   M_doutb_15_OBUF (
    .I(M_doutb_15_OBUF_363),
    .O(M_doutb[15])
  );
  OBUF   M_doutb_14_OBUF (
    .I(M_doutb_14_OBUF_362),
    .O(M_doutb[14])
  );
  OBUF   M_doutb_13_OBUF (
    .I(M_doutb_13_OBUF_361),
    .O(M_doutb[13])
  );
  OBUF   M_doutb_12_OBUF (
    .I(M_doutb_12_OBUF_360),
    .O(M_doutb[12])
  );
  OBUF   M_doutb_11_OBUF (
    .I(M_doutb_11_OBUF_359),
    .O(M_doutb[11])
  );
  OBUF   M_doutb_10_OBUF (
    .I(M_doutb_10_OBUF_358),
    .O(M_doutb[10])
  );
  OBUF   M_doutb_9_OBUF (
    .I(M_doutb_9_OBUF_388),
    .O(M_doutb[9])
  );
  OBUF   M_doutb_8_OBUF (
    .I(M_doutb_8_OBUF_387),
    .O(M_doutb[8])
  );
  OBUF   M_doutb_7_OBUF (
    .I(M_doutb_7_OBUF_386),
    .O(M_doutb[7])
  );
  OBUF   M_doutb_6_OBUF (
    .I(M_doutb_6_OBUF_385),
    .O(M_doutb[6])
  );
  OBUF   M_doutb_5_OBUF (
    .I(M_doutb_5_OBUF_384),
    .O(M_doutb[5])
  );
  OBUF   M_doutb_4_OBUF (
    .I(M_doutb_4_OBUF_383),
    .O(M_doutb[4])
  );
  OBUF   M_doutb_3_OBUF (
    .I(M_doutb_3_OBUF_382),
    .O(M_doutb[3])
  );
  OBUF   M_doutb_2_OBUF (
    .I(M_doutb_2_OBUF_379),
    .O(M_doutb[2])
  );
  OBUF   M_doutb_1_OBUF (
    .I(M_doutb_1_OBUF_368),
    .O(M_doutb[1])
  );
  OBUF   M_doutb_0_OBUF (
    .I(M_doutb_0_OBUF_357),
    .O(M_doutb[0])
  );
  OBUF   r2_addr_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_addr[4])
  );
  OBUF   r2_addr_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_addr[3])
  );
  OBUF   r2_addr_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_addr[2])
  );
  OBUF   r2_addr_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_addr[1])
  );
  OBUF   r2_addr_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(r2_addr[0])
  );
  OBUF   opcode_5_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(opcode[5])
  );
  OBUF   opcode_4_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(opcode[4])
  );
  OBUF   opcode_3_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(opcode[3])
  );
  OBUF   opcode_2_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(opcode[2])
  );
  OBUF   opcode_1_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(opcode[1])
  );
  OBUF   opcode_0_OBUF (
    .I(\ALURESULT/alu_out [0]),
    .O(opcode[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt  (
    .I0(\PCReg/PC [3]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_631 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt  (
    .I0(\PCReg/PC [4]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_633 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt  (
    .I0(\PCReg/PC [5]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_635 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt  (
    .I0(\PCReg/PC [6]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_637 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt  (
    .I0(\PCReg/PC [7]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_639 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt  (
    .I0(\PCReg/PC [8]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_641 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt  (
    .I0(\PCReg/PC [9]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_643 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt  (
    .I0(\PCReg/PC [10]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_588 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt  (
    .I0(\PCReg/PC [11]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_590 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt  (
    .I0(\PCReg/PC [12]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_592 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt  (
    .I0(\PCReg/PC [13]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_594 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt  (
    .I0(\PCReg/PC [14]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_596 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt  (
    .I0(\PCReg/PC [15]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_598 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt  (
    .I0(\PCReg/PC [16]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_600 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt  (
    .I0(\PCReg/PC [17]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_602 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt  (
    .I0(\PCReg/PC [18]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_604 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt  (
    .I0(\PCReg/PC [19]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_606 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt  (
    .I0(\PCReg/PC [20]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_608 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt  (
    .I0(\PCReg/PC [21]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_610 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt  (
    .I0(\PCReg/PC [22]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_612 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt  (
    .I0(\PCReg/PC [23]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_614 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt  (
    .I0(\PCReg/PC [24]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_616 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt  (
    .I0(\PCReg/PC [25]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_618 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt  (
    .I0(\PCReg/PC [26]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_620 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt  (
    .I0(\PCReg/PC [27]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_622 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt  (
    .I0(\PCReg/PC [28]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_624 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt  (
    .I0(\PCReg/PC [29]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_626 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt  (
    .I0(\PCReg/PC [30]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_629 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt  (
    .I0(\PCReg/PC [31]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt_645 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/ackstate<0>36  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(N104),
    .I2(\CONTROL/ack1 ),
    .I3(\CONTROL/ack2_239 ),
    .O(\CONTROL/ack3 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/ackstate<0>210  (
    .I0(N108),
    .I1(\CONTROL/N195 ),
    .I2(\CONTROL/ack3 ),
    .I3(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/N77 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/RegWrite18  (
    .I0(\CONTROL/ack5 ),
    .I1(\CONTROL/FSM5/RegWrite_173 ),
    .I2(\CONTROL/RegWrite111 ),
    .I3(N112),
    .O(\RegFile/R_0_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/ackstate<0>210_SW0  (
    .I0(\CONTROL/FSM4/MemtoReg_128 ),
    .I1(\CONTROL/FSM4/state [4]),
    .O(N114)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \CONTROL/ack4_SW1  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(N211),
    .O(N116)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/ackstate<0>12  (
    .I0(\CONTROL/ack3 ),
    .I1(\CONTROL/N195 ),
    .I2(\CONTROL/RegWrite238_234 ),
    .I3(N116),
    .O(\CONTROL/N66 )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \RegDatainMux/reg_datain<0>1  (
    .I0(\CONTROL/MemtoReg8_217 ),
    .I1(M_doutb_0_OBUF_357),
    .I2(\CONTROL/MemtoReg111 ),
    .I3(N120),
    .O(reg_datain_0_OBUF_1125)
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \CONTROL/RegWrite5_SW0  (
    .I0(\CONTROL/FSM3/RegWrite_92 ),
    .I1(\CONTROL/RegWrite31 ),
    .I2(\CONTROL/ack3 ),
    .O(N112)
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \CONTROL/ack4_SW3  (
    .I0(\CONTROL/FSM4/fromWB_136 ),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(N108),
    .I3(N212),
    .O(N122)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/ackstate<0>210_SW1  (
    .I0(\CONTROL/FSM4/RegWrite_132 ),
    .I1(\CONTROL/FSM4/state [4]),
    .O(N126)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/ack3_SW1  (
    .I0(\CONTROL/FSM3/fromWB_96 ),
    .I1(\CONTROL/FSM3/state [4]),
    .O(N128)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \CONTROL/ackstate<0>36_SW0  (
    .I0(\CONTROL/FSM3/MemtoReg_88 ),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(N104),
    .I3(\CONTROL/ack1 ),
    .O(N130)
  );
  LUT4 #(
    .INIT ( 16'h0A3A ))
  \RegDatainMux/reg_realdatain<0>13  (
    .I0(\CONTROL/FSM3/WB_value [0]),
    .I1(N135),
    .I2(N214),
    .I3(\CONTROL/ack3 ),
    .O(\RegDatainMux/reg_realdatain<0>13_675 )
  );
  LUT4 #(
    .INIT ( 16'hEEFE ))
  \CONTROL/MemtoReg22  (
    .I0(\CONTROL/MemtoReg111 ),
    .I1(\CONTROL/MemtoReg8_217 ),
    .I2(N137),
    .I3(\CONTROL/ack3 ),
    .O(MemtoReg_OBUF_423)
  );
  LUT4 #(
    .INIT ( 16'hDFCF ))
  \CONTROL/ack4_SW5  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(N108),
    .I3(N209),
    .O(N142)
  );
  LUT4 #(
    .INIT ( 16'h000E ))
  \CONTROL/ack4  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(\CONTROL/ack1 ),
    .I3(N142),
    .O(\CONTROL/ack4_241 )
  );
  LUT4 #(
    .INIT ( 16'h000E ))
  \CONTROL/MemtoReg11  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(\CONTROL/ack1 ),
    .I3(N144),
    .O(\CONTROL/MemtoReg111 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/RegWrite3  (
    .I0(\CONTROL/ack1 ),
    .I1(\CONTROL/FSM1/RegWrite_24 ),
    .I2(\CONTROL/FSM2/RegWrite_51 ),
    .I3(\CONTROL/ack2_239 ),
    .O(\CONTROL/RegWrite31 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/RegWrite238  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(N216),
    .O(\CONTROL/RegWrite238_234 )
  );
  LUT4 #(
    .INIT ( 16'hFFCA ))
  \CONTROL/MemtoReg8  (
    .I0(\CONTROL/FSM2/MemtoReg_47 ),
    .I1(N130),
    .I2(N148),
    .I3(\CONTROL/MemtoReg11_214 ),
    .O(\CONTROL/MemtoReg8_217 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/ackstate<0>12_SW0  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(N146),
    .I2(\CONTROL/FSM5/MemtoReg_169 ),
    .O(N124)
  );
  LUT4 #(
    .INIT ( 16'hFFF4 ))
  \CONTROL/RegWrite282_SW1  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(N108),
    .I2(\CONTROL/ack1 ),
    .I3(N152),
    .O(N154)
  );
  MUXF5   \RegDatainMux/reg_realdatain<0>94  (
    .I0(N156),
    .I1(N157),
    .S(fromWB),
    .O(reg_realdatain)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \RegDatainMux/reg_realdatain<0>94_F  (
    .I0(M_doutb_0_OBUF_357),
    .I1(\ALURESULT/alu_out [0]),
    .I2(\CONTROL/MemtoReg22_216 ),
    .O(N156)
  );
  LUT4 #(
    .INIT ( 16'hEEEA ))
  \RegDatainMux/reg_realdatain<0>94_G  (
    .I0(\RegDatainMux/reg_realdatain<0>62_678 ),
    .I1(\RegDatainMux/reg_realdatain<0>44_677 ),
    .I2(\RegDatainMux/reg_realdatain<0>27_676 ),
    .I3(\RegDatainMux/reg_realdatain<0>13_675 ),
    .O(N157)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ackstate<0>10_SW0  (
    .I0(\CONTROL/ack2_239 ),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/ack1 ),
    .I3(\CONTROL/FSM1/state [0]),
    .O(N158)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/RegDst3  (
    .I0(\CONTROL/ack1 ),
    .I1(\CONTROL/FSM1/RegDst_22 ),
    .I2(\CONTROL/FSM2/RegDst_49 ),
    .I3(\CONTROL/ack2_239 ),
    .O(\CONTROL/RegDst31 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/RegDst22_SW0  (
    .I0(\CONTROL/N66 ),
    .I1(\CONTROL/FSM5/RegDst_171 ),
    .I2(\CONTROL/N77 ),
    .I3(\CONTROL/FSM4/RegDst_130 ),
    .O(N160)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/RegDst22  (
    .I0(\CONTROL/FSM3/RegDst_90 ),
    .I1(\CONTROL/ack3 ),
    .I2(\CONTROL/RegDst31 ),
    .I3(N160),
    .O(RegDst_OBUF_680)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \CONTROL/PC_En_Start_SW0  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(\CONTROL/ack1 ),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \CONTROL/ack4_SW4  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(N162),
    .I3(\CONTROL/ack1 ),
    .O(N135)
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \RegDatainMux/reg_realdatain<0>44  (
    .I0(\CONTROL/N30 ),
    .I1(\CONTROL/ack1 ),
    .I2(\CONTROL/FSM1/fromWB_26 ),
    .O(\RegDatainMux/reg_realdatain<0>44_677 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \RegDatainMux/reg_realdatain<0>62  (
    .I0(N213),
    .I1(\CONTROL/FSM2/WB_value [0]),
    .I2(\CONTROL/ack1 ),
    .I3(\CONTROL/FSM1/fromWB_26 ),
    .O(\RegDatainMux/reg_realdatain<0>62_678 )
  );
  LUT4 #(
    .INIT ( 16'hADEF ))
  \CONTROL/FSM4/next_state_mux0000<3>_SW0  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [0]),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'hADEF ))
  \CONTROL/FSM3/next_state_mux0000<3>_SW0  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [0]),
    .O(N35)
  );
  LUT4 #(
    .INIT ( 16'hADEF ))
  \CONTROL/FSM2/next_state_mux0000<3>_SW0  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [0]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'hAA20 ))
  \CONTROL/ackstate<0>37_SW0  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(N104),
    .I3(N154),
    .O(N170)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/FSM1/fromWB_not00011  (
    .I0(\CONTROL/FSM1/next_state [2]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [3]),
    .O(\CONTROL/FSM1/fromWB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h11F1 ))
  \CONTROL/FSM4/next_state_mux0000<1>74  (
    .I0(\CONTROL/ack4_241 ),
    .I1(\CONTROL/N3 ),
    .I2(N172),
    .I3(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h11F1 ))
  \CONTROL/FSM3/next_state_mux0000<1>74  (
    .I0(\CONTROL/ack3 ),
    .I1(\CONTROL/N4 ),
    .I2(N174),
    .I3(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \CONTROL/FSM2/next_state_mux0000<1>73  (
    .I0(\CONTROL/N5 ),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/ack1 ),
    .I3(N106),
    .O(\CONTROL/FSM2/next_state_mux0000<1>73_71 )
  );
  LUT4 #(
    .INIT ( 16'hF965 ))
  \CONTROL/FSM4/next_state_mux0000<2>93_SW0  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [2]),
    .O(N176)
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/FSM4/next_state_mux0000<2>93  (
    .I0(\CONTROL/ack4_241 ),
    .I1(\CONTROL/N3 ),
    .I2(N176),
    .I3(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF965 ))
  \CONTROL/FSM3/next_state_mux0000<2>93_SW0  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [2]),
    .O(N178)
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/FSM3/next_state_mux0000<2>93  (
    .I0(\CONTROL/ack3 ),
    .I1(\CONTROL/N4 ),
    .I2(N178),
    .I3(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h042C ))
  \CONTROL/FSM4/next_state_mux0000<1>74_SW0  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(\CONTROL/FSM4/state [0]),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/FSM4/state [3]),
    .O(N172)
  );
  LUT4 #(
    .INIT ( 16'h042C ))
  \CONTROL/FSM3/next_state_mux0000<1>74_SW0  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(N174)
  );
  LUT4 #(
    .INIT ( 16'h042C ))
  \CONTROL/FSM1/next_state_mux0000<1>  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/FSM1/state [3]),
    .O(\CONTROL/FSM1/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFD8F ))
  \CONTROL/FSM2/next_state_mux0000<1>58_SW0  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [3]),
    .I2(\CONTROL/FSM2/state [0]),
    .I3(\CONTROL/FSM2/state [1]),
    .O(N182)
  );
  LUT4 #(
    .INIT ( 16'h069C ))
  \CONTROL/FSM2/next_state_mux0000<2>93_SW0  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [2]),
    .O(N184)
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \CONTROL/FSM2/next_state_mux0000<2>93  (
    .I0(\CONTROL/FSM2/next_state_mux0000<1>73_71 ),
    .I1(N184),
    .I2(\CONTROL/FSM2/state [4]),
    .O(\CONTROL/FSM2/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h0B20 ))
  \CONTROL/FSM1/next_state_mux0000<3>  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [2]),
    .I3(\CONTROL/FSM1/state [3]),
    .O(\CONTROL/FSM1/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/ackstate<0>71  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/N66 ),
    .I2(N158),
    .I3(N188),
    .O(ackstate_0_OBUF_691)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \RegDatainMux/reg_realdatain<0>27_SW2  (
    .I0(N104),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(\CONTROL/FSM2/state [4]),
    .I3(N106),
    .O(N190)
  );
  LUT4 #(
    .INIT ( 16'h000B ))
  \RegDatainMux/reg_realdatain<0>27  (
    .I0(\CONTROL/ack1 ),
    .I1(N190),
    .I2(\CONTROL/ack4_241 ),
    .I3(N110),
    .O(\RegDatainMux/reg_realdatain<0>27_676 )
  );
  LUT4 #(
    .INIT ( 16'hA37B ))
  \CONTROL/FSM2/next_state_mux0000<4>_SW0  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/FSM2/state [2]),
    .I2(\CONTROL/FSM2/state [1]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(N192)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM2/next_state_mux0000<4>  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N192),
    .I2(\CONTROL/ack1 ),
    .O(\CONTROL/FSM2/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  \CONTROL/ackstate<0>37_SW1  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(\CONTROL/ack1 ),
    .I3(N142),
    .O(N194)
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \CONTROL/FSM2/next_state_mux0000<1>74  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N182),
    .I2(\CONTROL/FSM2/next_state_mux0000<1>73_71 ),
    .O(\CONTROL/FSM2/next_state_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE5 ))
  \CONTROL/FSM5/next_state_mux0000<1>1_SW0  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/ack5 ),
    .I2(\CONTROL/FSM5/state [4]),
    .O(N186)
  );
  LUT4 #(
    .INIT ( 16'hEEFE ))
  \CONTROL/MemtoReg22_1  (
    .I0(\CONTROL/MemtoReg111 ),
    .I1(\CONTROL/MemtoReg8_217 ),
    .I2(N215),
    .I3(\CONTROL/ack3 ),
    .O(\CONTROL/MemtoReg22_216 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_830)
  );
  INV   \PC_Generator/Madd_next_PC_addsub0000_lut<2>_INV_0  (
    .I(\PCReg/PC [2]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_lut [2])
  );
  INV   \reg_out/rst_n_inv1_INV_0  (
    .I(rst_n_IBUF_1160),
    .O(\ALURESULT/rst_n_inv )
  );
  INV   \CONTROL/Mcount_JmpSigEn_xor<0>11_INV_0  (
    .I(\CONTROL/JmpSigEn [0]),
    .O(\CONTROL/Result [0])
  );
  INV   \CONTROL/Mcount_BrSigEn_eqn_01_INV_0  (
    .I(\CONTROL/BrSigEn [0]),
    .O(\CONTROL/Mcount_BrSigEn_eqn_0 )
  );
  MUXF5   \CONTROL/FSM1/RegDst_mux0000  (
    .I0(N196),
    .I1(N197),
    .S(\CONTROL/FSM1/RegDst_22 ),
    .O(\CONTROL/FSM1/RegDst_mux0000_23 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM1/RegDst_mux0000_F  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [1]),
    .I3(\CONTROL/FSM1/next_state [0]),
    .O(N196)
  );
  LUT4 #(
    .INIT ( 16'hFEF7 ))
  \CONTROL/FSM1/RegDst_mux0000_G  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(N197)
  );
  MUXF5   \CONTROL/FSM1/MemtoReg_mux0000  (
    .I0(N198),
    .I1(N199),
    .S(\CONTROL/FSM1/MemtoReg_20 ),
    .O(\CONTROL/FSM1/MemtoReg_mux0000_21 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM1/MemtoReg_mux0000_F  (
    .I0(\CONTROL/FSM1/next_state [1]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [3]),
    .I3(\CONTROL/FSM1/next_state [0]),
    .O(N198)
  );
  LUT4 #(
    .INIT ( 16'hDFF7 ))
  \CONTROL/FSM1/MemtoReg_mux0000_G  (
    .I0(\CONTROL/FSM1/next_state [1]),
    .I1(\CONTROL/FSM1/next_state [3]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(N199)
  );
  MUXF5   \CONTROL/FSM1/RegWrite_mux0000  (
    .I0(N200),
    .I1(N201),
    .S(\CONTROL/FSM1/RegWrite_24 ),
    .O(\CONTROL/FSM1/RegWrite_mux0000_25 )
  );
  LUT4 #(
    .INIT ( 16'h4024 ))
  \CONTROL/FSM1/RegWrite_mux0000_F  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [1]),
    .I3(\CONTROL/FSM1/next_state [0]),
    .O(N200)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM1/RegWrite_mux0000_G  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [1]),
    .I3(\CONTROL/FSM1/next_state [0]),
    .O(N201)
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<3>  (
    .I0(N202),
    .I1(N203),
    .S(\CONTROL/FSM5/state [3]),
    .O(\CONTROL/FSM5/next_state_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM5/next_state_mux0000<3>_F  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(N186),
    .I2(\CONTROL/FSM5/state [0]),
    .O(N202)
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \CONTROL/FSM5/next_state_mux0000<3>_G  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/FSM5/state [0]),
    .O(N203)
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<1>  (
    .I0(N204),
    .I1(N205),
    .S(\CONTROL/FSM5/state [4]),
    .O(\CONTROL/FSM5/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h042C ))
  \CONTROL/FSM5/next_state_mux0000<1>_F  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/FSM5/state [3]),
    .O(N204)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM5/next_state_mux0000<1>_G  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(N186),
    .O(N205)
  );
  MUXF5   \CONTROL/ackstate<0>71_SW0  (
    .I0(N206),
    .I1(N207),
    .S(\CONTROL/ack3 ),
    .O(N188)
  );
  LUT4 #(
    .INIT ( 16'h7340 ))
  \CONTROL/ackstate<0>71_SW0_F  (
    .I0(\CONTROL/ack2_239 ),
    .I1(N194),
    .I2(N170),
    .I3(\CONTROL/FSM4/state [0]),
    .O(N206)
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \CONTROL/ackstate<0>71_SW0_G  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/ack1 ),
    .I2(\CONTROL/FSM2/state [4]),
    .I3(N106),
    .O(N207)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM5/fromWB_mux00001  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .I3(\CONTROL/FSM5/next_state [0]),
    .O(\CONTROL/FSM5/fromWB_mux00001_179 )
  );
  MUXF5   \CONTROL/FSM5/fromWB_mux0000_f5  (
    .I0(\CONTROL/FSM5/fromWB_mux00001_179 ),
    .I1(alu_op_1_OBUF_760),
    .S(\CONTROL/FSM5/next_state [4]),
    .O(\CONTROL/FSM5/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM4/fromWB_mux00001  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [2]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(\CONTROL/FSM4/next_state [0]),
    .O(\CONTROL/FSM4/fromWB_mux00001_138 )
  );
  MUXF5   \CONTROL/FSM4/fromWB_mux0000_f5  (
    .I0(\CONTROL/FSM4/fromWB_mux00001_138 ),
    .I1(alu_op_1_OBUF_760),
    .S(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM3/fromWB_mux00001  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [2]),
    .I2(\CONTROL/FSM3/next_state [1]),
    .I3(\CONTROL/FSM3/next_state [0]),
    .O(\CONTROL/FSM3/fromWB_mux00001_98 )
  );
  MUXF5   \CONTROL/FSM3/fromWB_mux0000_f5  (
    .I0(\CONTROL/FSM3/fromWB_mux00001_98 ),
    .I1(alu_op_1_OBUF_760),
    .S(\CONTROL/FSM3/next_state [4]),
    .O(\CONTROL/FSM3/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM2/fromWB_mux00001  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [2]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .I3(\CONTROL/FSM2/next_state [0]),
    .O(\CONTROL/FSM2/fromWB_mux00001_57 )
  );
  MUXF5   \CONTROL/FSM2/fromWB_mux0000_f5  (
    .I0(\CONTROL/FSM2/fromWB_mux00001_57 ),
    .I1(alu_op_1_OBUF_760),
    .S(\CONTROL/FSM2/next_state [4]),
    .O(\CONTROL/FSM2/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM5/next_state_not00011  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(\CONTROL/FSM5/next_state_not00011_197 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM5/next_state_not00012  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(\CONTROL/FSM5/next_state_not00012_198 )
  );
  MUXF5   \CONTROL/FSM5/next_state_not0001_f5  (
    .I0(\CONTROL/FSM5/next_state_not00012_198 ),
    .I1(\CONTROL/FSM5/next_state_not00011_197 ),
    .S(\CONTROL/FSM5/state [4]),
    .O(\CONTROL/FSM5/next_state_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/next_state_not00011  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(\CONTROL/FSM4/state [0]),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(\CONTROL/FSM4/state [1]),
    .O(\CONTROL/FSM4/next_state_not00011_157 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM4/next_state_not00012  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [0]),
    .I3(\CONTROL/FSM4/state [3]),
    .O(\CONTROL/FSM4/next_state_not00012_158 )
  );
  MUXF5   \CONTROL/FSM4/next_state_not0001_f5  (
    .I0(\CONTROL/FSM4/next_state_not00012_158 ),
    .I1(\CONTROL/FSM4/next_state_not00011_157 ),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM3/next_state_not00011  (
    .I0(\CONTROL/FSM3/state [3]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/FSM3/state [2]),
    .I3(\CONTROL/FSM3/state [1]),
    .O(\CONTROL/FSM3/next_state_not00011_116 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM3/next_state_not00012  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [0]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(\CONTROL/FSM3/next_state_not00012_117 )
  );
  MUXF5   \CONTROL/FSM3/next_state_not0001_f5  (
    .I0(\CONTROL/FSM3/next_state_not00012_117 ),
    .I1(\CONTROL/FSM3/next_state_not00011_116 ),
    .S(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM2/next_state_not00011  (
    .I0(\CONTROL/FSM2/state [3]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [2]),
    .I3(\CONTROL/FSM2/state [1]),
    .O(\CONTROL/FSM2/next_state_not00011_76 )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \CONTROL/FSM2/next_state_not00012  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [0]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(\CONTROL/FSM2/next_state_not00012_77 )
  );
  MUXF5   \CONTROL/FSM2/next_state_not0001_f5  (
    .I0(\CONTROL/FSM2/next_state_not00012_77 ),
    .I1(\CONTROL/FSM2/next_state_not00011_76 ),
    .S(\CONTROL/FSM2/state [4]),
    .O(\CONTROL/FSM2/next_state_not0001 )
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/stage_mux0000<0>1_SW0  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM5/state [2]),
    .LO(N84)
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/stage_mux0000<0>1_SW0  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(\CONTROL/FSM4/state [2]),
    .LO(N86)
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/stage_mux0000<0>1_SW0  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(\CONTROL/FSM3/state [2]),
    .LO(N88)
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/stage_mux0000<0>1_SW0  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/FSM2/state [2]),
    .LO(N90)
  );
  LUT4_D #(
    .INIT ( 16'hAE82 ))
  \CONTROL/ack11  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/FSM1/state [3]),
    .LO(N208),
    .O(\CONTROL/ack1 )
  );
  LUT4_D #(
    .INIT ( 16'hAE82 ))
  \CONTROL/ack3_SW0  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [0]),
    .I3(\CONTROL/FSM3/state [3]),
    .LO(N209),
    .O(N104)
  );
  LUT4_D #(
    .INIT ( 16'h317B ))
  \CONTROL/ack2_SW0  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM2/state [2]),
    .I2(\CONTROL/FSM2/state [0]),
    .I3(\CONTROL/FSM2/state [3]),
    .LO(N210),
    .O(N106)
  );
  LUT4_D #(
    .INIT ( 16'hED40 ))
  \CONTROL/ack4_SW0  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM4/state [3]),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/FSM4/state [2]),
    .LO(N211),
    .O(N108)
  );
  LUT3_D #(
    .INIT ( 8'h0E ))
  \CONTROL/ack321  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(\CONTROL/ack1 ),
    .LO(N212),
    .O(\CONTROL/N195 )
  );
  LUT4_L #(
    .INIT ( 16'h777F ))
  \CONTROL/fromWB_SW0  (
    .I0(\CONTROL/N1 ),
    .I1(\CONTROL/N30 ),
    .I2(N122),
    .I3(\CONTROL/ack3 ),
    .LO(N102)
  );
  LUT4_D #(
    .INIT ( 16'hFFFD ))
  \CONTROL/I9_cy<4>1111  (
    .I0(\CONTROL/FSM2/fromWB_55 ),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(N106),
    .I3(\CONTROL/ack1 ),
    .LO(N213),
    .O(\CONTROL/N30 )
  );
  LUT4_L #(
    .INIT ( 16'h0080 ))
  \CONTROL/MemtoReg22_SW0  (
    .I0(N124),
    .I1(N116),
    .I2(\CONTROL/N195 ),
    .I3(\CONTROL/ack3 ),
    .LO(N120)
  );
  LUT4_L #(
    .INIT ( 16'h0040 ))
  \CONTROL/RegWrite11  (
    .I0(N126),
    .I1(N108),
    .I2(\CONTROL/N195 ),
    .I3(\CONTROL/ack3 ),
    .LO(\CONTROL/RegWrite111 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFB ))
  \CONTROL/I9_cy<2>1111  (
    .I0(N128),
    .I1(N104),
    .I2(\CONTROL/ack1 ),
    .I3(\CONTROL/ack2_239 ),
    .LO(N214),
    .O(\CONTROL/N29 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \CONTROL/ackstate<0>12_SW1  (
    .I0(\CONTROL/FSM5/MemtoReg_169 ),
    .I1(\CONTROL/RegWrite238_234 ),
    .I2(N116),
    .I3(\CONTROL/N195 ),
    .LO(N215),
    .O(N137)
  );
  LUT4_L #(
    .INIT ( 16'hDFCF ))
  \CONTROL/MemtoReg11_SW0  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(N114),
    .I2(N108),
    .I3(N104),
    .LO(N144)
  );
  LUT4_L #(
    .INIT ( 16'h7FFF ))
  \RegDatainMux/reg_realdatain<0>27_SW0  (
    .I0(\CONTROL/FSM5/WB_value [0]),
    .I1(\CONTROL/FSM5/fromWB_177 ),
    .I2(\CONTROL/RegWrite238_234 ),
    .I3(\CONTROL/N195 ),
    .LO(N110)
  );
  LUT4_D #(
    .INIT ( 16'h1D4F ))
  \CONTROL/RegWrite238_SW0  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/state [2]),
    .I3(\CONTROL/FSM5/state [1]),
    .LO(N216),
    .O(N146)
  );
  LUT3_L #(
    .INIT ( 8'hFE ))
  \CONTROL/MemtoReg8_SW0  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N106),
    .I2(\CONTROL/ack1 ),
    .LO(N148)
  );
  LUT4_L #(
    .INIT ( 16'hFAFB ))
  \CONTROL/RegWrite282_SW0  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(N146),
    .I3(N106),
    .LO(N152)
  );
  LUT4_D #(
    .INIT ( 16'h00FB ))
  \CONTROL/RegWrite282  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(N104),
    .I2(\CONTROL/ack2_239 ),
    .I3(N154),
    .LO(N217),
    .O(\CONTROL/ack5 )
  );
  LUT4_L #(
    .INIT ( 16'hFF7F ))
  \CONTROL/ack4_SW4_SW0  (
    .I0(\CONTROL/FSM4/WB_value [0]),
    .I1(\CONTROL/FSM4/fromWB_136 ),
    .I2(N108),
    .I3(\CONTROL/FSM4/state [4]),
    .LO(N162)
  );
  FDC   \CONTROL/en0_1  (
    .C(clk_BUFGP_830),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_op_1_OBUF_760),
    .Q(\CONTROL/en0_1_244 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

