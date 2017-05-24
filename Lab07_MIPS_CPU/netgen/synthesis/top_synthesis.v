////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.70d
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Wed May 24 19:59:14 2017
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
bubble, RegDst, RegWrite, fromWB, PC_En_Start, ALU_SrcA, MemWrite, SelectA, SelectB, MemtoReg, PC_en, IorD, funct, PC_Src, next_PC, state, ALUOp, 
alu_result, JmpSigEn, ackstate, sext_Immed, Immed, alu_op, r3_addr_mux, PC, instruction, BrSigEn, WB_value, ForwardA, ForwardB, alu_a, alu_b, alu_out
, r1_dout, mem_data, bubblePri, Jump_addr, r1_data, reg_datain, Mem_addr, r1_addr, r2_dout, ALU_SrcB, reg_realdatain, r2_data, flushPri, M_doutb, 
r2_addr, opcode, next_state
)/* synthesis syn_black_box syn_noprune=1 */;
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
  output fromWB;
  output PC_En_Start;
  output ALU_SrcA;
  output MemWrite;
  output SelectA;
  output SelectB;
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
  output [31 : 0] WB_value;
  output [31 : 0] ForwardA;
  output [31 : 0] ForwardB;
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
  output [31 : 0] reg_realdatain;
  output [31 : 0] r2_data;
  output [2 : 0] flushPri;
  output [31 : 0] M_doutb;
  output [4 : 0] r2_addr;
  output [5 : 0] opcode;
  output [6 : 0] next_state;
  
  // synthesis translate_off
  
  wire ALUOp_0_OBUF_2;
  wire \ALURESULT/rst_n_inv ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_4_36 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_41_37 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_410_38 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_411_39 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_412_40 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_413_41 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_414_42 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_42_43 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_43_44 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_44_45 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_45_46 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_46_47 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_47_48 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_48_49 ;
  wire \ALU_OPB_MUX/Mmux_alu_opb_49_50 ;
  wire ALU_POSITIVE_OBUF_52;
  wire ALU_SrcA_OBUF_54;
  wire ALU_SrcB_0_OBUF_57;
  wire ALU_ZERO_OBUF_59;
  wire BranchSig_OBUF_64;
  wire \CONTROL/ALUOp_or00000_67 ;
  wire \CONTROL/ALUOp_or000013_68 ;
  wire \CONTROL/ALUOp_or00003 ;
  wire \CONTROL/ALUOp_or000030_70 ;
  wire \CONTROL/ALUOp_or000031_71 ;
  wire \CONTROL/ALUOp_or00004 ;
  wire \CONTROL/ALUOp_or000041_73 ;
  wire \CONTROL/ALU_SrcA17_74 ;
  wire \CONTROL/ALU_SrcA30_75 ;
  wire \CONTROL/ALU_SrcA69_76 ;
  wire \CONTROL/ALU_SrcB<0>15_77 ;
  wire \CONTROL/ALU_SrcB<0>17_78 ;
  wire \CONTROL/ALU_SrcB<0>39_79 ;
  wire \CONTROL/BrSigEn_not0001 ;
  wire \CONTROL/DMemVisit0_83 ;
  wire \CONTROL/DMemVisit102_84 ;
  wire \CONTROL/DMemVisit14_85 ;
  wire \CONTROL/DMemVisit179_86 ;
  wire \CONTROL/DMemVisit27_87 ;
  wire \CONTROL/FSM1/ALU_SrcB_or0002_94 ;
  wire \CONTROL/FSM1/MemtoReg_95 ;
  wire \CONTROL/FSM1/MemtoReg_mux0000_96 ;
  wire \CONTROL/FSM1/RegDst_97 ;
  wire \CONTROL/FSM1/RegDst_mux0000_98 ;
  wire \CONTROL/FSM1/RegWrite_99 ;
  wire \CONTROL/FSM1/RegWrite_mux0000_100 ;
  wire \CONTROL/FSM1/SaveWB_101 ;
  wire \CONTROL/FSM1/bubble_en_inv_134 ;
  wire \CONTROL/FSM1/flush_en ;
  wire \CONTROL/FSM1/fromWB_136 ;
  wire \CONTROL/FSM1/fromWB_mux0000 ;
  wire \CONTROL/FSM1/fromWB_mux00001_138 ;
  wire \CONTROL/FSM1/fromWB_not0001 ;
  wire \CONTROL/FSM1/next_en_140 ;
  wire \CONTROL/FSM1/next_state_mux0000<0>138_147 ;
  wire \CONTROL/FSM1/next_state_mux0000<0>27_148 ;
  wire \CONTROL/FSM1/next_state_mux0000<0>53_149 ;
  wire \CONTROL/FSM1/next_state_mux0000<0>77_150 ;
  wire \CONTROL/FSM1/next_state_mux0000<1>28_152 ;
  wire \CONTROL/FSM1/next_state_mux0000<1>75_153 ;
  wire \CONTROL/FSM1/next_state_mux0000<2>76_155 ;
  wire \CONTROL/FSM1/next_state_mux0000<3>48_157 ;
  wire \CONTROL/FSM1/next_state_mux0000<4>50_159 ;
  wire \CONTROL/FSM1/next_state_not0001_160 ;
  wire \CONTROL/FSM1/stage_mux0000<0>1 ;
  wire \CONTROL/FSM1/stage_not0001 ;
  wire \CONTROL/FSM1/state_0_1_170 ;
  wire \CONTROL/FSM1/state_4_1_175 ;
  wire \CONTROL/FSM1/state_ClkEn_inv ;
  wire \CONTROL/FSM2/ALUOp_mux0000<0>11_185 ;
  wire \CONTROL/FSM2/ALUOp_mux0000<1>29_187 ;
  wire \CONTROL/FSM2/ALU_SrcB_mux0000<0>22 ;
  wire \CONTROL/FSM2/ALU_SrcB_mux0000<0>221_191 ;
  wire \CONTROL/FSM2/ALU_SrcB_or0002_192 ;
  wire \CONTROL/FSM2/MemtoReg_193 ;
  wire \CONTROL/FSM2/MemtoReg_mux0000_194 ;
  wire \CONTROL/FSM2/RegDst_195 ;
  wire \CONTROL/FSM2/RegDst_mux0000 ;
  wire \CONTROL/FSM2/RegDst_mux000022_197 ;
  wire \CONTROL/FSM2/RegWrite_198 ;
  wire \CONTROL/FSM2/RegWrite_mux0000_199 ;
  wire \CONTROL/FSM2/SaveWB_200 ;
  wire \CONTROL/FSM2/bubble_en_inv_233 ;
  wire \CONTROL/FSM2/flush_en ;
  wire \CONTROL/FSM2/fromWB_235 ;
  wire \CONTROL/FSM2/fromWB_mux0000 ;
  wire \CONTROL/FSM2/fromWB_not0001_237 ;
  wire \CONTROL/FSM2/next_en_238 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>135_245 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>27_246 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>50_247 ;
  wire \CONTROL/FSM2/next_state_mux0000<0>73_248 ;
  wire \CONTROL/FSM2/next_state_mux0000<1>28_250 ;
  wire \CONTROL/FSM2/next_state_mux0000<1>75_251 ;
  wire \CONTROL/FSM2/next_state_mux0000<2>76_253 ;
  wire \CONTROL/FSM2/next_state_mux0000<3>48_255 ;
  wire \CONTROL/FSM2/next_state_mux0000<4>50_257 ;
  wire \CONTROL/FSM2/next_state_not0001_258 ;
  wire \CONTROL/FSM2/stage_mux0000<0>1 ;
  wire \CONTROL/FSM2/stage_not0001 ;
  wire \CONTROL/FSM2/state_0_1_268 ;
  wire \CONTROL/FSM2/state_1_1_270 ;
  wire \CONTROL/FSM2/state_3_1_273 ;
  wire \CONTROL/FSM2/state_ClkEn_inv ;
  wire \CONTROL/FSM3/ALUOp_mux0000<1>18 ;
  wire \CONTROL/FSM3/ALUOp_mux0000<1>181_286 ;
  wire \CONTROL/FSM3/ALU_SrcB_or0002_289 ;
  wire \CONTROL/FSM3/MemtoReg_290 ;
  wire \CONTROL/FSM3/MemtoReg_mux0000 ;
  wire \CONTROL/FSM3/MemtoReg_mux000012_292 ;
  wire \CONTROL/FSM3/RegDst_293 ;
  wire \CONTROL/FSM3/RegDst_mux0000_294 ;
  wire \CONTROL/FSM3/RegWrite_295 ;
  wire \CONTROL/FSM3/RegWrite_mux0000_296 ;
  wire \CONTROL/FSM3/SaveWB_297 ;
  wire \CONTROL/FSM3/bubble_en_inv_330 ;
  wire \CONTROL/FSM3/flush_en ;
  wire \CONTROL/FSM3/fromWB_332 ;
  wire \CONTROL/FSM3/fromWB_mux0000 ;
  wire \CONTROL/FSM3/fromWB_not0001 ;
  wire \CONTROL/FSM3/next_en_335 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>138_342 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>27_343 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>53_344 ;
  wire \CONTROL/FSM3/next_state_mux0000<0>77_345 ;
  wire \CONTROL/FSM3/next_state_mux0000<2>76_348 ;
  wire \CONTROL/FSM3/next_state_mux0000<4>50_351 ;
  wire \CONTROL/FSM3/next_state_not0001_352 ;
  wire \CONTROL/FSM3/stage_mux0000<0>1 ;
  wire \CONTROL/FSM3/stage_not0001 ;
  wire \CONTROL/FSM3/state_0_1_362 ;
  wire \CONTROL/FSM3/state_1_1_364 ;
  wire \CONTROL/FSM3/state_2_1_366 ;
  wire \CONTROL/FSM3/state_3_1_368 ;
  wire \CONTROL/FSM3/state_ClkEn_inv ;
  wire \CONTROL/FSM4/ALUOp_mux0000<0>17_379 ;
  wire \CONTROL/FSM4/ALUOp_mux0000<0>9 ;
  wire \CONTROL/FSM4/ALUOp_mux0000<1>21 ;
  wire \CONTROL/FSM4/ALUOp_mux0000<1>211 ;
  wire \CONTROL/FSM4/ALUOp_mux0000<1>30 ;
  wire \CONTROL/FSM4/ALUOp_mux0000<1>301_385 ;
  wire \CONTROL/FSM4/ALU_SrcB_mux0000<0>21_388 ;
  wire \CONTROL/FSM4/ALU_SrcB_or0002_389 ;
  wire \CONTROL/FSM4/MemtoReg_390 ;
  wire \CONTROL/FSM4/MemtoReg_mux0000_391 ;
  wire \CONTROL/FSM4/RegDst_392 ;
  wire \CONTROL/FSM4/RegDst_mux0000 ;
  wire \CONTROL/FSM4/RegDst_mux000036 ;
  wire \CONTROL/FSM4/RegDst_mux0000361_395 ;
  wire \CONTROL/FSM4/RegDst_mux000037 ;
  wire \CONTROL/FSM4/RegDst_mux0000371_397 ;
  wire \CONTROL/FSM4/RegWrite_398 ;
  wire \CONTROL/FSM4/RegWrite_mux0000_399 ;
  wire \CONTROL/FSM4/SaveWB ;
  wire \CONTROL/FSM4/bubble_en_inv_433 ;
  wire \CONTROL/FSM4/flush_en ;
  wire \CONTROL/FSM4/fromWB_435 ;
  wire \CONTROL/FSM4/fromWB_mux0000 ;
  wire \CONTROL/FSM4/fromWB_not0001_437 ;
  wire \CONTROL/FSM4/next_en_438 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>138_445 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>27_446 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>53 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>531_448 ;
  wire \CONTROL/FSM4/next_state_mux0000<0>77_449 ;
  wire \CONTROL/FSM4/next_state_mux0000<1>1 ;
  wire \CONTROL/FSM4/next_state_mux0000<1>11_452 ;
  wire \CONTROL/FSM4/next_state_mux0000<2>79 ;
  wire \CONTROL/FSM4/next_state_mux0000<2>791_455 ;
  wire \CONTROL/FSM4/next_state_mux0000<4>49_458 ;
  wire \CONTROL/FSM4/next_state_not0001_459 ;
  wire \CONTROL/FSM4/stage_mux0000<0>1 ;
  wire \CONTROL/FSM4/stage_not0001 ;
  wire \CONTROL/FSM4/state_1_1_470 ;
  wire \CONTROL/FSM4/state_2_1_472 ;
  wire \CONTROL/FSM4/state_3_1_474 ;
  wire \CONTROL/FSM4/state_ClkEn_inv ;
  wire \CONTROL/FSM5/ALUOp_mux0000<0>11_485 ;
  wire \CONTROL/FSM5/ALUOp_mux0000<1>29_487 ;
  wire \CONTROL/FSM5/ALU_SrcB_mux0000<0>22 ;
  wire \CONTROL/FSM5/ALU_SrcB_mux0000<0>221_491 ;
  wire \CONTROL/FSM5/ALU_SrcB_or0002_492 ;
  wire \CONTROL/FSM5/MemtoReg_493 ;
  wire \CONTROL/FSM5/MemtoReg_mux0000_494 ;
  wire \CONTROL/FSM5/RegDst_495 ;
  wire \CONTROL/FSM5/RegDst_mux0000 ;
  wire \CONTROL/FSM5/RegDst_mux000022_497 ;
  wire \CONTROL/FSM5/RegWrite_498 ;
  wire \CONTROL/FSM5/RegWrite_mux0000_499 ;
  wire \CONTROL/FSM5/SaveWB_500 ;
  wire \CONTROL/FSM5/bubble_en_inv_533 ;
  wire \CONTROL/FSM5/flush_en ;
  wire \CONTROL/FSM5/fromWB_535 ;
  wire \CONTROL/FSM5/fromWB_mux0000 ;
  wire \CONTROL/FSM5/fromWB_not0001_537 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>130_544 ;
  wire \CONTROL/FSM5/next_state_mux0000<0>95_545 ;
  wire \CONTROL/FSM5/next_state_mux0000<1>82 ;
  wire \CONTROL/FSM5/next_state_mux0000<1>821_548 ;
  wire \CONTROL/FSM5/next_state_mux0000<2>77 ;
  wire \CONTROL/FSM5/next_state_mux0000<2>771_551 ;
  wire \CONTROL/FSM5/next_state_mux0000<3>20_553 ;
  wire \CONTROL/FSM5/next_state_mux0000<3>30_554 ;
  wire \CONTROL/FSM5/next_state_mux0000<4>50_556 ;
  wire \CONTROL/FSM5/next_state_not0001_557 ;
  wire \CONTROL/FSM5/stage_mux0000<0>1 ;
  wire \CONTROL/FSM5/stage_not0001 ;
  wire \CONTROL/FSM5/state_ClkEn_inv ;
  wire \CONTROL/I10_cy<4>104_577 ;
  wire \CONTROL/I10_cy<4>105_578 ;
  wire \CONTROL/I10_cy<4>114_579 ;
  wire \CONTROL/I10_cy<4>115_580 ;
  wire \CONTROL/I10_cy<4>124_581 ;
  wire \CONTROL/I10_cy<4>125_582 ;
  wire \CONTROL/I10_cy<4>134_583 ;
  wire \CONTROL/I10_cy<4>135_584 ;
  wire \CONTROL/I10_cy<4>14_585 ;
  wire \CONTROL/I10_cy<4>144_586 ;
  wire \CONTROL/I10_cy<4>145_587 ;
  wire \CONTROL/I10_cy<4>15_588 ;
  wire \CONTROL/I10_cy<4>154_589 ;
  wire \CONTROL/I10_cy<4>155_590 ;
  wire \CONTROL/I10_cy<4>164_591 ;
  wire \CONTROL/I10_cy<4>165_592 ;
  wire \CONTROL/I10_cy<4>174_593 ;
  wire \CONTROL/I10_cy<4>175_594 ;
  wire \CONTROL/I10_cy<4>184_595 ;
  wire \CONTROL/I10_cy<4>185_596 ;
  wire \CONTROL/I10_cy<4>194_597 ;
  wire \CONTROL/I10_cy<4>195_598 ;
  wire \CONTROL/I10_cy<4>204_599 ;
  wire \CONTROL/I10_cy<4>205_600 ;
  wire \CONTROL/I10_cy<4>214_601 ;
  wire \CONTROL/I10_cy<4>215_602 ;
  wire \CONTROL/I10_cy<4>234_603 ;
  wire \CONTROL/I10_cy<4>235_604 ;
  wire \CONTROL/I10_cy<4>24_605 ;
  wire \CONTROL/I10_cy<4>25_606 ;
  wire \CONTROL/I10_cy<4>254_607 ;
  wire \CONTROL/I10_cy<4>255_608 ;
  wire \CONTROL/I10_cy<4>274_609 ;
  wire \CONTROL/I10_cy<4>275_610 ;
  wire \CONTROL/I10_cy<4>294_611 ;
  wire \CONTROL/I10_cy<4>295_612 ;
  wire \CONTROL/I10_cy<4>314_613 ;
  wire \CONTROL/I10_cy<4>315_614 ;
  wire \CONTROL/I10_cy<4>334_615 ;
  wire \CONTROL/I10_cy<4>335_616 ;
  wire \CONTROL/I10_cy<4>34_617 ;
  wire \CONTROL/I10_cy<4>35_618 ;
  wire \CONTROL/I10_cy<4>354_619 ;
  wire \CONTROL/I10_cy<4>355_620 ;
  wire \CONTROL/I10_cy<4>374_621 ;
  wire \CONTROL/I10_cy<4>375_622 ;
  wire \CONTROL/I10_cy<4>394_623 ;
  wire \CONTROL/I10_cy<4>395_624 ;
  wire \CONTROL/I10_cy<4>414_625 ;
  wire \CONTROL/I10_cy<4>415_626 ;
  wire \CONTROL/I10_cy<4>434_627 ;
  wire \CONTROL/I10_cy<4>435_628 ;
  wire \CONTROL/I10_cy<4>44_629 ;
  wire \CONTROL/I10_cy<4>45_630 ;
  wire \CONTROL/I10_cy<4>54_631 ;
  wire \CONTROL/I10_cy<4>55_632 ;
  wire \CONTROL/I10_cy<4>64_633 ;
  wire \CONTROL/I10_cy<4>65_634 ;
  wire \CONTROL/I10_cy<4>74_635 ;
  wire \CONTROL/I10_cy<4>75_636 ;
  wire \CONTROL/I10_cy<4>84_637 ;
  wire \CONTROL/I10_cy<4>85_638 ;
  wire \CONTROL/I10_cy<4>94_639 ;
  wire \CONTROL/I10_cy<4>95_640 ;
  wire \CONTROL/JmpOccur12 ;
  wire \CONTROL/JmpOccur121_642 ;
  wire \CONTROL/JmpOccur50_643 ;
  wire \CONTROL/JmpOccur67_644 ;
  wire \CONTROL/JmpSig_645 ;
  wire \CONTROL/JmpSigEn_not0001 ;
  wire \CONTROL/JmpSig_not0001 ;
  wire \CONTROL/Mcount_BrSigEn_eqn_0 ;
  wire \CONTROL/Mcount_BrSigEn_eqn_1 ;
  wire \CONTROL/Mcount_JmpSigEn_eqn_0 ;
  wire \CONTROL/Mcount_JmpSigEn_eqn_1 ;
  wire \CONTROL/MemtoReg23 ;
  wire \CONTROL/MemtoReg231_655 ;
  wire \CONTROL/MemtoReg232_656 ;
  wire \CONTROL/N01 ;
  wire \CONTROL/N105 ;
  wire \CONTROL/N1051 ;
  wire \CONTROL/N106 ;
  wire \CONTROL/N107 ;
  wire \CONTROL/N108 ;
  wire \CONTROL/N109 ;
  wire \CONTROL/N11 ;
  wire \CONTROL/N112 ;
  wire \CONTROL/N116 ;
  wire \CONTROL/N121 ;
  wire \CONTROL/N123 ;
  wire \CONTROL/N127 ;
  wire \CONTROL/N132 ;
  wire \CONTROL/N133 ;
  wire \CONTROL/N134 ;
  wire \CONTROL/N135 ;
  wire \CONTROL/N138 ;
  wire \CONTROL/N140 ;
  wire \CONTROL/N141 ;
  wire \CONTROL/N144 ;
  wire \CONTROL/N145 ;
  wire \CONTROL/N1451 ;
  wire \CONTROL/N147 ;
  wire \CONTROL/N1511 ;
  wire \CONTROL/N152 ;
  wire \CONTROL/N153 ;
  wire \CONTROL/N155 ;
  wire \CONTROL/N2 ;
  wire \CONTROL/N214 ;
  wire \CONTROL/N239 ;
  wire \CONTROL/N240 ;
  wire \CONTROL/N26 ;
  wire \CONTROL/N262 ;
  wire \CONTROL/N266 ;
  wire \CONTROL/N269 ;
  wire \CONTROL/N270 ;
  wire \CONTROL/N273 ;
  wire \CONTROL/N297 ;
  wire \CONTROL/N298 ;
  wire \CONTROL/N299 ;
  wire \CONTROL/N3 ;
  wire \CONTROL/N302 ;
  wire \CONTROL/N305 ;
  wire \CONTROL/N307 ;
  wire \CONTROL/N319 ;
  wire \CONTROL/N320 ;
  wire \CONTROL/N3211 ;
  wire \CONTROL/N322 ;
  wire \CONTROL/N339 ;
  wire \CONTROL/N3411 ;
  wire \CONTROL/N4 ;
  wire \CONTROL/N5 ;
  wire \CONTROL/N51 ;
  wire \CONTROL/N54 ;
  wire \CONTROL/N6 ;
  wire \CONTROL/N63 ;
  wire \CONTROL/N64 ;
  wire \CONTROL/N99 ;
  wire \CONTROL/PC_En_Conflict1_716 ;
  wire \CONTROL/PC_En_Conflict11_717 ;
  wire \CONTROL/PC_En_Conflict13_718 ;
  wire \CONTROL/PC_En_Conflict2_719 ;
  wire \CONTROL/PC_En_Conflict3_720 ;
  wire \CONTROL/PC_En_Conflict4_721 ;
  wire \CONTROL/PC_En_Conflictstate<0>2_722 ;
  wire \CONTROL/PC_En_Conflictstate<0>20_723 ;
  wire \CONTROL/PC_En_Conflictstate<0>4 ;
  wire \CONTROL/PC_En_Conflictstate<0>46_725 ;
  wire \CONTROL/PC_En_Conflictstate<1>11 ;
  wire \CONTROL/PC_En_Conflictstate<1>3_727 ;
  wire \CONTROL/PC_En_Conflictstate<1>31_728 ;
  wire \CONTROL/PC_En_Conflictstate<1>52_729 ;
  wire \CONTROL/PC_En_Conflictstate<3>3_730 ;
  wire \CONTROL/PC_En_Conflictstate<3>31_731 ;
  wire \CONTROL/PC_En_Conflictstate<3>52_732 ;
  wire \CONTROL/PC_En_Conflictstate<4>2_734 ;
  wire \CONTROL/PC_En_Conflictstate<4>25_735 ;
  wire \CONTROL/PC_En_Conflictstate<4>841 ;
  wire \CONTROL/PC_En_Conflictstate<4>8411_737 ;
  wire \CONTROL/RegDst30_738 ;
  wire \CONTROL/RegWrite12_739 ;
  wire \CONTROL/RegWrite30_740 ;
  wire \CONTROL/SelectA2_cmp_eq0000_741 ;
  wire \CONTROL/SelectA5_cmp_eq0000 ;
  wire \CONTROL/SelectA5_cmp_eq0000106_743 ;
  wire \CONTROL/SelectA5_cmp_eq0000121_744 ;
  wire \CONTROL/SelectA5_cmp_eq0000132_745 ;
  wire \CONTROL/SelectA5_cmp_eq0000156_746 ;
  wire \CONTROL/SelectA5_cmp_eq0000188_747 ;
  wire \CONTROL/SelectA5_cmp_eq000033_748 ;
  wire \CONTROL/SelectA5_cmp_eq000045_749 ;
  wire \CONTROL/SelectA5_cmp_eq000089_750 ;
  wire \CONTROL/SelectA5_cmp_eq000089_SW1 ;
  wire \CONTROL/SelectA5_or0000_752 ;
  wire \CONTROL/WaitForMem115_753 ;
  wire \CONTROL/WaitForMem18_754 ;
  wire \CONTROL/ack1_755 ;
  wire \CONTROL/ack2_756 ;
  wire \CONTROL/ack3_757 ;
  wire \CONTROL/ack4 ;
  wire \CONTROL/ack436 ;
  wire \CONTROL/ack4361_760 ;
  wire \CONTROL/ack5_761 ;
  wire \CONTROL/ack51 ;
  wire \CONTROL/ackstate<0>8_763 ;
  wire \CONTROL/ackstate<1>8_764 ;
  wire \CONTROL/ackstate<2>8_765 ;
  wire \CONTROL/ackstate<3>8_766 ;
  wire \CONTROL/en0_767 ;
  wire \CONTROL/en0_1_768 ;
  wire \CONTROL/stateofALU<0>23_770 ;
  wire \CONTROL/stateofALU<0>7_771 ;
  wire \CONTROL/stateofALU<1>23_773 ;
  wire \CONTROL/stateofALU<1>7_774 ;
  wire \CONTROL/stateofALU<2>23_776 ;
  wire \CONTROL/stateofALU<2>7_777 ;
  wire \CONTROL/stateofALU<3>23_779 ;
  wire \CONTROL/stateofALU<3>7_780 ;
  wire \CONTROL/stateofALU<4>23_782 ;
  wire \CONTROL/stateofALU<4>7_783 ;
  wire \CONTROL/stateofALU_cmp_eq0000 ;
  wire \CONTROL/stateofALU_cmp_eq0001 ;
  wire \CONTROL/stateofALU_cmp_eq0002 ;
  wire \CONTROL/stateofALU_cmp_eq0003 ;
  wire \CONTROL/stateofFOUR_cmp_eq0000 ;
  wire \CONTROL/stateofFOUR_cmp_eq0001 ;
  wire \CONTROL/stateofFOUR_cmp_eq0002 ;
  wire \CONTROL/stateofFOUR_cmp_eq0003 ;
  wire \CONTROL/stateofTHREE<0>15_792 ;
  wire \CONTROL/stateofTHREE<0>8_793 ;
  wire \CONTROL/stateofTHREE[2] ;
  wire \CONTROL/stateofTHREE<2>15_795 ;
  wire \CONTROL/stateofTHREE<3>15_796 ;
  wire \CONTROL/stateofTHREE<3>8_797 ;
  wire \CONTROL/stateofTHREE[4] ;
  wire \CONTROL/stateofTHREE<4>15_799 ;
  wire \CONTROL/stateofTHREE_cmp_eq0000 ;
  wire \CONTROL/stateofTHREE_cmp_eq0001 ;
  wire \CONTROL/stateofTHREE_cmp_eq0002 ;
  wire \CONTROL/stateofTHREE_cmp_eq0003 ;
  wire DMemVisit_OBUF_805;
  wire ForwardA_0_OBUF_838;
  wire ForwardA_10_OBUF_839;
  wire ForwardA_11_OBUF_840;
  wire ForwardA_12_OBUF_841;
  wire ForwardA_13_OBUF_842;
  wire ForwardA_14_OBUF_843;
  wire ForwardA_15_OBUF_844;
  wire ForwardA_16_OBUF_845;
  wire ForwardA_17_OBUF_846;
  wire ForwardA_18_OBUF_847;
  wire ForwardA_19_OBUF_848;
  wire ForwardA_1_OBUF_849;
  wire ForwardA_20_OBUF_850;
  wire ForwardA_21_OBUF_851;
  wire ForwardA_22_OBUF_852;
  wire ForwardA_23_OBUF_853;
  wire ForwardA_24_OBUF_854;
  wire ForwardA_25_OBUF_855;
  wire ForwardA_26_OBUF_856;
  wire ForwardA_27_OBUF_857;
  wire ForwardA_28_OBUF_858;
  wire ForwardA_29_OBUF_859;
  wire ForwardA_2_OBUF_860;
  wire ForwardA_30_OBUF_861;
  wire ForwardA_31_OBUF_862;
  wire ForwardA_3_OBUF_863;
  wire ForwardA_4_OBUF_864;
  wire ForwardA_5_OBUF_865;
  wire ForwardA_6_OBUF_866;
  wire ForwardA_7_OBUF_867;
  wire ForwardA_8_OBUF_868;
  wire ForwardA_9_OBUF_869;
  wire ForwardB_0_OBUF_902;
  wire ForwardB_10_OBUF_903;
  wire ForwardB_11_OBUF_904;
  wire ForwardB_12_OBUF_905;
  wire ForwardB_13_OBUF_906;
  wire ForwardB_14_OBUF_907;
  wire ForwardB_15_OBUF_908;
  wire ForwardB_16_OBUF_909;
  wire ForwardB_17_OBUF_910;
  wire ForwardB_18_OBUF_911;
  wire ForwardB_19_OBUF_912;
  wire ForwardB_1_OBUF_913;
  wire ForwardB_20_OBUF_914;
  wire ForwardB_21_OBUF_915;
  wire ForwardB_22_OBUF_916;
  wire ForwardB_23_OBUF_917;
  wire ForwardB_24_OBUF_918;
  wire ForwardB_25_OBUF_919;
  wire ForwardB_26_OBUF_920;
  wire ForwardB_27_OBUF_921;
  wire ForwardB_28_OBUF_922;
  wire ForwardB_29_OBUF_923;
  wire ForwardB_2_OBUF_924;
  wire ForwardB_30_OBUF_925;
  wire ForwardB_31_OBUF_926;
  wire ForwardB_3_OBUF_927;
  wire ForwardB_4_OBUF_928;
  wire ForwardB_5_OBUF_929;
  wire ForwardB_6_OBUF_930;
  wire ForwardB_7_OBUF_931;
  wire ForwardB_8_OBUF_932;
  wire ForwardB_9_OBUF_933;
  wire M_doutb_0_OBUF_1045;
  wire M_doutb_10_OBUF_1046;
  wire M_doutb_11_OBUF_1047;
  wire M_doutb_12_OBUF_1048;
  wire M_doutb_13_OBUF_1049;
  wire M_doutb_14_OBUF_1050;
  wire M_doutb_15_OBUF_1051;
  wire M_doutb_16_OBUF_1052;
  wire M_doutb_17_OBUF_1053;
  wire M_doutb_18_OBUF_1054;
  wire M_doutb_19_OBUF_1055;
  wire M_doutb_1_OBUF_1056;
  wire M_doutb_20_OBUF_1057;
  wire M_doutb_21_OBUF_1058;
  wire M_doutb_22_OBUF_1059;
  wire M_doutb_23_OBUF_1060;
  wire M_doutb_24_OBUF_1061;
  wire M_doutb_25_OBUF_1062;
  wire M_doutb_26_OBUF_1063;
  wire M_doutb_27_OBUF_1064;
  wire M_doutb_28_OBUF_1065;
  wire M_doutb_29_OBUF_1066;
  wire M_doutb_2_OBUF_1067;
  wire M_doutb_30_OBUF_1068;
  wire M_doutb_31_OBUF_1069;
  wire M_doutb_3_OBUF_1070;
  wire M_doutb_4_OBUF_1071;
  wire M_doutb_5_OBUF_1072;
  wire M_doutb_6_OBUF_1073;
  wire M_doutb_7_OBUF_1074;
  wire M_doutb_8_OBUF_1075;
  wire M_doutb_9_OBUF_1076;
  wire Mem_addr_0_OBUF_1110;
  wire Mem_addr_10_OBUF_1111;
  wire Mem_addr_11_OBUF_1112;
  wire Mem_addr_12_OBUF_1113;
  wire Mem_addr_13_OBUF_1114;
  wire Mem_addr_14_OBUF_1115;
  wire Mem_addr_15_OBUF_1116;
  wire Mem_addr_16_OBUF_1117;
  wire Mem_addr_17_OBUF_1118;
  wire Mem_addr_18_OBUF_1119;
  wire Mem_addr_19_OBUF_1120;
  wire Mem_addr_1_OBUF_1121;
  wire Mem_addr_20_OBUF_1122;
  wire Mem_addr_21_OBUF_1123;
  wire Mem_addr_22_OBUF_1124;
  wire Mem_addr_23_OBUF_1125;
  wire Mem_addr_24_OBUF_1126;
  wire Mem_addr_25_OBUF_1127;
  wire Mem_addr_26_OBUF_1128;
  wire Mem_addr_27_OBUF_1129;
  wire Mem_addr_28_OBUF_1130;
  wire Mem_addr_29_OBUF_1131;
  wire Mem_addr_2_OBUF_1132;
  wire Mem_addr_30_OBUF_1133;
  wire Mem_addr_31_OBUF_1134;
  wire Mem_addr_3_OBUF_1135;
  wire Mem_addr_4_OBUF_1136;
  wire Mem_addr_5_OBUF_1137;
  wire Mem_addr_6_OBUF_1138;
  wire Mem_addr_7_OBUF_1139;
  wire Mem_addr_8_OBUF_1140;
  wire Mem_addr_9_OBUF_1141;
  wire MemtoReg_OBUF_1143;
  wire N100;
  wire N104;
  wire N106;
  wire N120;
  wire N126;
  wire N128;
  wire N130;
  wire N132;
  wire N134;
  wire N136;
  wire N138;
  wire N140;
  wire N142;
  wire N144;
  wire N146;
  wire N148;
  wire N150;
  wire N152;
  wire N154;
  wire N155;
  wire N161;
  wire N162;
  wire N165;
  wire N167;
  wire N169;
  wire N174;
  wire N176;
  wire N178;
  wire N195;
  wire N199;
  wire N201;
  wire N203;
  wire N205;
  wire N207;
  wire N209;
  wire N211;
  wire N213;
  wire N215;
  wire N217;
  wire N219;
  wire N221;
  wire N223;
  wire N225;
  wire N230;
  wire N232;
  wire N234;
  wire N236;
  wire N238;
  wire N240;
  wire N242;
  wire N244;
  wire N246;
  wire N248;
  wire N250;
  wire N252;
  wire N254;
  wire N256;
  wire N258;
  wire N260;
  wire N262;
  wire N264;
  wire N266;
  wire N268;
  wire N270;
  wire N272;
  wire N274;
  wire N276;
  wire N278;
  wire N280;
  wire N282;
  wire N284;
  wire N286;
  wire N288;
  wire N290;
  wire N292;
  wire N294;
  wire N296;
  wire N298;
  wire N300;
  wire N301;
  wire N303;
  wire N304;
  wire N306;
  wire N307;
  wire N309;
  wire N310;
  wire N312;
  wire N313;
  wire N315;
  wire N316;
  wire N318;
  wire N319;
  wire N32;
  wire N321;
  wire N322;
  wire N324;
  wire N325;
  wire N327;
  wire N328;
  wire N330;
  wire N331;
  wire N333;
  wire N334;
  wire N336;
  wire N338;
  wire N34;
  wire N340;
  wire N342;
  wire N344;
  wire N346;
  wire N348;
  wire N349;
  wire N351;
  wire N353;
  wire N355;
  wire N359;
  wire N36;
  wire N360;
  wire N361;
  wire N363;
  wire N365;
  wire N367;
  wire N369;
  wire N371;
  wire N373;
  wire N375;
  wire N377;
  wire N379;
  wire N38;
  wire N381;
  wire N383;
  wire N385;
  wire N387;
  wire N389;
  wire N391;
  wire N393;
  wire N395;
  wire N397;
  wire N399;
  wire N40;
  wire N401;
  wire N403;
  wire N405;
  wire N407;
  wire N409;
  wire N415;
  wire N417;
  wire N419;
  wire N42;
  wire N421;
  wire N423;
  wire N425;
  wire N427;
  wire N433;
  wire N435;
  wire N44;
  wire N443;
  wire N445;
  wire N447;
  wire N449;
  wire N45;
  wire N451;
  wire N453;
  wire N455;
  wire N457;
  wire N459;
  wire N461;
  wire N463;
  wire N465;
  wire N467;
  wire N468;
  wire N469;
  wire N47;
  wire N470;
  wire N471;
  wire N472;
  wire N473;
  wire N474;
  wire N475;
  wire N476;
  wire N477;
  wire N478;
  wire N479;
  wire N480;
  wire N481;
  wire N482;
  wire N483;
  wire N484;
  wire N485;
  wire N486;
  wire N487;
  wire N488;
  wire N489;
  wire N490;
  wire N491;
  wire N492;
  wire N493;
  wire N494;
  wire N495;
  wire N496;
  wire N497;
  wire N498;
  wire N499;
  wire N50;
  wire N500;
  wire N501;
  wire N502;
  wire N503;
  wire N504;
  wire N505;
  wire N506;
  wire N507;
  wire N508;
  wire N509;
  wire N51;
  wire N510;
  wire N511;
  wire N512;
  wire N513;
  wire N514;
  wire N515;
  wire N516;
  wire N517;
  wire N518;
  wire N519;
  wire N520;
  wire N521;
  wire N522;
  wire N523;
  wire N524;
  wire N525;
  wire N526;
  wire N527;
  wire N528;
  wire N529;
  wire N53;
  wire N530;
  wire N531;
  wire N532;
  wire N533;
  wire N534;
  wire N535;
  wire N536;
  wire N537;
  wire N538;
  wire N539;
  wire N54;
  wire N540;
  wire N541;
  wire N542;
  wire N543;
  wire N544;
  wire N545;
  wire N546;
  wire N547;
  wire N548;
  wire N549;
  wire N550;
  wire N551;
  wire N552;
  wire N553;
  wire N554;
  wire N555;
  wire N556;
  wire N557;
  wire N558;
  wire N559;
  wire N56;
  wire N560;
  wire N561;
  wire N562;
  wire N563;
  wire N564;
  wire N565;
  wire N566;
  wire N567;
  wire N568;
  wire N569;
  wire N57;
  wire N570;
  wire N571;
  wire N572;
  wire N573;
  wire N574;
  wire N575;
  wire N576;
  wire N577;
  wire N578;
  wire N579;
  wire N580;
  wire N581;
  wire N582;
  wire N583;
  wire N584;
  wire N585;
  wire N586;
  wire N587;
  wire N588;
  wire N589;
  wire N59;
  wire N590;
  wire N591;
  wire N592;
  wire N593;
  wire N594;
  wire N595;
  wire N596;
  wire N597;
  wire N598;
  wire N599;
  wire N60;
  wire N600;
  wire N601;
  wire N602;
  wire N603;
  wire N604;
  wire N605;
  wire N606;
  wire N607;
  wire N62;
  wire N65;
  wire N66;
  wire N68;
  wire N69;
  wire N71;
  wire N72;
  wire N74;
  wire N77;
  wire N79;
  wire N81;
  wire N83;
  wire N85;
  wire N86;
  wire N88;
  wire N89;
  wire N91;
  wire N92;
  wire N98;
  wire PCWrite_OBUF_1547;
  wire PC_En_Conflict_OBUF_1549;
  wire PC_En_Start_OBUF_1551;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<0>_rt_1553 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_1555 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_1557 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_1559 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_1561 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_1563 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_1565 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_1567 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_1569 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_1571 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_1573 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<1>_rt_1575 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_1577 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_1579 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_1581 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_1583 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_1585 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_1587 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_1589 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_1591 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_1593 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_1595 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_1598 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_1600 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_1602 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_1604 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_1606 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_1608 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_1610 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_1612 ;
  wire \PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt_1614 ;
  wire PC_Src_0_OBUF_1649;
  wire PC_Src_1_OBUF_1650;
  wire RegDst_OBUF_1653;
  wire \RegFile/R_0_0_1654 ;
  wire \RegFile/R_0_1_1655 ;
  wire \RegFile/R_0_10_1656 ;
  wire \RegFile/R_0_11_1657 ;
  wire \RegFile/R_0_12_1658 ;
  wire \RegFile/R_0_13_1659 ;
  wire \RegFile/R_0_14_1660 ;
  wire \RegFile/R_0_15_1661 ;
  wire \RegFile/R_0_16_1662 ;
  wire \RegFile/R_0_17_1663 ;
  wire \RegFile/R_0_18_1664 ;
  wire \RegFile/R_0_19_1665 ;
  wire \RegFile/R_0_2_1666 ;
  wire \RegFile/R_0_20_1667 ;
  wire \RegFile/R_0_21_1668 ;
  wire \RegFile/R_0_22_1669 ;
  wire \RegFile/R_0_23_1670 ;
  wire \RegFile/R_0_24_1671 ;
  wire \RegFile/R_0_25_1672 ;
  wire \RegFile/R_0_26_1673 ;
  wire \RegFile/R_0_27_1674 ;
  wire \RegFile/R_0_28_1675 ;
  wire \RegFile/R_0_29_1676 ;
  wire \RegFile/R_0_3_1677 ;
  wire \RegFile/R_0_30_1678 ;
  wire \RegFile/R_0_31_1679 ;
  wire \RegFile/R_0_4_1680 ;
  wire \RegFile/R_0_5_1681 ;
  wire \RegFile/R_0_6_1682 ;
  wire \RegFile/R_0_7_1683 ;
  wire \RegFile/R_0_8_1684 ;
  wire \RegFile/R_0_9_1685 ;
  wire \RegFile/R_0_not0001 ;
  wire SelectA_OBUF_1689;
  wire SelectB_OBUF_1691;
  wire WB_value_0_OBUF_1724;
  wire WB_value_10_OBUF_1725;
  wire WB_value_11_OBUF_1726;
  wire WB_value_12_OBUF_1727;
  wire WB_value_13_OBUF_1728;
  wire WB_value_14_OBUF_1729;
  wire WB_value_15_OBUF_1730;
  wire WB_value_16_OBUF_1731;
  wire WB_value_17_OBUF_1732;
  wire WB_value_18_OBUF_1733;
  wire WB_value_19_OBUF_1734;
  wire WB_value_1_OBUF_1735;
  wire WB_value_20_OBUF_1736;
  wire WB_value_21_OBUF_1737;
  wire WB_value_22_OBUF_1738;
  wire WB_value_23_OBUF_1739;
  wire WB_value_24_OBUF_1740;
  wire WB_value_25_OBUF_1741;
  wire WB_value_26_OBUF_1742;
  wire WB_value_27_OBUF_1743;
  wire WB_value_28_OBUF_1744;
  wire WB_value_29_OBUF_1745;
  wire WB_value_2_OBUF_1746;
  wire WB_value_30_OBUF_1747;
  wire WB_value_31_OBUF_1748;
  wire WB_value_3_OBUF_1749;
  wire WB_value_4_OBUF_1750;
  wire WB_value_5_OBUF_1751;
  wire WB_value_6_OBUF_1752;
  wire WB_value_7_OBUF_1753;
  wire WB_value_8_OBUF_1754;
  wire WB_value_9_OBUF_1755;
  wire ackstate_0_OBUF_1763;
  wire ackstate_1_OBUF_1764;
  wire ackstate_2_OBUF_1765;
  wire ackstate_3_OBUF_1766;
  wire ackstate_4_OBUF_1767;
  wire alu_a_0_OBUF_1800;
  wire alu_a_10_OBUF_1801;
  wire alu_a_11_OBUF_1802;
  wire alu_a_12_OBUF_1803;
  wire alu_a_13_OBUF_1804;
  wire alu_a_14_OBUF_1805;
  wire alu_a_15_OBUF_1806;
  wire alu_a_16_OBUF_1807;
  wire alu_a_17_OBUF_1808;
  wire alu_a_18_OBUF_1809;
  wire alu_a_19_OBUF_1810;
  wire alu_a_1_OBUF_1811;
  wire alu_a_20_OBUF_1812;
  wire alu_a_21_OBUF_1813;
  wire alu_a_22_OBUF_1814;
  wire alu_a_23_OBUF_1815;
  wire alu_a_24_OBUF_1816;
  wire alu_a_25_OBUF_1817;
  wire alu_a_26_OBUF_1818;
  wire alu_a_27_OBUF_1819;
  wire alu_a_28_OBUF_1820;
  wire alu_a_29_OBUF_1821;
  wire alu_a_2_OBUF_1822;
  wire alu_a_30_OBUF_1823;
  wire alu_a_31_OBUF_1824;
  wire alu_a_3_OBUF_1825;
  wire alu_a_4_OBUF_1826;
  wire alu_a_5_OBUF_1827;
  wire alu_a_6_OBUF_1828;
  wire alu_a_7_OBUF_1829;
  wire alu_a_8_OBUF_1830;
  wire alu_a_9_OBUF_1831;
  wire alu_b_0_OBUF_1864;
  wire alu_b_17_OBUF_1865;
  wire alu_b_18_OBUF_1866;
  wire alu_b_19_OBUF_1867;
  wire alu_b_1_OBUF_1868;
  wire alu_b_20_OBUF_1869;
  wire alu_b_21_OBUF_1870;
  wire alu_b_22_OBUF_1871;
  wire alu_b_23_OBUF_1872;
  wire alu_b_24_OBUF_1873;
  wire alu_b_25_OBUF_1874;
  wire alu_b_26_OBUF_1875;
  wire alu_b_27_OBUF_1876;
  wire alu_b_28_OBUF_1877;
  wire alu_b_29_OBUF_1878;
  wire alu_b_30_OBUF_1879;
  wire alu_b_31_OBUF_1880;
  wire alu_op_1_OBUF_1885;
  wire alu_result_0_OBUF_1950;
  wire alu_result_10_OBUF_1951;
  wire alu_result_11_OBUF_1952;
  wire alu_result_12_OBUF_1953;
  wire alu_result_13_OBUF_1954;
  wire alu_result_14_OBUF_1955;
  wire alu_result_15_OBUF_1956;
  wire alu_result_16_OBUF_1957;
  wire alu_result_17_OBUF_1958;
  wire alu_result_18_OBUF_1959;
  wire alu_result_19_OBUF_1960;
  wire alu_result_1_OBUF_1961;
  wire alu_result_20_OBUF_1962;
  wire alu_result_21_OBUF_1963;
  wire alu_result_22_OBUF_1964;
  wire alu_result_23_OBUF_1965;
  wire alu_result_24_OBUF_1966;
  wire alu_result_25_OBUF_1967;
  wire alu_result_26_OBUF_1968;
  wire alu_result_27_OBUF_1969;
  wire alu_result_28_OBUF_1970;
  wire alu_result_29_OBUF_1971;
  wire alu_result_2_OBUF_1972;
  wire alu_result_30_OBUF_1973;
  wire alu_result_31_OBUF_1974;
  wire alu_result_3_OBUF_1975;
  wire alu_result_4_OBUF_1976;
  wire alu_result_5_OBUF_1977;
  wire alu_result_6_OBUF_1978;
  wire alu_result_7_OBUF_1979;
  wire alu_result_8_OBUF_1980;
  wire alu_result_9_OBUF_1981;
  wire bubble_OBUF_1986;
  wire clk_BUFGP_1988;
  wire flush_OBUF_1994;
  wire fromWB_OBUF_1996;
  wire \myALU/ALU_POSITIVE15_2067 ;
  wire \myALU/ALU_POSITIVE23 ;
  wire \myALU/ALU_POSITIVE231_2069 ;
  wire \myALU/ALU_POSITIVE36_2070 ;
  wire \myALU/ALU_POSITIVE5_2071 ;
  wire \myALU/ALU_POSITIVE56_2072 ;
  wire \myALU/ALU_POSITIVE65_2073 ;
  wire \myALU/ALU_POSITIVE75_2074 ;
  wire \myALU/ALU_POSITIVE82_2075 ;
  wire next_PC_0_OBUF_2186;
  wire next_PC_10_OBUF_2187;
  wire next_PC_11_OBUF_2188;
  wire next_PC_12_OBUF_2189;
  wire next_PC_13_OBUF_2190;
  wire next_PC_14_OBUF_2191;
  wire next_PC_15_OBUF_2192;
  wire next_PC_16_OBUF_2193;
  wire next_PC_17_OBUF_2194;
  wire next_PC_18_OBUF_2195;
  wire next_PC_19_OBUF_2196;
  wire next_PC_1_OBUF_2197;
  wire next_PC_20_OBUF_2198;
  wire next_PC_21_OBUF_2199;
  wire next_PC_22_OBUF_2200;
  wire next_PC_23_OBUF_2201;
  wire next_PC_24_OBUF_2202;
  wire next_PC_25_OBUF_2203;
  wire next_PC_26_OBUF_2204;
  wire next_PC_27_OBUF_2205;
  wire next_PC_28_OBUF_2206;
  wire next_PC_29_OBUF_2207;
  wire next_PC_2_OBUF_2208;
  wire next_PC_30_OBUF_2209;
  wire next_PC_31_OBUF_2210;
  wire next_PC_3_OBUF_2211;
  wire next_PC_4_OBUF_2212;
  wire next_PC_5_OBUF_2213;
  wire next_PC_6_OBUF_2214;
  wire next_PC_7_OBUF_2215;
  wire next_PC_8_OBUF_2216;
  wire next_PC_9_OBUF_2217;
  wire reg_datain_0_OBUF_2399;
  wire reg_datain_10_OBUF_2400;
  wire reg_datain_11_OBUF_2401;
  wire reg_datain_12_OBUF_2402;
  wire reg_datain_13_OBUF_2403;
  wire reg_datain_14_OBUF_2404;
  wire reg_datain_15_OBUF_2405;
  wire reg_datain_16_OBUF_2406;
  wire reg_datain_17_OBUF_2407;
  wire reg_datain_18_OBUF_2408;
  wire reg_datain_19_OBUF_2409;
  wire reg_datain_1_OBUF_2410;
  wire reg_datain_20_OBUF_2411;
  wire reg_datain_21_OBUF_2412;
  wire reg_datain_22_OBUF_2413;
  wire reg_datain_23_OBUF_2414;
  wire reg_datain_24_OBUF_2415;
  wire reg_datain_25_OBUF_2416;
  wire reg_datain_26_OBUF_2417;
  wire reg_datain_27_OBUF_2418;
  wire reg_datain_28_OBUF_2419;
  wire reg_datain_29_OBUF_2420;
  wire reg_datain_2_OBUF_2421;
  wire reg_datain_30_OBUF_2422;
  wire reg_datain_31_OBUF_2423;
  wire reg_datain_3_OBUF_2424;
  wire reg_datain_4_OBUF_2425;
  wire reg_datain_5_OBUF_2426;
  wire reg_datain_6_OBUF_2427;
  wire reg_datain_7_OBUF_2428;
  wire reg_datain_8_OBUF_2429;
  wire reg_datain_9_OBUF_2430;
  wire reg_realdatain_0_OBUF_2495;
  wire reg_realdatain_10_OBUF_2496;
  wire reg_realdatain_11_OBUF_2497;
  wire reg_realdatain_12_OBUF_2498;
  wire reg_realdatain_13_OBUF_2499;
  wire reg_realdatain_14_OBUF_2500;
  wire reg_realdatain_15_OBUF_2501;
  wire reg_realdatain_16_OBUF_2502;
  wire reg_realdatain_17_OBUF_2503;
  wire reg_realdatain_18_OBUF_2504;
  wire reg_realdatain_19_OBUF_2505;
  wire reg_realdatain_1_OBUF_2506;
  wire reg_realdatain_20_OBUF_2507;
  wire reg_realdatain_21_OBUF_2508;
  wire reg_realdatain_22_OBUF_2509;
  wire reg_realdatain_23_OBUF_2510;
  wire reg_realdatain_24_OBUF_2511;
  wire reg_realdatain_25_OBUF_2512;
  wire reg_realdatain_26_OBUF_2513;
  wire reg_realdatain_27_OBUF_2514;
  wire reg_realdatain_28_OBUF_2515;
  wire reg_realdatain_29_OBUF_2516;
  wire reg_realdatain_2_OBUF_2517;
  wire reg_realdatain_30_OBUF_2518;
  wire reg_realdatain_31_OBUF_2519;
  wire reg_realdatain_3_OBUF_2520;
  wire reg_realdatain_4_OBUF_2521;
  wire reg_realdatain_5_OBUF_2522;
  wire reg_realdatain_6_OBUF_2523;
  wire reg_realdatain_7_OBUF_2524;
  wire reg_realdatain_8_OBUF_2525;
  wire reg_realdatain_9_OBUF_2526;
  wire rst_n_IBUF_2528;
  wire [31 : 0] \ALURESULT/alu_out ;
  wire [1 : 0] \CONTROL/BrSigEn ;
  wire [1 : 0] \CONTROL/FSM1/ALUOp ;
  wire [1 : 0] \CONTROL/FSM1/ALUOp_mux0000 ;
  wire [1 : 1] \CONTROL/FSM1/ALU_SrcB ;
  wire [0 : 0] \CONTROL/FSM1/ALU_SrcB_mux0000 ;
  wire [31 : 0] \CONTROL/FSM1/WB_value ;
  wire [4 : 0] \CONTROL/FSM1/next_state ;
  wire [4 : 0] \CONTROL/FSM1/next_state_mux0000 ;
  wire [2 : 0] \CONTROL/FSM1/stage ;
  wire [2 : 0] \CONTROL/FSM1/stage_mux0000 ;
  wire [4 : 0] \CONTROL/FSM1/state ;
  wire [6 : 2] \CONTROL/FSM1/state_mux0000 ;
  wire [1 : 0] \CONTROL/FSM2/ALUOp ;
  wire [1 : 0] \CONTROL/FSM2/ALUOp_mux0000 ;
  wire [1 : 1] \CONTROL/FSM2/ALU_SrcB ;
  wire [0 : 0] \CONTROL/FSM2/ALU_SrcB_mux0000 ;
  wire [31 : 0] \CONTROL/FSM2/WB_value ;
  wire [4 : 0] \CONTROL/FSM2/next_state ;
  wire [4 : 0] \CONTROL/FSM2/next_state_mux0000 ;
  wire [2 : 0] \CONTROL/FSM2/stage ;
  wire [2 : 0] \CONTROL/FSM2/stage_mux0000 ;
  wire [4 : 0] \CONTROL/FSM2/state ;
  wire [6 : 2] \CONTROL/FSM2/state_mux0000 ;
  wire [1 : 0] \CONTROL/FSM3/ALUOp ;
  wire [1 : 0] \CONTROL/FSM3/ALUOp_mux0000 ;
  wire [1 : 1] \CONTROL/FSM3/ALU_SrcB ;
  wire [0 : 0] \CONTROL/FSM3/ALU_SrcB_mux0000 ;
  wire [31 : 0] \CONTROL/FSM3/WB_value ;
  wire [4 : 0] \CONTROL/FSM3/next_state ;
  wire [4 : 0] \CONTROL/FSM3/next_state_mux0000 ;
  wire [2 : 0] \CONTROL/FSM3/stage ;
  wire [2 : 0] \CONTROL/FSM3/stage_mux0000 ;
  wire [4 : 0] \CONTROL/FSM3/state ;
  wire [6 : 2] \CONTROL/FSM3/state_mux0000 ;
  wire [1 : 0] \CONTROL/FSM4/ALUOp ;
  wire [1 : 0] \CONTROL/FSM4/ALUOp_mux0000 ;
  wire [1 : 1] \CONTROL/FSM4/ALU_SrcB ;
  wire [0 : 0] \CONTROL/FSM4/ALU_SrcB_mux0000 ;
  wire [31 : 0] \CONTROL/FSM4/WB_value ;
  wire [4 : 0] \CONTROL/FSM4/next_state ;
  wire [4 : 0] \CONTROL/FSM4/next_state_mux0000 ;
  wire [2 : 0] \CONTROL/FSM4/stage ;
  wire [2 : 0] \CONTROL/FSM4/stage_mux0000 ;
  wire [4 : 0] \CONTROL/FSM4/state ;
  wire [6 : 2] \CONTROL/FSM4/state_mux0000 ;
  wire [1 : 0] \CONTROL/FSM5/ALUOp ;
  wire [1 : 0] \CONTROL/FSM5/ALUOp_mux0000 ;
  wire [1 : 1] \CONTROL/FSM5/ALU_SrcB ;
  wire [0 : 0] \CONTROL/FSM5/ALU_SrcB_mux0000 ;
  wire [31 : 0] \CONTROL/FSM5/WB_value ;
  wire [4 : 0] \CONTROL/FSM5/next_state ;
  wire [4 : 0] \CONTROL/FSM5/next_state_mux0000 ;
  wire [2 : 0] \CONTROL/FSM5/stage ;
  wire [2 : 0] \CONTROL/FSM5/stage_mux0000 ;
  wire [4 : 0] \CONTROL/FSM5/state ;
  wire [6 : 2] \CONTROL/FSM5/state_mux0000 ;
  wire [1 : 0] \CONTROL/JmpSigEn ;
  wire [4 : 4] \CONTROL/PC_En_Conflictstate ;
  wire [4 : 0] \CONTROL/stateofALU ;
  wire [31 : 0] \InstrData/data ;
  wire [31 : 0] \PCReg/PC ;
  wire [30 : 0] \PC_Generator/Madd_next_PC_addsub0000_cy ;
  wire [2 : 2] \PC_Generator/Madd_next_PC_addsub0000_lut ;
  wire [31 : 0] \PC_Generator/next_PC_addsub0000 ;
  wire [6 : 0] \myALU/ALU_ZERO_wg_cy ;
  wire [7 : 0] \myALU/ALU_ZERO_wg_lut ;
  wire [30 : 0] \myALU/Maddsub_alu_out_addsub0000_cy ;
  wire [31 : 0] \myALU/Maddsub_alu_out_addsub0000_lut ;
  wire [31 : 0] \reg_out/r2_dout ;
  GND   XST_GND (
    .G(BranchSig_OBUF_64)
  );
  VCC   XST_VCC (
    .P(alu_op_1_OBUF_1885)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_414  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [9]),
    .I2(ForwardB_9_OBUF_933),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_414_42 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_413  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [8]),
    .I2(ForwardB_8_OBUF_932),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_413_41 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_412  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [7]),
    .I2(ForwardB_7_OBUF_931),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_412_40 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_411  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [6]),
    .I2(ForwardB_6_OBUF_930),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_411_39 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_410  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [5]),
    .I2(ForwardB_5_OBUF_929),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_410_38 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_49  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [4]),
    .I2(ForwardB_4_OBUF_928),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_49_50 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_48  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [3]),
    .I2(ForwardB_3_OBUF_927),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_48_49 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb_47  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [2]),
    .I2(ForwardB_2_OBUF_924),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_47_48 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_46  (
    .I0(\reg_out/r2_dout [16]),
    .I1(ForwardB_16_OBUF_909),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_46_47 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_45  (
    .I0(\reg_out/r2_dout [15]),
    .I1(ForwardB_15_OBUF_908),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_45_46 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_44  (
    .I0(\reg_out/r2_dout [14]),
    .I1(ForwardB_14_OBUF_907),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_44_45 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_43  (
    .I0(\reg_out/r2_dout [13]),
    .I1(ForwardB_13_OBUF_906),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_43_44 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_42  (
    .I0(\reg_out/r2_dout [12]),
    .I1(ForwardB_12_OBUF_905),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_42_43 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_41  (
    .I0(\reg_out/r2_dout [11]),
    .I1(ForwardB_11_OBUF_904),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_41_37 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb_4  (
    .I0(\reg_out/r2_dout [10]),
    .I1(ForwardB_10_OBUF_903),
    .I2(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(\ALU_OPB_MUX/Mmux_alu_opb_4_36 )
  );
  FDCE   \PCReg/PC_31  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_31_OBUF_2210),
    .Q(\PCReg/PC [31])
  );
  FDCE   \PCReg/PC_30  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_30_OBUF_2209),
    .Q(\PCReg/PC [30])
  );
  FDCE   \PCReg/PC_29  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_29_OBUF_2207),
    .Q(\PCReg/PC [29])
  );
  FDCE   \PCReg/PC_28  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_28_OBUF_2206),
    .Q(\PCReg/PC [28])
  );
  FDCE   \PCReg/PC_27  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_27_OBUF_2205),
    .Q(\PCReg/PC [27])
  );
  FDCE   \PCReg/PC_26  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_26_OBUF_2204),
    .Q(\PCReg/PC [26])
  );
  FDCE   \PCReg/PC_25  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_25_OBUF_2203),
    .Q(\PCReg/PC [25])
  );
  FDCE   \PCReg/PC_24  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_24_OBUF_2202),
    .Q(\PCReg/PC [24])
  );
  FDCE   \PCReg/PC_23  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_23_OBUF_2201),
    .Q(\PCReg/PC [23])
  );
  FDCE   \PCReg/PC_22  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_22_OBUF_2200),
    .Q(\PCReg/PC [22])
  );
  FDCE   \PCReg/PC_21  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_21_OBUF_2199),
    .Q(\PCReg/PC [21])
  );
  FDCE   \PCReg/PC_20  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_20_OBUF_2198),
    .Q(\PCReg/PC [20])
  );
  FDCE   \PCReg/PC_19  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_19_OBUF_2196),
    .Q(\PCReg/PC [19])
  );
  FDCE   \PCReg/PC_18  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_18_OBUF_2195),
    .Q(\PCReg/PC [18])
  );
  FDCE   \PCReg/PC_17  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_17_OBUF_2194),
    .Q(\PCReg/PC [17])
  );
  FDCE   \PCReg/PC_16  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_16_OBUF_2193),
    .Q(\PCReg/PC [16])
  );
  FDCE   \PCReg/PC_15  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_15_OBUF_2192),
    .Q(\PCReg/PC [15])
  );
  FDCE   \PCReg/PC_14  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_14_OBUF_2191),
    .Q(\PCReg/PC [14])
  );
  FDCE   \PCReg/PC_13  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_13_OBUF_2190),
    .Q(\PCReg/PC [13])
  );
  FDCE   \PCReg/PC_12  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_12_OBUF_2189),
    .Q(\PCReg/PC [12])
  );
  FDCE   \PCReg/PC_11  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_11_OBUF_2188),
    .Q(\PCReg/PC [11])
  );
  FDCE   \PCReg/PC_10  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_10_OBUF_2187),
    .Q(\PCReg/PC [10])
  );
  FDCE   \PCReg/PC_9  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_9_OBUF_2217),
    .Q(\PCReg/PC [9])
  );
  FDCE   \PCReg/PC_8  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_8_OBUF_2216),
    .Q(\PCReg/PC [8])
  );
  FDCE   \PCReg/PC_7  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_7_OBUF_2215),
    .Q(\PCReg/PC [7])
  );
  FDCE   \PCReg/PC_6  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_6_OBUF_2214),
    .Q(\PCReg/PC [6])
  );
  FDCE   \PCReg/PC_5  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_5_OBUF_2213),
    .Q(\PCReg/PC [5])
  );
  FDCE   \PCReg/PC_4  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_4_OBUF_2212),
    .Q(\PCReg/PC [4])
  );
  FDCE   \PCReg/PC_3  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_3_OBUF_2211),
    .Q(\PCReg/PC [3])
  );
  FDCE   \PCReg/PC_2  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_2_OBUF_2208),
    .Q(\PCReg/PC [2])
  );
  FDCE   \PCReg/PC_1  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_1_OBUF_2197),
    .Q(\PCReg/PC [1])
  );
  FDCE   \PCReg/PC_0  (
    .C(clk_BUFGP_1988),
    .CE(PCWrite_OBUF_1547),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(next_PC_0_OBUF_2186),
    .Q(\PCReg/PC [0])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<31>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [30]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt_1614 ),
    .O(\PC_Generator/next_PC_addsub0000 [31])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<30>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [29]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_1598 ),
    .O(\PC_Generator/next_PC_addsub0000 [30])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<30>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [29]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_1598 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [30])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<29>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [28]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_1595 ),
    .O(\PC_Generator/next_PC_addsub0000 [29])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<29>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [28]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_1595 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [29])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<28>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [27]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_1593 ),
    .O(\PC_Generator/next_PC_addsub0000 [28])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<28>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [27]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_1593 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [28])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<27>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [26]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_1591 ),
    .O(\PC_Generator/next_PC_addsub0000 [27])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<27>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [26]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_1591 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [27])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<26>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [25]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_1589 ),
    .O(\PC_Generator/next_PC_addsub0000 [26])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<26>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [25]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_1589 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [26])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<25>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [24]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_1587 ),
    .O(\PC_Generator/next_PC_addsub0000 [25])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<25>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [24]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_1587 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [25])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<24>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [23]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_1585 ),
    .O(\PC_Generator/next_PC_addsub0000 [24])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<24>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [23]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_1585 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [24])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<23>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [22]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_1583 ),
    .O(\PC_Generator/next_PC_addsub0000 [23])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<23>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [22]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_1583 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [23])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<22>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [21]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_1581 ),
    .O(\PC_Generator/next_PC_addsub0000 [22])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<22>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [21]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_1581 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [22])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<21>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [20]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_1579 ),
    .O(\PC_Generator/next_PC_addsub0000 [21])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<21>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [20]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_1579 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [21])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<20>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [19]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_1577 ),
    .O(\PC_Generator/next_PC_addsub0000 [20])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<20>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [19]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_1577 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [20])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<19>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [18]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_1573 ),
    .O(\PC_Generator/next_PC_addsub0000 [19])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<19>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [18]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_1573 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [19])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<18>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [17]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_1571 ),
    .O(\PC_Generator/next_PC_addsub0000 [18])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<18>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [17]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_1571 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [18])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<17>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [16]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_1569 ),
    .O(\PC_Generator/next_PC_addsub0000 [17])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<17>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [16]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_1569 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [17])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<16>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [15]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_1567 ),
    .O(\PC_Generator/next_PC_addsub0000 [16])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<16>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [15]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_1567 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [16])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<15>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [14]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_1565 ),
    .O(\PC_Generator/next_PC_addsub0000 [15])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<15>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [14]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_1565 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [15])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<14>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [13]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_1563 ),
    .O(\PC_Generator/next_PC_addsub0000 [14])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<14>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [13]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_1563 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [14])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<13>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [12]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_1561 ),
    .O(\PC_Generator/next_PC_addsub0000 [13])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<13>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [12]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_1561 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [13])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<12>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [11]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_1559 ),
    .O(\PC_Generator/next_PC_addsub0000 [12])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<12>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [11]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_1559 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [12])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<11>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [10]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_1557 ),
    .O(\PC_Generator/next_PC_addsub0000 [11])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<11>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [10]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_1557 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [11])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<10>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [9]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_1555 ),
    .O(\PC_Generator/next_PC_addsub0000 [10])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<10>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [9]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_1555 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [10])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<9>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [8]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_1612 ),
    .O(\PC_Generator/next_PC_addsub0000 [9])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<9>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [8]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_1612 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [9])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<8>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [7]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_1610 ),
    .O(\PC_Generator/next_PC_addsub0000 [8])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<8>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [7]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_1610 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [8])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<7>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [6]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_1608 ),
    .O(\PC_Generator/next_PC_addsub0000 [7])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<7>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [6]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_1608 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [7])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<6>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [5]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_1606 ),
    .O(\PC_Generator/next_PC_addsub0000 [6])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<6>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [5]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_1606 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [6])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<5>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [4]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_1604 ),
    .O(\PC_Generator/next_PC_addsub0000 [5])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<5>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [4]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_1604 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [5])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<4>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [3]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_1602 ),
    .O(\PC_Generator/next_PC_addsub0000 [4])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<4>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [3]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_1602 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [4])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<3>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [2]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_1600 ),
    .O(\PC_Generator/next_PC_addsub0000 [3])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<3>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [2]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_1600 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [3])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<2>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [1]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_lut [2]),
    .O(\PC_Generator/next_PC_addsub0000 [2])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<2>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [1]),
    .DI(\PCReg/PC [2]),
    .S(\PC_Generator/Madd_next_PC_addsub0000_lut [2]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [2])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<1>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [0]),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<1>_rt_1575 ),
    .O(\PC_Generator/next_PC_addsub0000 [1])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<1>  (
    .CI(\PC_Generator/Madd_next_PC_addsub0000_cy [0]),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<1>_rt_1575 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [1])
  );
  XORCY   \PC_Generator/Madd_next_PC_addsub0000_xor<0>  (
    .CI(BranchSig_OBUF_64),
    .LI(\PC_Generator/Madd_next_PC_addsub0000_cy<0>_rt_1553 ),
    .O(\PC_Generator/next_PC_addsub0000 [0])
  );
  MUXCY   \PC_Generator/Madd_next_PC_addsub0000_cy<0>  (
    .CI(BranchSig_OBUF_64),
    .DI(BranchSig_OBUF_64),
    .S(\PC_Generator/Madd_next_PC_addsub0000_cy<0>_rt_1553 ),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy [0])
  );
  FDC   \InstrData/data_31  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_31_OBUF_1069),
    .Q(\InstrData/data [31])
  );
  FDC   \InstrData/data_30  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_30_OBUF_1068),
    .Q(\InstrData/data [30])
  );
  FDC   \InstrData/data_29  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_29_OBUF_1066),
    .Q(\InstrData/data [29])
  );
  FDC   \InstrData/data_28  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_28_OBUF_1065),
    .Q(\InstrData/data [28])
  );
  FDC   \InstrData/data_27  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_27_OBUF_1064),
    .Q(\InstrData/data [27])
  );
  FDC   \InstrData/data_26  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_26_OBUF_1063),
    .Q(\InstrData/data [26])
  );
  FDC   \InstrData/data_25  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_25_OBUF_1062),
    .Q(\InstrData/data [25])
  );
  FDC   \InstrData/data_24  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_24_OBUF_1061),
    .Q(\InstrData/data [24])
  );
  FDC   \InstrData/data_23  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_23_OBUF_1060),
    .Q(\InstrData/data [23])
  );
  FDC   \InstrData/data_22  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_22_OBUF_1059),
    .Q(\InstrData/data [22])
  );
  FDC   \InstrData/data_21  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_21_OBUF_1058),
    .Q(\InstrData/data [21])
  );
  FDC   \InstrData/data_20  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_20_OBUF_1057),
    .Q(\InstrData/data [20])
  );
  FDC   \InstrData/data_19  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_19_OBUF_1055),
    .Q(\InstrData/data [19])
  );
  FDC   \InstrData/data_18  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_18_OBUF_1054),
    .Q(\InstrData/data [18])
  );
  FDC   \InstrData/data_17  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_17_OBUF_1053),
    .Q(\InstrData/data [17])
  );
  FDC   \InstrData/data_16  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_16_OBUF_1052),
    .Q(\InstrData/data [16])
  );
  FDC   \InstrData/data_15  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_15_OBUF_1051),
    .Q(\InstrData/data [15])
  );
  FDC   \InstrData/data_14  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_14_OBUF_1050),
    .Q(\InstrData/data [14])
  );
  FDC   \InstrData/data_13  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_13_OBUF_1049),
    .Q(\InstrData/data [13])
  );
  FDC   \InstrData/data_12  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_12_OBUF_1048),
    .Q(\InstrData/data [12])
  );
  FDC   \InstrData/data_11  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_11_OBUF_1047),
    .Q(\InstrData/data [11])
  );
  FDC   \InstrData/data_10  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_10_OBUF_1046),
    .Q(\InstrData/data [10])
  );
  FDC   \InstrData/data_9  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_9_OBUF_1076),
    .Q(\InstrData/data [9])
  );
  FDC   \InstrData/data_8  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_8_OBUF_1075),
    .Q(\InstrData/data [8])
  );
  FDC   \InstrData/data_7  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_7_OBUF_1074),
    .Q(\InstrData/data [7])
  );
  FDC   \InstrData/data_6  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_6_OBUF_1073),
    .Q(\InstrData/data [6])
  );
  FDC   \InstrData/data_5  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_5_OBUF_1072),
    .Q(\InstrData/data [5])
  );
  FDC   \InstrData/data_4  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_4_OBUF_1071),
    .Q(\InstrData/data [4])
  );
  FDC   \InstrData/data_3  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_3_OBUF_1070),
    .Q(\InstrData/data [3])
  );
  FDC   \InstrData/data_2  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_2_OBUF_1067),
    .Q(\InstrData/data [2])
  );
  FDC   \InstrData/data_1  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_1_OBUF_1056),
    .Q(\InstrData/data [1])
  );
  FDC   \InstrData/data_0  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(M_doutb_0_OBUF_1045),
    .Q(\InstrData/data [0])
  );
  FDCE   \RegFile/R_0_31  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_31_OBUF_2519),
    .Q(\RegFile/R_0_31_1679 )
  );
  FDCE   \RegFile/R_0_30  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_30_OBUF_2518),
    .Q(\RegFile/R_0_30_1678 )
  );
  FDCE   \RegFile/R_0_29  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_29_OBUF_2516),
    .Q(\RegFile/R_0_29_1676 )
  );
  FDCE   \RegFile/R_0_28  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_28_OBUF_2515),
    .Q(\RegFile/R_0_28_1675 )
  );
  FDCE   \RegFile/R_0_27  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_27_OBUF_2514),
    .Q(\RegFile/R_0_27_1674 )
  );
  FDCE   \RegFile/R_0_26  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_26_OBUF_2513),
    .Q(\RegFile/R_0_26_1673 )
  );
  FDCE   \RegFile/R_0_25  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_25_OBUF_2512),
    .Q(\RegFile/R_0_25_1672 )
  );
  FDCE   \RegFile/R_0_24  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_24_OBUF_2511),
    .Q(\RegFile/R_0_24_1671 )
  );
  FDCE   \RegFile/R_0_23  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_23_OBUF_2510),
    .Q(\RegFile/R_0_23_1670 )
  );
  FDCE   \RegFile/R_0_22  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_22_OBUF_2509),
    .Q(\RegFile/R_0_22_1669 )
  );
  FDCE   \RegFile/R_0_21  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_21_OBUF_2508),
    .Q(\RegFile/R_0_21_1668 )
  );
  FDCE   \RegFile/R_0_20  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_20_OBUF_2507),
    .Q(\RegFile/R_0_20_1667 )
  );
  FDCE   \RegFile/R_0_19  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_19_OBUF_2505),
    .Q(\RegFile/R_0_19_1665 )
  );
  FDCE   \RegFile/R_0_18  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_18_OBUF_2504),
    .Q(\RegFile/R_0_18_1664 )
  );
  FDCE   \RegFile/R_0_17  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_17_OBUF_2503),
    .Q(\RegFile/R_0_17_1663 )
  );
  FDCE   \RegFile/R_0_16  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_16_OBUF_2502),
    .Q(\RegFile/R_0_16_1662 )
  );
  FDCE   \RegFile/R_0_15  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_15_OBUF_2501),
    .Q(\RegFile/R_0_15_1661 )
  );
  FDCE   \RegFile/R_0_14  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_14_OBUF_2500),
    .Q(\RegFile/R_0_14_1660 )
  );
  FDCE   \RegFile/R_0_13  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_13_OBUF_2499),
    .Q(\RegFile/R_0_13_1659 )
  );
  FDCE   \RegFile/R_0_12  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_12_OBUF_2498),
    .Q(\RegFile/R_0_12_1658 )
  );
  FDCE   \RegFile/R_0_11  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_11_OBUF_2497),
    .Q(\RegFile/R_0_11_1657 )
  );
  FDCE   \RegFile/R_0_10  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_10_OBUF_2496),
    .Q(\RegFile/R_0_10_1656 )
  );
  FDCE   \RegFile/R_0_9  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_9_OBUF_2526),
    .Q(\RegFile/R_0_9_1685 )
  );
  FDCE   \RegFile/R_0_8  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_8_OBUF_2525),
    .Q(\RegFile/R_0_8_1684 )
  );
  FDCE   \RegFile/R_0_7  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_7_OBUF_2524),
    .Q(\RegFile/R_0_7_1683 )
  );
  FDCE   \RegFile/R_0_6  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_6_OBUF_2523),
    .Q(\RegFile/R_0_6_1682 )
  );
  FDCE   \RegFile/R_0_5  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_5_OBUF_2522),
    .Q(\RegFile/R_0_5_1681 )
  );
  FDCE   \RegFile/R_0_4  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_4_OBUF_2521),
    .Q(\RegFile/R_0_4_1680 )
  );
  FDCE   \RegFile/R_0_3  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_3_OBUF_2520),
    .Q(\RegFile/R_0_3_1677 )
  );
  FDCE   \RegFile/R_0_2  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_2_OBUF_2517),
    .Q(\RegFile/R_0_2_1666 )
  );
  FDCE   \RegFile/R_0_1  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_1_OBUF_2506),
    .Q(\RegFile/R_0_1_1655 )
  );
  FDCE   \RegFile/R_0_0  (
    .C(clk_BUFGP_1988),
    .CE(\RegFile/R_0_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_realdatain_0_OBUF_2495),
    .Q(\RegFile/R_0_0_1654 )
  );
  FDC   \reg_out/r2_dout_31  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_31_1679 ),
    .Q(\reg_out/r2_dout [31])
  );
  FDC   \reg_out/r2_dout_30  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_30_1678 ),
    .Q(\reg_out/r2_dout [30])
  );
  FDC   \reg_out/r2_dout_29  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_29_1676 ),
    .Q(\reg_out/r2_dout [29])
  );
  FDC   \reg_out/r2_dout_28  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_28_1675 ),
    .Q(\reg_out/r2_dout [28])
  );
  FDC   \reg_out/r2_dout_27  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_27_1674 ),
    .Q(\reg_out/r2_dout [27])
  );
  FDC   \reg_out/r2_dout_26  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_26_1673 ),
    .Q(\reg_out/r2_dout [26])
  );
  FDC   \reg_out/r2_dout_25  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_25_1672 ),
    .Q(\reg_out/r2_dout [25])
  );
  FDC   \reg_out/r2_dout_24  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_24_1671 ),
    .Q(\reg_out/r2_dout [24])
  );
  FDC   \reg_out/r2_dout_23  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_23_1670 ),
    .Q(\reg_out/r2_dout [23])
  );
  FDC   \reg_out/r2_dout_22  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_22_1669 ),
    .Q(\reg_out/r2_dout [22])
  );
  FDC   \reg_out/r2_dout_21  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_21_1668 ),
    .Q(\reg_out/r2_dout [21])
  );
  FDC   \reg_out/r2_dout_20  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_20_1667 ),
    .Q(\reg_out/r2_dout [20])
  );
  FDC   \reg_out/r2_dout_19  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_19_1665 ),
    .Q(\reg_out/r2_dout [19])
  );
  FDC   \reg_out/r2_dout_18  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_18_1664 ),
    .Q(\reg_out/r2_dout [18])
  );
  FDC   \reg_out/r2_dout_17  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_17_1663 ),
    .Q(\reg_out/r2_dout [17])
  );
  FDC   \reg_out/r2_dout_16  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_16_1662 ),
    .Q(\reg_out/r2_dout [16])
  );
  FDC   \reg_out/r2_dout_15  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_15_1661 ),
    .Q(\reg_out/r2_dout [15])
  );
  FDC   \reg_out/r2_dout_14  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_14_1660 ),
    .Q(\reg_out/r2_dout [14])
  );
  FDC   \reg_out/r2_dout_13  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_13_1659 ),
    .Q(\reg_out/r2_dout [13])
  );
  FDC   \reg_out/r2_dout_12  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_12_1658 ),
    .Q(\reg_out/r2_dout [12])
  );
  FDC   \reg_out/r2_dout_11  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_11_1657 ),
    .Q(\reg_out/r2_dout [11])
  );
  FDC   \reg_out/r2_dout_10  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_10_1656 ),
    .Q(\reg_out/r2_dout [10])
  );
  FDC   \reg_out/r2_dout_9  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_9_1685 ),
    .Q(\reg_out/r2_dout [9])
  );
  FDC   \reg_out/r2_dout_8  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_8_1684 ),
    .Q(\reg_out/r2_dout [8])
  );
  FDC   \reg_out/r2_dout_7  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_7_1683 ),
    .Q(\reg_out/r2_dout [7])
  );
  FDC   \reg_out/r2_dout_6  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_6_1682 ),
    .Q(\reg_out/r2_dout [6])
  );
  FDC   \reg_out/r2_dout_5  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_5_1681 ),
    .Q(\reg_out/r2_dout [5])
  );
  FDC   \reg_out/r2_dout_4  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_4_1680 ),
    .Q(\reg_out/r2_dout [4])
  );
  FDC   \reg_out/r2_dout_3  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_3_1677 ),
    .Q(\reg_out/r2_dout [3])
  );
  FDC   \reg_out/r2_dout_2  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_2_1666 ),
    .Q(\reg_out/r2_dout [2])
  );
  FDC   \reg_out/r2_dout_1  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_1_1655 ),
    .Q(\reg_out/r2_dout [1])
  );
  FDC   \reg_out/r2_dout_0  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\RegFile/R_0_0_1654 ),
    .Q(\reg_out/r2_dout [0])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<31>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [30]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [31]),
    .O(alu_result_31_OBUF_1974)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<31>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_31_OBUF_1824),
    .I2(alu_b_31_OBUF_1880),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [31])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<30>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [29]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [30]),
    .O(alu_result_30_OBUF_1973)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<30>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [29]),
    .DI(alu_a_30_OBUF_1823),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [30]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [30])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<30>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_30_OBUF_1823),
    .I2(alu_b_30_OBUF_1879),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [30])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<29>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [28]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [29]),
    .O(alu_result_29_OBUF_1971)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<29>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [28]),
    .DI(alu_a_29_OBUF_1821),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [29]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [29])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<29>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_29_OBUF_1821),
    .I2(alu_b_29_OBUF_1878),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [29])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<28>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [27]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [28]),
    .O(alu_result_28_OBUF_1970)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<28>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [27]),
    .DI(alu_a_28_OBUF_1820),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [28]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [28])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<28>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_28_OBUF_1820),
    .I2(alu_b_28_OBUF_1877),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [28])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<27>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [26]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [27]),
    .O(alu_result_27_OBUF_1969)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<27>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [26]),
    .DI(alu_a_27_OBUF_1819),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [27]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [27])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<27>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_27_OBUF_1819),
    .I2(alu_b_27_OBUF_1876),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [27])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<26>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [25]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [26]),
    .O(alu_result_26_OBUF_1968)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<26>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [25]),
    .DI(alu_a_26_OBUF_1818),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [26]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [26])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<26>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_26_OBUF_1818),
    .I2(alu_b_26_OBUF_1875),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [26])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<25>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [24]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [25]),
    .O(alu_result_25_OBUF_1967)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<25>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [24]),
    .DI(alu_a_25_OBUF_1817),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [25]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [25])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<25>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_25_OBUF_1817),
    .I2(alu_b_25_OBUF_1874),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [25])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<24>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [23]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [24]),
    .O(alu_result_24_OBUF_1966)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<24>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [23]),
    .DI(alu_a_24_OBUF_1816),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [24]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [24])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<24>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_24_OBUF_1816),
    .I2(alu_b_24_OBUF_1873),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [24])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<23>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [22]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [23]),
    .O(alu_result_23_OBUF_1965)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<23>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [22]),
    .DI(alu_a_23_OBUF_1815),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [23]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [23])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<23>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_23_OBUF_1815),
    .I2(alu_b_23_OBUF_1872),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [23])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<22>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [21]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [22]),
    .O(alu_result_22_OBUF_1964)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<22>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [21]),
    .DI(alu_a_22_OBUF_1814),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [22]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [22])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<22>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_22_OBUF_1814),
    .I2(alu_b_22_OBUF_1871),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [22])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<21>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [20]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [21]),
    .O(alu_result_21_OBUF_1963)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<21>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [20]),
    .DI(alu_a_21_OBUF_1813),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [21]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [21])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<21>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_21_OBUF_1813),
    .I2(alu_b_21_OBUF_1870),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [21])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<20>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [19]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [20]),
    .O(alu_result_20_OBUF_1962)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<20>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [19]),
    .DI(alu_a_20_OBUF_1812),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [20]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [20])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<20>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_20_OBUF_1812),
    .I2(alu_b_20_OBUF_1869),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [20])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<19>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [18]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [19]),
    .O(alu_result_19_OBUF_1960)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<19>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [18]),
    .DI(alu_a_19_OBUF_1810),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [19]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [19])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<19>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_19_OBUF_1810),
    .I2(alu_b_19_OBUF_1867),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [19])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<18>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [17]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [18]),
    .O(alu_result_18_OBUF_1959)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<18>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [17]),
    .DI(alu_a_18_OBUF_1809),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [18]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [18])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<18>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_18_OBUF_1809),
    .I2(alu_b_18_OBUF_1866),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [18])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<17>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [16]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [17]),
    .O(alu_result_17_OBUF_1958)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<17>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [16]),
    .DI(alu_a_17_OBUF_1808),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [17]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [17])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<17>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_17_OBUF_1808),
    .I2(alu_b_17_OBUF_1865),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [17])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<16>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [15]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [16]),
    .O(alu_result_16_OBUF_1957)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<16>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [15]),
    .DI(alu_a_16_OBUF_1807),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [16]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [16])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<16>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_16_OBUF_1807),
    .I2(\ALU_OPB_MUX/Mmux_alu_opb_46_47 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [16])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<15>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [14]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [15]),
    .O(alu_result_15_OBUF_1956)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<15>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [14]),
    .DI(alu_a_15_OBUF_1806),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [15]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [15])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<15>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_15_OBUF_1806),
    .I2(\ALU_OPB_MUX/Mmux_alu_opb_45_46 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [15])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<14>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [13]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [14]),
    .O(alu_result_14_OBUF_1955)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<14>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [13]),
    .DI(alu_a_14_OBUF_1805),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [14]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [14])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<14>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_14_OBUF_1805),
    .I2(\ALU_OPB_MUX/Mmux_alu_opb_44_45 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [14])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<13>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [12]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [13]),
    .O(alu_result_13_OBUF_1954)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<13>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [12]),
    .DI(alu_a_13_OBUF_1804),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [13]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [13])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<13>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_13_OBUF_1804),
    .I2(\ALU_OPB_MUX/Mmux_alu_opb_43_44 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [13])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<12>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [11]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [12]),
    .O(alu_result_12_OBUF_1953)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<12>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [11]),
    .DI(alu_a_12_OBUF_1803),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [12]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [12])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<11>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [10]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [11]),
    .O(alu_result_11_OBUF_1952)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<11>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [10]),
    .DI(alu_a_11_OBUF_1802),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [11]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [11])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<10>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [9]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [10]),
    .O(alu_result_10_OBUF_1951)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<10>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [9]),
    .DI(alu_a_10_OBUF_1801),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [10]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [10])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<9>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [8]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [9]),
    .O(alu_result_9_OBUF_1981)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<9>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [8]),
    .DI(alu_a_9_OBUF_1831),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [9]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [9])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<8>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [7]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [8]),
    .O(alu_result_8_OBUF_1980)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<8>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [7]),
    .DI(alu_a_8_OBUF_1830),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [8]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [8])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<7>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [6]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [7]),
    .O(alu_result_7_OBUF_1979)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<7>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [6]),
    .DI(alu_a_7_OBUF_1829),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [7]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [7])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<6>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [5]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [6]),
    .O(alu_result_6_OBUF_1978)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<6>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [5]),
    .DI(alu_a_6_OBUF_1828),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [6]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [6])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<5>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [4]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [5]),
    .O(alu_result_5_OBUF_1977)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<5>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [4]),
    .DI(alu_a_5_OBUF_1827),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [5]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [5])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<4>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [3]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [4]),
    .O(alu_result_4_OBUF_1976)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<4>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [3]),
    .DI(alu_a_4_OBUF_1826),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [4]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [4])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<3>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [2]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [3]),
    .O(alu_result_3_OBUF_1975)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<3>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [2]),
    .DI(alu_a_3_OBUF_1825),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [3]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [3])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<2>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [1]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [2]),
    .O(alu_result_2_OBUF_1972)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<2>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [1]),
    .DI(alu_a_2_OBUF_1822),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [2]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [2])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<1>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [0]),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [1]),
    .O(alu_result_1_OBUF_1961)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<1>  (
    .CI(\myALU/Maddsub_alu_out_addsub0000_cy [0]),
    .DI(alu_a_1_OBUF_1811),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [1]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [1])
  );
  XORCY   \myALU/Maddsub_alu_out_addsub0000_xor<0>  (
    .CI(ALUOp_0_OBUF_2),
    .LI(\myALU/Maddsub_alu_out_addsub0000_lut [0]),
    .O(alu_result_0_OBUF_1950)
  );
  MUXCY   \myALU/Maddsub_alu_out_addsub0000_cy<0>  (
    .CI(ALUOp_0_OBUF_2),
    .DI(alu_a_0_OBUF_1800),
    .S(\myALU/Maddsub_alu_out_addsub0000_lut [0]),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<0>  (
    .I0(ALUOp_0_OBUF_2),
    .I1(alu_a_0_OBUF_1800),
    .I2(alu_b_0_OBUF_1864),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [0])
  );
  FDC   \ALURESULT/alu_out_31  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_31_OBUF_1974),
    .Q(\ALURESULT/alu_out [31])
  );
  FDC   \ALURESULT/alu_out_30  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_30_OBUF_1973),
    .Q(\ALURESULT/alu_out [30])
  );
  FDC   \ALURESULT/alu_out_29  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_29_OBUF_1971),
    .Q(\ALURESULT/alu_out [29])
  );
  FDC   \ALURESULT/alu_out_28  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_28_OBUF_1970),
    .Q(\ALURESULT/alu_out [28])
  );
  FDC   \ALURESULT/alu_out_27  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_27_OBUF_1969),
    .Q(\ALURESULT/alu_out [27])
  );
  FDC   \ALURESULT/alu_out_26  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_26_OBUF_1968),
    .Q(\ALURESULT/alu_out [26])
  );
  FDC   \ALURESULT/alu_out_25  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_25_OBUF_1967),
    .Q(\ALURESULT/alu_out [25])
  );
  FDC   \ALURESULT/alu_out_24  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_24_OBUF_1966),
    .Q(\ALURESULT/alu_out [24])
  );
  FDC   \ALURESULT/alu_out_23  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_23_OBUF_1965),
    .Q(\ALURESULT/alu_out [23])
  );
  FDC   \ALURESULT/alu_out_22  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_22_OBUF_1964),
    .Q(\ALURESULT/alu_out [22])
  );
  FDC   \ALURESULT/alu_out_21  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_21_OBUF_1963),
    .Q(\ALURESULT/alu_out [21])
  );
  FDC   \ALURESULT/alu_out_20  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_20_OBUF_1962),
    .Q(\ALURESULT/alu_out [20])
  );
  FDC   \ALURESULT/alu_out_19  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_19_OBUF_1960),
    .Q(\ALURESULT/alu_out [19])
  );
  FDC   \ALURESULT/alu_out_18  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_18_OBUF_1959),
    .Q(\ALURESULT/alu_out [18])
  );
  FDC   \ALURESULT/alu_out_17  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_17_OBUF_1958),
    .Q(\ALURESULT/alu_out [17])
  );
  FDC   \ALURESULT/alu_out_16  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_16_OBUF_1957),
    .Q(\ALURESULT/alu_out [16])
  );
  FDC   \ALURESULT/alu_out_15  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_15_OBUF_1956),
    .Q(\ALURESULT/alu_out [15])
  );
  FDC   \ALURESULT/alu_out_14  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_14_OBUF_1955),
    .Q(\ALURESULT/alu_out [14])
  );
  FDC   \ALURESULT/alu_out_13  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_13_OBUF_1954),
    .Q(\ALURESULT/alu_out [13])
  );
  FDC   \ALURESULT/alu_out_12  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_12_OBUF_1953),
    .Q(\ALURESULT/alu_out [12])
  );
  FDC   \ALURESULT/alu_out_11  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_11_OBUF_1952),
    .Q(\ALURESULT/alu_out [11])
  );
  FDC   \ALURESULT/alu_out_10  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_10_OBUF_1951),
    .Q(\ALURESULT/alu_out [10])
  );
  FDC   \ALURESULT/alu_out_9  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_9_OBUF_1981),
    .Q(\ALURESULT/alu_out [9])
  );
  FDC   \ALURESULT/alu_out_8  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_8_OBUF_1980),
    .Q(\ALURESULT/alu_out [8])
  );
  FDC   \ALURESULT/alu_out_7  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_7_OBUF_1979),
    .Q(\ALURESULT/alu_out [7])
  );
  FDC   \ALURESULT/alu_out_6  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_6_OBUF_1978),
    .Q(\ALURESULT/alu_out [6])
  );
  FDC   \ALURESULT/alu_out_5  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_5_OBUF_1977),
    .Q(\ALURESULT/alu_out [5])
  );
  FDC   \ALURESULT/alu_out_4  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_4_OBUF_1976),
    .Q(\ALURESULT/alu_out [4])
  );
  FDC   \ALURESULT/alu_out_3  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_3_OBUF_1975),
    .Q(\ALURESULT/alu_out [3])
  );
  FDC   \ALURESULT/alu_out_2  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_2_OBUF_1972),
    .Q(\ALURESULT/alu_out [2])
  );
  FDC   \ALURESULT/alu_out_1  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_1_OBUF_1961),
    .Q(\ALURESULT/alu_out [1])
  );
  FDC   \ALURESULT/alu_out_0  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_result_0_OBUF_1950),
    .Q(\ALURESULT/alu_out [0])
  );
  FDPE   \CONTROL/FSM5/state_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/state_ClkEn_inv ),
    .D(\CONTROL/FSM5/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [0])
  );
  FDPE   \CONTROL/FSM5/state_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/state_ClkEn_inv ),
    .D(\CONTROL/FSM5/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [1])
  );
  FDPE   \CONTROL/FSM5/state_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/state_ClkEn_inv ),
    .D(\CONTROL/FSM5/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [2])
  );
  FDPE   \CONTROL/FSM5/state_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/state_ClkEn_inv ),
    .D(\CONTROL/FSM5/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/state [3])
  );
  FDCE   \CONTROL/FSM5/state_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/state_ClkEn_inv ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/state_mux0000 [2]),
    .Q(\CONTROL/FSM5/state [4])
  );
  FDPE   \CONTROL/FSM4/state_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [0])
  );
  FDPE   \CONTROL/FSM4/state_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [1])
  );
  FDPE   \CONTROL/FSM4/state_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [2])
  );
  FDPE   \CONTROL/FSM4/state_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state [3])
  );
  FDCE   \CONTROL/FSM4/state_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [2]),
    .Q(\CONTROL/FSM4/state [4])
  );
  FDPE   \CONTROL/FSM3/state_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [0])
  );
  FDPE   \CONTROL/FSM3/state_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [1])
  );
  FDPE   \CONTROL/FSM3/state_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [2])
  );
  FDPE   \CONTROL/FSM3/state_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state [3])
  );
  FDCE   \CONTROL/FSM3/state_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [2]),
    .Q(\CONTROL/FSM3/state [4])
  );
  FDPE   \CONTROL/FSM2/state_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [0])
  );
  FDPE   \CONTROL/FSM2/state_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [1])
  );
  FDPE   \CONTROL/FSM2/state_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [2])
  );
  FDPE   \CONTROL/FSM2/state_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state [3])
  );
  FDCE   \CONTROL/FSM2/state_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [2]),
    .Q(\CONTROL/FSM2/state [4])
  );
  FDPE   \CONTROL/FSM1/state_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [0])
  );
  FDPE   \CONTROL/FSM1/state_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [1])
  );
  FDPE   \CONTROL/FSM1/state_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [2])
  );
  FDPE   \CONTROL/FSM1/state_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state [3])
  );
  FDCE   \CONTROL/FSM1/state_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [2]),
    .Q(\CONTROL/FSM1/state [4])
  );
  FDCE   \CONTROL/BrSigEn_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/BrSigEn_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/Mcount_BrSigEn_eqn_1 ),
    .Q(\CONTROL/BrSigEn [1])
  );
  FDPE   \CONTROL/BrSigEn_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/BrSigEn_not0001 ),
    .D(\CONTROL/Mcount_BrSigEn_eqn_0 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/BrSigEn [0])
  );
  FDCE   \CONTROL/JmpSigEn_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/JmpSigEn_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/Mcount_JmpSigEn_eqn_1 ),
    .Q(\CONTROL/JmpSigEn [1])
  );
  FDCE   \CONTROL/JmpSigEn_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/JmpSigEn_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/Mcount_JmpSigEn_eqn_0 ),
    .Q(\CONTROL/JmpSigEn [0])
  );
  FDC   \CONTROL/FSM1/next_en  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/en0_767 ),
    .Q(\CONTROL/FSM1/next_en_140 )
  );
  FDCE   \CONTROL/FSM1/stage_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/stage_mux0000 [2]),
    .Q(\CONTROL/FSM1/stage [0])
  );
  FDCE   \CONTROL/FSM1/stage_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/stage_mux0000 [1]),
    .Q(\CONTROL/FSM1/stage [1])
  );
  FDCE   \CONTROL/FSM1/stage_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/stage_mux0000 [0]),
    .Q(\CONTROL/FSM1/stage [2])
  );
  FDCE   \CONTROL/FSM1/WB_value_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_2399),
    .Q(\CONTROL/FSM1/WB_value [0])
  );
  FDCE   \CONTROL/FSM1/WB_value_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_1_OBUF_2410),
    .Q(\CONTROL/FSM1/WB_value [1])
  );
  FDCE   \CONTROL/FSM1/WB_value_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_2_OBUF_2421),
    .Q(\CONTROL/FSM1/WB_value [2])
  );
  FDCE   \CONTROL/FSM1/WB_value_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_3_OBUF_2424),
    .Q(\CONTROL/FSM1/WB_value [3])
  );
  FDCE   \CONTROL/FSM1/WB_value_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_4_OBUF_2425),
    .Q(\CONTROL/FSM1/WB_value [4])
  );
  FDCE   \CONTROL/FSM1/WB_value_5  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_5_OBUF_2426),
    .Q(\CONTROL/FSM1/WB_value [5])
  );
  FDCE   \CONTROL/FSM1/WB_value_6  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_6_OBUF_2427),
    .Q(\CONTROL/FSM1/WB_value [6])
  );
  FDCE   \CONTROL/FSM1/WB_value_7  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_7_OBUF_2428),
    .Q(\CONTROL/FSM1/WB_value [7])
  );
  FDCE   \CONTROL/FSM1/WB_value_8  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_8_OBUF_2429),
    .Q(\CONTROL/FSM1/WB_value [8])
  );
  FDCE   \CONTROL/FSM1/WB_value_9  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_9_OBUF_2430),
    .Q(\CONTROL/FSM1/WB_value [9])
  );
  FDCE   \CONTROL/FSM1/WB_value_10  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_10_OBUF_2400),
    .Q(\CONTROL/FSM1/WB_value [10])
  );
  FDCE   \CONTROL/FSM1/WB_value_11  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_11_OBUF_2401),
    .Q(\CONTROL/FSM1/WB_value [11])
  );
  FDCE   \CONTROL/FSM1/WB_value_12  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_12_OBUF_2402),
    .Q(\CONTROL/FSM1/WB_value [12])
  );
  FDCE   \CONTROL/FSM1/WB_value_13  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_13_OBUF_2403),
    .Q(\CONTROL/FSM1/WB_value [13])
  );
  FDCE   \CONTROL/FSM1/WB_value_14  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_14_OBUF_2404),
    .Q(\CONTROL/FSM1/WB_value [14])
  );
  FDCE   \CONTROL/FSM1/WB_value_15  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_15_OBUF_2405),
    .Q(\CONTROL/FSM1/WB_value [15])
  );
  FDCE   \CONTROL/FSM1/WB_value_16  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_16_OBUF_2406),
    .Q(\CONTROL/FSM1/WB_value [16])
  );
  FDCE   \CONTROL/FSM1/WB_value_17  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_17_OBUF_2407),
    .Q(\CONTROL/FSM1/WB_value [17])
  );
  FDCE   \CONTROL/FSM1/WB_value_18  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_18_OBUF_2408),
    .Q(\CONTROL/FSM1/WB_value [18])
  );
  FDCE   \CONTROL/FSM1/WB_value_19  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_19_OBUF_2409),
    .Q(\CONTROL/FSM1/WB_value [19])
  );
  FDCE   \CONTROL/FSM1/WB_value_20  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_20_OBUF_2411),
    .Q(\CONTROL/FSM1/WB_value [20])
  );
  FDCE   \CONTROL/FSM1/WB_value_21  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_21_OBUF_2412),
    .Q(\CONTROL/FSM1/WB_value [21])
  );
  FDCE   \CONTROL/FSM1/WB_value_22  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_22_OBUF_2413),
    .Q(\CONTROL/FSM1/WB_value [22])
  );
  FDCE   \CONTROL/FSM1/WB_value_23  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_23_OBUF_2414),
    .Q(\CONTROL/FSM1/WB_value [23])
  );
  FDCE   \CONTROL/FSM1/WB_value_24  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_24_OBUF_2415),
    .Q(\CONTROL/FSM1/WB_value [24])
  );
  FDCE   \CONTROL/FSM1/WB_value_25  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_25_OBUF_2416),
    .Q(\CONTROL/FSM1/WB_value [25])
  );
  FDCE   \CONTROL/FSM1/WB_value_26  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_26_OBUF_2417),
    .Q(\CONTROL/FSM1/WB_value [26])
  );
  FDCE   \CONTROL/FSM1/WB_value_27  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_27_OBUF_2418),
    .Q(\CONTROL/FSM1/WB_value [27])
  );
  FDCE   \CONTROL/FSM1/WB_value_28  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_28_OBUF_2419),
    .Q(\CONTROL/FSM1/WB_value [28])
  );
  FDCE   \CONTROL/FSM1/WB_value_29  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_29_OBUF_2420),
    .Q(\CONTROL/FSM1/WB_value [29])
  );
  FDCE   \CONTROL/FSM1/WB_value_30  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_30_OBUF_2422),
    .Q(\CONTROL/FSM1/WB_value [30])
  );
  FDCE   \CONTROL/FSM1/WB_value_31  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/SaveWB_101 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_31_OBUF_2423),
    .Q(\CONTROL/FSM1/WB_value [31])
  );
  FDCE   \CONTROL/FSM1/fromWB  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/fromWB_mux0000 ),
    .Q(\CONTROL/FSM1/fromWB_136 )
  );
  FDPE   \CONTROL/FSM1/MemtoReg  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/bubble_en_inv_134 ),
    .D(\CONTROL/FSM1/MemtoReg_mux0000_96 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/MemtoReg_95 )
  );
  FDCE   \CONTROL/FSM1/RegWrite  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/bubble_en_inv_134 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/RegWrite_mux0000_100 ),
    .Q(\CONTROL/FSM1/RegWrite_99 )
  );
  FDPE   \CONTROL/FSM1/RegDst  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/bubble_en_inv_134 ),
    .D(\CONTROL/FSM1/RegDst_mux0000_98 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/RegDst_97 )
  );
  FDCE   \CONTROL/FSM1/ALU_SrcB_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/bubble_en_inv_134 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/ALU_SrcB_mux0000 [0]),
    .Q(\CONTROL/FSM1/ALU_SrcB [1])
  );
  FDCE   \CONTROL/FSM1/ALUOp_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/bubble_en_inv_134 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/ALUOp_mux0000 [1]),
    .Q(\CONTROL/FSM1/ALUOp [0])
  );
  FDCE   \CONTROL/FSM1/ALUOp_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/bubble_en_inv_134 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/ALUOp_mux0000 [0]),
    .Q(\CONTROL/FSM1/ALUOp [1])
  );
  LD   \CONTROL/FSM1/next_state_0  (
    .D(\CONTROL/FSM1/next_state_mux0000 [0]),
    .G(\CONTROL/FSM1/next_state_not0001_160 ),
    .Q(\CONTROL/FSM1/next_state [0])
  );
  LD   \CONTROL/FSM1/next_state_1  (
    .D(\CONTROL/FSM1/next_state_mux0000 [1]),
    .G(\CONTROL/FSM1/next_state_not0001_160 ),
    .Q(\CONTROL/FSM1/next_state [1])
  );
  LD   \CONTROL/FSM1/next_state_2  (
    .D(\CONTROL/FSM1/next_state_mux0000 [2]),
    .G(\CONTROL/FSM1/next_state_not0001_160 ),
    .Q(\CONTROL/FSM1/next_state [2])
  );
  LD   \CONTROL/FSM1/next_state_3  (
    .D(\CONTROL/FSM1/next_state_mux0000 [3]),
    .G(\CONTROL/FSM1/next_state_not0001_160 ),
    .Q(\CONTROL/FSM1/next_state [3])
  );
  LD   \CONTROL/FSM1/next_state_4  (
    .D(\CONTROL/FSM1/next_state_mux0000 [4]),
    .G(\CONTROL/FSM1/next_state_not0001_160 ),
    .Q(\CONTROL/FSM1/next_state [4])
  );
  FDC   \CONTROL/FSM2/next_en  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/next_en_140 ),
    .Q(\CONTROL/FSM2/next_en_238 )
  );
  FDCE   \CONTROL/FSM2/stage_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/stage_mux0000 [2]),
    .Q(\CONTROL/FSM2/stage [0])
  );
  FDCE   \CONTROL/FSM2/stage_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/stage_mux0000 [1]),
    .Q(\CONTROL/FSM2/stage [1])
  );
  FDCE   \CONTROL/FSM2/stage_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/stage_mux0000 [0]),
    .Q(\CONTROL/FSM2/stage [2])
  );
  FDCE   \CONTROL/FSM2/WB_value_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_2399),
    .Q(\CONTROL/FSM2/WB_value [0])
  );
  FDCE   \CONTROL/FSM2/WB_value_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_1_OBUF_2410),
    .Q(\CONTROL/FSM2/WB_value [1])
  );
  FDCE   \CONTROL/FSM2/WB_value_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_2_OBUF_2421),
    .Q(\CONTROL/FSM2/WB_value [2])
  );
  FDCE   \CONTROL/FSM2/WB_value_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_3_OBUF_2424),
    .Q(\CONTROL/FSM2/WB_value [3])
  );
  FDCE   \CONTROL/FSM2/WB_value_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_4_OBUF_2425),
    .Q(\CONTROL/FSM2/WB_value [4])
  );
  FDCE   \CONTROL/FSM2/WB_value_5  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_5_OBUF_2426),
    .Q(\CONTROL/FSM2/WB_value [5])
  );
  FDCE   \CONTROL/FSM2/WB_value_6  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_6_OBUF_2427),
    .Q(\CONTROL/FSM2/WB_value [6])
  );
  FDCE   \CONTROL/FSM2/WB_value_7  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_7_OBUF_2428),
    .Q(\CONTROL/FSM2/WB_value [7])
  );
  FDCE   \CONTROL/FSM2/WB_value_8  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_8_OBUF_2429),
    .Q(\CONTROL/FSM2/WB_value [8])
  );
  FDCE   \CONTROL/FSM2/WB_value_9  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_9_OBUF_2430),
    .Q(\CONTROL/FSM2/WB_value [9])
  );
  FDCE   \CONTROL/FSM2/WB_value_10  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_10_OBUF_2400),
    .Q(\CONTROL/FSM2/WB_value [10])
  );
  FDCE   \CONTROL/FSM2/WB_value_11  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_11_OBUF_2401),
    .Q(\CONTROL/FSM2/WB_value [11])
  );
  FDCE   \CONTROL/FSM2/WB_value_12  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_12_OBUF_2402),
    .Q(\CONTROL/FSM2/WB_value [12])
  );
  FDCE   \CONTROL/FSM2/WB_value_13  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_13_OBUF_2403),
    .Q(\CONTROL/FSM2/WB_value [13])
  );
  FDCE   \CONTROL/FSM2/WB_value_14  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_14_OBUF_2404),
    .Q(\CONTROL/FSM2/WB_value [14])
  );
  FDCE   \CONTROL/FSM2/WB_value_15  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_15_OBUF_2405),
    .Q(\CONTROL/FSM2/WB_value [15])
  );
  FDCE   \CONTROL/FSM2/WB_value_16  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_16_OBUF_2406),
    .Q(\CONTROL/FSM2/WB_value [16])
  );
  FDCE   \CONTROL/FSM2/WB_value_17  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_17_OBUF_2407),
    .Q(\CONTROL/FSM2/WB_value [17])
  );
  FDCE   \CONTROL/FSM2/WB_value_18  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_18_OBUF_2408),
    .Q(\CONTROL/FSM2/WB_value [18])
  );
  FDCE   \CONTROL/FSM2/WB_value_19  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_19_OBUF_2409),
    .Q(\CONTROL/FSM2/WB_value [19])
  );
  FDCE   \CONTROL/FSM2/WB_value_20  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_20_OBUF_2411),
    .Q(\CONTROL/FSM2/WB_value [20])
  );
  FDCE   \CONTROL/FSM2/WB_value_21  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_21_OBUF_2412),
    .Q(\CONTROL/FSM2/WB_value [21])
  );
  FDCE   \CONTROL/FSM2/WB_value_22  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_22_OBUF_2413),
    .Q(\CONTROL/FSM2/WB_value [22])
  );
  FDCE   \CONTROL/FSM2/WB_value_23  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_23_OBUF_2414),
    .Q(\CONTROL/FSM2/WB_value [23])
  );
  FDCE   \CONTROL/FSM2/WB_value_24  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_24_OBUF_2415),
    .Q(\CONTROL/FSM2/WB_value [24])
  );
  FDCE   \CONTROL/FSM2/WB_value_25  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_25_OBUF_2416),
    .Q(\CONTROL/FSM2/WB_value [25])
  );
  FDCE   \CONTROL/FSM2/WB_value_26  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_26_OBUF_2417),
    .Q(\CONTROL/FSM2/WB_value [26])
  );
  FDCE   \CONTROL/FSM2/WB_value_27  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_27_OBUF_2418),
    .Q(\CONTROL/FSM2/WB_value [27])
  );
  FDCE   \CONTROL/FSM2/WB_value_28  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_28_OBUF_2419),
    .Q(\CONTROL/FSM2/WB_value [28])
  );
  FDCE   \CONTROL/FSM2/WB_value_29  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_29_OBUF_2420),
    .Q(\CONTROL/FSM2/WB_value [29])
  );
  FDCE   \CONTROL/FSM2/WB_value_30  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_30_OBUF_2422),
    .Q(\CONTROL/FSM2/WB_value [30])
  );
  FDCE   \CONTROL/FSM2/WB_value_31  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/SaveWB_200 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_31_OBUF_2423),
    .Q(\CONTROL/FSM2/WB_value [31])
  );
  FDCE   \CONTROL/FSM2/fromWB  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/fromWB_not0001_237 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/fromWB_mux0000 ),
    .Q(\CONTROL/FSM2/fromWB_235 )
  );
  FDPE   \CONTROL/FSM2/MemtoReg  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/bubble_en_inv_233 ),
    .D(\CONTROL/FSM2/MemtoReg_mux0000_194 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/MemtoReg_193 )
  );
  FDCE   \CONTROL/FSM2/RegWrite  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/bubble_en_inv_233 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/RegWrite_mux0000_199 ),
    .Q(\CONTROL/FSM2/RegWrite_198 )
  );
  FDPE   \CONTROL/FSM2/RegDst  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/bubble_en_inv_233 ),
    .D(\CONTROL/FSM2/RegDst_mux0000 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/RegDst_195 )
  );
  FDCE   \CONTROL/FSM2/ALU_SrcB_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/bubble_en_inv_233 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/ALU_SrcB_mux0000 [0]),
    .Q(\CONTROL/FSM2/ALU_SrcB [1])
  );
  FDCE   \CONTROL/FSM2/ALUOp_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/bubble_en_inv_233 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/ALUOp_mux0000 [1]),
    .Q(\CONTROL/FSM2/ALUOp [0])
  );
  FDCE   \CONTROL/FSM2/ALUOp_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/bubble_en_inv_233 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/ALUOp_mux0000 [0]),
    .Q(\CONTROL/FSM2/ALUOp [1])
  );
  LD   \CONTROL/FSM2/next_state_0  (
    .D(\CONTROL/FSM2/next_state_mux0000 [0]),
    .G(\CONTROL/FSM2/next_state_not0001_258 ),
    .Q(\CONTROL/FSM2/next_state [0])
  );
  LD   \CONTROL/FSM2/next_state_1  (
    .D(\CONTROL/FSM2/next_state_mux0000 [1]),
    .G(\CONTROL/FSM2/next_state_not0001_258 ),
    .Q(\CONTROL/FSM2/next_state [1])
  );
  LD   \CONTROL/FSM2/next_state_2  (
    .D(\CONTROL/FSM2/next_state_mux0000 [2]),
    .G(\CONTROL/FSM2/next_state_not0001_258 ),
    .Q(\CONTROL/FSM2/next_state [2])
  );
  LD   \CONTROL/FSM2/next_state_3  (
    .D(\CONTROL/FSM2/next_state_mux0000 [3]),
    .G(\CONTROL/FSM2/next_state_not0001_258 ),
    .Q(\CONTROL/FSM2/next_state [3])
  );
  LD   \CONTROL/FSM2/next_state_4  (
    .D(\CONTROL/FSM2/next_state_mux0000 [4]),
    .G(\CONTROL/FSM2/next_state_not0001_258 ),
    .Q(\CONTROL/FSM2/next_state [4])
  );
  FDC   \CONTROL/FSM3/next_en  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM2/next_en_238 ),
    .Q(\CONTROL/FSM3/next_en_335 )
  );
  FDCE   \CONTROL/FSM3/stage_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/stage_mux0000 [2]),
    .Q(\CONTROL/FSM3/stage [0])
  );
  FDCE   \CONTROL/FSM3/stage_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/stage_mux0000 [1]),
    .Q(\CONTROL/FSM3/stage [1])
  );
  FDCE   \CONTROL/FSM3/stage_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/stage_mux0000 [0]),
    .Q(\CONTROL/FSM3/stage [2])
  );
  FDCE   \CONTROL/FSM3/WB_value_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_2399),
    .Q(\CONTROL/FSM3/WB_value [0])
  );
  FDCE   \CONTROL/FSM3/WB_value_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_1_OBUF_2410),
    .Q(\CONTROL/FSM3/WB_value [1])
  );
  FDCE   \CONTROL/FSM3/WB_value_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_2_OBUF_2421),
    .Q(\CONTROL/FSM3/WB_value [2])
  );
  FDCE   \CONTROL/FSM3/WB_value_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_3_OBUF_2424),
    .Q(\CONTROL/FSM3/WB_value [3])
  );
  FDCE   \CONTROL/FSM3/WB_value_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_4_OBUF_2425),
    .Q(\CONTROL/FSM3/WB_value [4])
  );
  FDCE   \CONTROL/FSM3/WB_value_5  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_5_OBUF_2426),
    .Q(\CONTROL/FSM3/WB_value [5])
  );
  FDCE   \CONTROL/FSM3/WB_value_6  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_6_OBUF_2427),
    .Q(\CONTROL/FSM3/WB_value [6])
  );
  FDCE   \CONTROL/FSM3/WB_value_7  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_7_OBUF_2428),
    .Q(\CONTROL/FSM3/WB_value [7])
  );
  FDCE   \CONTROL/FSM3/WB_value_8  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_8_OBUF_2429),
    .Q(\CONTROL/FSM3/WB_value [8])
  );
  FDCE   \CONTROL/FSM3/WB_value_9  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_9_OBUF_2430),
    .Q(\CONTROL/FSM3/WB_value [9])
  );
  FDCE   \CONTROL/FSM3/WB_value_10  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_10_OBUF_2400),
    .Q(\CONTROL/FSM3/WB_value [10])
  );
  FDCE   \CONTROL/FSM3/WB_value_11  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_11_OBUF_2401),
    .Q(\CONTROL/FSM3/WB_value [11])
  );
  FDCE   \CONTROL/FSM3/WB_value_12  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_12_OBUF_2402),
    .Q(\CONTROL/FSM3/WB_value [12])
  );
  FDCE   \CONTROL/FSM3/WB_value_13  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_13_OBUF_2403),
    .Q(\CONTROL/FSM3/WB_value [13])
  );
  FDCE   \CONTROL/FSM3/WB_value_14  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_14_OBUF_2404),
    .Q(\CONTROL/FSM3/WB_value [14])
  );
  FDCE   \CONTROL/FSM3/WB_value_15  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_15_OBUF_2405),
    .Q(\CONTROL/FSM3/WB_value [15])
  );
  FDCE   \CONTROL/FSM3/WB_value_16  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_16_OBUF_2406),
    .Q(\CONTROL/FSM3/WB_value [16])
  );
  FDCE   \CONTROL/FSM3/WB_value_17  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_17_OBUF_2407),
    .Q(\CONTROL/FSM3/WB_value [17])
  );
  FDCE   \CONTROL/FSM3/WB_value_18  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_18_OBUF_2408),
    .Q(\CONTROL/FSM3/WB_value [18])
  );
  FDCE   \CONTROL/FSM3/WB_value_19  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_19_OBUF_2409),
    .Q(\CONTROL/FSM3/WB_value [19])
  );
  FDCE   \CONTROL/FSM3/WB_value_20  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_20_OBUF_2411),
    .Q(\CONTROL/FSM3/WB_value [20])
  );
  FDCE   \CONTROL/FSM3/WB_value_21  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_21_OBUF_2412),
    .Q(\CONTROL/FSM3/WB_value [21])
  );
  FDCE   \CONTROL/FSM3/WB_value_22  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_22_OBUF_2413),
    .Q(\CONTROL/FSM3/WB_value [22])
  );
  FDCE   \CONTROL/FSM3/WB_value_23  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_23_OBUF_2414),
    .Q(\CONTROL/FSM3/WB_value [23])
  );
  FDCE   \CONTROL/FSM3/WB_value_24  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_24_OBUF_2415),
    .Q(\CONTROL/FSM3/WB_value [24])
  );
  FDCE   \CONTROL/FSM3/WB_value_25  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_25_OBUF_2416),
    .Q(\CONTROL/FSM3/WB_value [25])
  );
  FDCE   \CONTROL/FSM3/WB_value_26  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_26_OBUF_2417),
    .Q(\CONTROL/FSM3/WB_value [26])
  );
  FDCE   \CONTROL/FSM3/WB_value_27  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_27_OBUF_2418),
    .Q(\CONTROL/FSM3/WB_value [27])
  );
  FDCE   \CONTROL/FSM3/WB_value_28  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_28_OBUF_2419),
    .Q(\CONTROL/FSM3/WB_value [28])
  );
  FDCE   \CONTROL/FSM3/WB_value_29  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_29_OBUF_2420),
    .Q(\CONTROL/FSM3/WB_value [29])
  );
  FDCE   \CONTROL/FSM3/WB_value_30  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_30_OBUF_2422),
    .Q(\CONTROL/FSM3/WB_value [30])
  );
  FDCE   \CONTROL/FSM3/WB_value_31  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/SaveWB_297 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_31_OBUF_2423),
    .Q(\CONTROL/FSM3/WB_value [31])
  );
  FDCE   \CONTROL/FSM3/fromWB  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/fromWB_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/fromWB_mux0000 ),
    .Q(\CONTROL/FSM3/fromWB_332 )
  );
  FDPE   \CONTROL/FSM3/MemtoReg  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/bubble_en_inv_330 ),
    .D(\CONTROL/FSM3/MemtoReg_mux0000 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/MemtoReg_290 )
  );
  FDCE   \CONTROL/FSM3/RegWrite  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/bubble_en_inv_330 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/RegWrite_mux0000_296 ),
    .Q(\CONTROL/FSM3/RegWrite_295 )
  );
  FDPE   \CONTROL/FSM3/RegDst  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/bubble_en_inv_330 ),
    .D(\CONTROL/FSM3/RegDst_mux0000_294 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/RegDst_293 )
  );
  FDCE   \CONTROL/FSM3/ALU_SrcB_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/bubble_en_inv_330 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/ALU_SrcB_mux0000 [0]),
    .Q(\CONTROL/FSM3/ALU_SrcB [1])
  );
  FDCE   \CONTROL/FSM3/ALUOp_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/bubble_en_inv_330 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/ALUOp_mux0000 [1]),
    .Q(\CONTROL/FSM3/ALUOp [0])
  );
  FDCE   \CONTROL/FSM3/ALUOp_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/bubble_en_inv_330 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/ALUOp_mux0000 [0]),
    .Q(\CONTROL/FSM3/ALUOp [1])
  );
  LD   \CONTROL/FSM3/next_state_0  (
    .D(\CONTROL/FSM3/next_state_mux0000 [0]),
    .G(\CONTROL/FSM3/next_state_not0001_352 ),
    .Q(\CONTROL/FSM3/next_state [0])
  );
  LD   \CONTROL/FSM3/next_state_1  (
    .D(\CONTROL/FSM3/next_state_mux0000 [1]),
    .G(\CONTROL/FSM3/next_state_not0001_352 ),
    .Q(\CONTROL/FSM3/next_state [1])
  );
  LD   \CONTROL/FSM3/next_state_2  (
    .D(\CONTROL/FSM3/next_state_mux0000 [2]),
    .G(\CONTROL/FSM3/next_state_not0001_352 ),
    .Q(\CONTROL/FSM3/next_state [2])
  );
  LD   \CONTROL/FSM3/next_state_3  (
    .D(\CONTROL/FSM3/next_state_mux0000 [3]),
    .G(\CONTROL/FSM3/next_state_not0001_352 ),
    .Q(\CONTROL/FSM3/next_state [3])
  );
  LD   \CONTROL/FSM3/next_state_4  (
    .D(\CONTROL/FSM3/next_state_mux0000 [4]),
    .G(\CONTROL/FSM3/next_state_not0001_352 ),
    .Q(\CONTROL/FSM3/next_state [4])
  );
  FDC   \CONTROL/FSM4/next_en  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM3/next_en_335 ),
    .Q(\CONTROL/FSM4/next_en_438 )
  );
  FDCE   \CONTROL/FSM4/stage_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/stage_mux0000 [2]),
    .Q(\CONTROL/FSM4/stage [0])
  );
  FDCE   \CONTROL/FSM4/stage_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/stage_mux0000 [1]),
    .Q(\CONTROL/FSM4/stage [1])
  );
  FDCE   \CONTROL/FSM4/stage_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/stage_mux0000 [0]),
    .Q(\CONTROL/FSM4/stage [2])
  );
  FDCE   \CONTROL/FSM4/WB_value_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_2399),
    .Q(\CONTROL/FSM4/WB_value [0])
  );
  FDCE   \CONTROL/FSM4/WB_value_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_1_OBUF_2410),
    .Q(\CONTROL/FSM4/WB_value [1])
  );
  FDCE   \CONTROL/FSM4/WB_value_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_2_OBUF_2421),
    .Q(\CONTROL/FSM4/WB_value [2])
  );
  FDCE   \CONTROL/FSM4/WB_value_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_3_OBUF_2424),
    .Q(\CONTROL/FSM4/WB_value [3])
  );
  FDCE   \CONTROL/FSM4/WB_value_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_4_OBUF_2425),
    .Q(\CONTROL/FSM4/WB_value [4])
  );
  FDCE   \CONTROL/FSM4/WB_value_5  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_5_OBUF_2426),
    .Q(\CONTROL/FSM4/WB_value [5])
  );
  FDCE   \CONTROL/FSM4/WB_value_6  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_6_OBUF_2427),
    .Q(\CONTROL/FSM4/WB_value [6])
  );
  FDCE   \CONTROL/FSM4/WB_value_7  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_7_OBUF_2428),
    .Q(\CONTROL/FSM4/WB_value [7])
  );
  FDCE   \CONTROL/FSM4/WB_value_8  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_8_OBUF_2429),
    .Q(\CONTROL/FSM4/WB_value [8])
  );
  FDCE   \CONTROL/FSM4/WB_value_9  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_9_OBUF_2430),
    .Q(\CONTROL/FSM4/WB_value [9])
  );
  FDCE   \CONTROL/FSM4/WB_value_10  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_10_OBUF_2400),
    .Q(\CONTROL/FSM4/WB_value [10])
  );
  FDCE   \CONTROL/FSM4/WB_value_11  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_11_OBUF_2401),
    .Q(\CONTROL/FSM4/WB_value [11])
  );
  FDCE   \CONTROL/FSM4/WB_value_12  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_12_OBUF_2402),
    .Q(\CONTROL/FSM4/WB_value [12])
  );
  FDCE   \CONTROL/FSM4/WB_value_13  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_13_OBUF_2403),
    .Q(\CONTROL/FSM4/WB_value [13])
  );
  FDCE   \CONTROL/FSM4/WB_value_14  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_14_OBUF_2404),
    .Q(\CONTROL/FSM4/WB_value [14])
  );
  FDCE   \CONTROL/FSM4/WB_value_15  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_15_OBUF_2405),
    .Q(\CONTROL/FSM4/WB_value [15])
  );
  FDCE   \CONTROL/FSM4/WB_value_16  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_16_OBUF_2406),
    .Q(\CONTROL/FSM4/WB_value [16])
  );
  FDCE   \CONTROL/FSM4/WB_value_17  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_17_OBUF_2407),
    .Q(\CONTROL/FSM4/WB_value [17])
  );
  FDCE   \CONTROL/FSM4/WB_value_18  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_18_OBUF_2408),
    .Q(\CONTROL/FSM4/WB_value [18])
  );
  FDCE   \CONTROL/FSM4/WB_value_19  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_19_OBUF_2409),
    .Q(\CONTROL/FSM4/WB_value [19])
  );
  FDCE   \CONTROL/FSM4/WB_value_20  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_20_OBUF_2411),
    .Q(\CONTROL/FSM4/WB_value [20])
  );
  FDCE   \CONTROL/FSM4/WB_value_21  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_21_OBUF_2412),
    .Q(\CONTROL/FSM4/WB_value [21])
  );
  FDCE   \CONTROL/FSM4/WB_value_22  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_22_OBUF_2413),
    .Q(\CONTROL/FSM4/WB_value [22])
  );
  FDCE   \CONTROL/FSM4/WB_value_23  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_23_OBUF_2414),
    .Q(\CONTROL/FSM4/WB_value [23])
  );
  FDCE   \CONTROL/FSM4/WB_value_24  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_24_OBUF_2415),
    .Q(\CONTROL/FSM4/WB_value [24])
  );
  FDCE   \CONTROL/FSM4/WB_value_25  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_25_OBUF_2416),
    .Q(\CONTROL/FSM4/WB_value [25])
  );
  FDCE   \CONTROL/FSM4/WB_value_26  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_26_OBUF_2417),
    .Q(\CONTROL/FSM4/WB_value [26])
  );
  FDCE   \CONTROL/FSM4/WB_value_27  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_27_OBUF_2418),
    .Q(\CONTROL/FSM4/WB_value [27])
  );
  FDCE   \CONTROL/FSM4/WB_value_28  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_28_OBUF_2419),
    .Q(\CONTROL/FSM4/WB_value [28])
  );
  FDCE   \CONTROL/FSM4/WB_value_29  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_29_OBUF_2420),
    .Q(\CONTROL/FSM4/WB_value [29])
  );
  FDCE   \CONTROL/FSM4/WB_value_30  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_30_OBUF_2422),
    .Q(\CONTROL/FSM4/WB_value [30])
  );
  FDCE   \CONTROL/FSM4/WB_value_31  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/SaveWB ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_31_OBUF_2423),
    .Q(\CONTROL/FSM4/WB_value [31])
  );
  FDCE   \CONTROL/FSM4/fromWB  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/fromWB_not0001_437 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/fromWB_mux0000 ),
    .Q(\CONTROL/FSM4/fromWB_435 )
  );
  FDPE   \CONTROL/FSM4/MemtoReg  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/bubble_en_inv_433 ),
    .D(\CONTROL/FSM4/MemtoReg_mux0000_391 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/MemtoReg_390 )
  );
  FDCE   \CONTROL/FSM4/RegWrite  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/bubble_en_inv_433 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/RegWrite_mux0000_399 ),
    .Q(\CONTROL/FSM4/RegWrite_398 )
  );
  FDPE   \CONTROL/FSM4/RegDst  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/bubble_en_inv_433 ),
    .D(\CONTROL/FSM4/RegDst_mux0000 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/RegDst_392 )
  );
  FDCE   \CONTROL/FSM4/ALU_SrcB_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/bubble_en_inv_433 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/ALU_SrcB_mux0000 [0]),
    .Q(\CONTROL/FSM4/ALU_SrcB [1])
  );
  FDCE   \CONTROL/FSM4/ALUOp_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/bubble_en_inv_433 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/ALUOp_mux0000 [1]),
    .Q(\CONTROL/FSM4/ALUOp [0])
  );
  FDCE   \CONTROL/FSM4/ALUOp_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/bubble_en_inv_433 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM4/ALUOp_mux0000 [0]),
    .Q(\CONTROL/FSM4/ALUOp [1])
  );
  LD   \CONTROL/FSM4/next_state_0  (
    .D(\CONTROL/FSM4/next_state_mux0000 [0]),
    .G(\CONTROL/FSM4/next_state_not0001_459 ),
    .Q(\CONTROL/FSM4/next_state [0])
  );
  LD   \CONTROL/FSM4/next_state_1  (
    .D(\CONTROL/FSM4/next_state_mux0000 [1]),
    .G(\CONTROL/FSM4/next_state_not0001_459 ),
    .Q(\CONTROL/FSM4/next_state [1])
  );
  LD   \CONTROL/FSM4/next_state_2  (
    .D(\CONTROL/FSM4/next_state_mux0000 [2]),
    .G(\CONTROL/FSM4/next_state_not0001_459 ),
    .Q(\CONTROL/FSM4/next_state [2])
  );
  LD   \CONTROL/FSM4/next_state_3  (
    .D(\CONTROL/FSM4/next_state_mux0000 [3]),
    .G(\CONTROL/FSM4/next_state_not0001_459 ),
    .Q(\CONTROL/FSM4/next_state [3])
  );
  LD   \CONTROL/FSM4/next_state_4  (
    .D(\CONTROL/FSM4/next_state_mux0000 [4]),
    .G(\CONTROL/FSM4/next_state_not0001_459 ),
    .Q(\CONTROL/FSM4/next_state [4])
  );
  FDCE   \CONTROL/FSM5/stage_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/stage_mux0000 [2]),
    .Q(\CONTROL/FSM5/stage [0])
  );
  FDCE   \CONTROL/FSM5/stage_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/stage_mux0000 [1]),
    .Q(\CONTROL/FSM5/stage [1])
  );
  FDCE   \CONTROL/FSM5/stage_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/stage_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/stage_mux0000 [0]),
    .Q(\CONTROL/FSM5/stage [2])
  );
  FDCE   \CONTROL/FSM5/WB_value_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_0_OBUF_2399),
    .Q(\CONTROL/FSM5/WB_value [0])
  );
  FDCE   \CONTROL/FSM5/WB_value_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_1_OBUF_2410),
    .Q(\CONTROL/FSM5/WB_value [1])
  );
  FDCE   \CONTROL/FSM5/WB_value_2  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_2_OBUF_2421),
    .Q(\CONTROL/FSM5/WB_value [2])
  );
  FDCE   \CONTROL/FSM5/WB_value_3  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_3_OBUF_2424),
    .Q(\CONTROL/FSM5/WB_value [3])
  );
  FDCE   \CONTROL/FSM5/WB_value_4  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_4_OBUF_2425),
    .Q(\CONTROL/FSM5/WB_value [4])
  );
  FDCE   \CONTROL/FSM5/WB_value_5  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_5_OBUF_2426),
    .Q(\CONTROL/FSM5/WB_value [5])
  );
  FDCE   \CONTROL/FSM5/WB_value_6  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_6_OBUF_2427),
    .Q(\CONTROL/FSM5/WB_value [6])
  );
  FDCE   \CONTROL/FSM5/WB_value_7  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_7_OBUF_2428),
    .Q(\CONTROL/FSM5/WB_value [7])
  );
  FDCE   \CONTROL/FSM5/WB_value_8  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_8_OBUF_2429),
    .Q(\CONTROL/FSM5/WB_value [8])
  );
  FDCE   \CONTROL/FSM5/WB_value_9  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_9_OBUF_2430),
    .Q(\CONTROL/FSM5/WB_value [9])
  );
  FDCE   \CONTROL/FSM5/WB_value_10  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_10_OBUF_2400),
    .Q(\CONTROL/FSM5/WB_value [10])
  );
  FDCE   \CONTROL/FSM5/WB_value_11  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_11_OBUF_2401),
    .Q(\CONTROL/FSM5/WB_value [11])
  );
  FDCE   \CONTROL/FSM5/WB_value_12  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_12_OBUF_2402),
    .Q(\CONTROL/FSM5/WB_value [12])
  );
  FDCE   \CONTROL/FSM5/WB_value_13  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_13_OBUF_2403),
    .Q(\CONTROL/FSM5/WB_value [13])
  );
  FDCE   \CONTROL/FSM5/WB_value_14  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_14_OBUF_2404),
    .Q(\CONTROL/FSM5/WB_value [14])
  );
  FDCE   \CONTROL/FSM5/WB_value_15  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_15_OBUF_2405),
    .Q(\CONTROL/FSM5/WB_value [15])
  );
  FDCE   \CONTROL/FSM5/WB_value_16  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_16_OBUF_2406),
    .Q(\CONTROL/FSM5/WB_value [16])
  );
  FDCE   \CONTROL/FSM5/WB_value_17  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_17_OBUF_2407),
    .Q(\CONTROL/FSM5/WB_value [17])
  );
  FDCE   \CONTROL/FSM5/WB_value_18  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_18_OBUF_2408),
    .Q(\CONTROL/FSM5/WB_value [18])
  );
  FDCE   \CONTROL/FSM5/WB_value_19  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_19_OBUF_2409),
    .Q(\CONTROL/FSM5/WB_value [19])
  );
  FDCE   \CONTROL/FSM5/WB_value_20  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_20_OBUF_2411),
    .Q(\CONTROL/FSM5/WB_value [20])
  );
  FDCE   \CONTROL/FSM5/WB_value_21  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_21_OBUF_2412),
    .Q(\CONTROL/FSM5/WB_value [21])
  );
  FDCE   \CONTROL/FSM5/WB_value_22  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_22_OBUF_2413),
    .Q(\CONTROL/FSM5/WB_value [22])
  );
  FDCE   \CONTROL/FSM5/WB_value_23  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_23_OBUF_2414),
    .Q(\CONTROL/FSM5/WB_value [23])
  );
  FDCE   \CONTROL/FSM5/WB_value_24  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_24_OBUF_2415),
    .Q(\CONTROL/FSM5/WB_value [24])
  );
  FDCE   \CONTROL/FSM5/WB_value_25  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_25_OBUF_2416),
    .Q(\CONTROL/FSM5/WB_value [25])
  );
  FDCE   \CONTROL/FSM5/WB_value_26  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_26_OBUF_2417),
    .Q(\CONTROL/FSM5/WB_value [26])
  );
  FDCE   \CONTROL/FSM5/WB_value_27  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_27_OBUF_2418),
    .Q(\CONTROL/FSM5/WB_value [27])
  );
  FDCE   \CONTROL/FSM5/WB_value_28  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_28_OBUF_2419),
    .Q(\CONTROL/FSM5/WB_value [28])
  );
  FDCE   \CONTROL/FSM5/WB_value_29  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_29_OBUF_2420),
    .Q(\CONTROL/FSM5/WB_value [29])
  );
  FDCE   \CONTROL/FSM5/WB_value_30  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_30_OBUF_2422),
    .Q(\CONTROL/FSM5/WB_value [30])
  );
  FDCE   \CONTROL/FSM5/WB_value_31  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/SaveWB_500 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(reg_datain_31_OBUF_2423),
    .Q(\CONTROL/FSM5/WB_value [31])
  );
  FDCE   \CONTROL/FSM5/fromWB  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/fromWB_not0001_537 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/fromWB_mux0000 ),
    .Q(\CONTROL/FSM5/fromWB_535 )
  );
  FDPE   \CONTROL/FSM5/MemtoReg  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/bubble_en_inv_533 ),
    .D(\CONTROL/FSM5/MemtoReg_mux0000_494 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/MemtoReg_493 )
  );
  FDCE   \CONTROL/FSM5/RegWrite  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/bubble_en_inv_533 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/RegWrite_mux0000_499 ),
    .Q(\CONTROL/FSM5/RegWrite_498 )
  );
  FDPE   \CONTROL/FSM5/RegDst  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/bubble_en_inv_533 ),
    .D(\CONTROL/FSM5/RegDst_mux0000 ),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM5/RegDst_495 )
  );
  FDCE   \CONTROL/FSM5/ALU_SrcB_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/bubble_en_inv_533 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/ALU_SrcB_mux0000 [0]),
    .Q(\CONTROL/FSM5/ALU_SrcB [1])
  );
  FDCE   \CONTROL/FSM5/ALUOp_0  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/bubble_en_inv_533 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/ALUOp_mux0000 [1]),
    .Q(\CONTROL/FSM5/ALUOp [0])
  );
  FDCE   \CONTROL/FSM5/ALUOp_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM5/bubble_en_inv_533 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM5/ALUOp_mux0000 [0]),
    .Q(\CONTROL/FSM5/ALUOp [1])
  );
  LD   \CONTROL/FSM5/next_state_0  (
    .D(\CONTROL/FSM5/next_state_mux0000 [0]),
    .G(\CONTROL/FSM5/next_state_not0001_557 ),
    .Q(\CONTROL/FSM5/next_state [0])
  );
  LD   \CONTROL/FSM5/next_state_1  (
    .D(\CONTROL/FSM5/next_state_mux0000 [1]),
    .G(\CONTROL/FSM5/next_state_not0001_557 ),
    .Q(\CONTROL/FSM5/next_state [1])
  );
  LD   \CONTROL/FSM5/next_state_2  (
    .D(\CONTROL/FSM5/next_state_mux0000 [2]),
    .G(\CONTROL/FSM5/next_state_not0001_557 ),
    .Q(\CONTROL/FSM5/next_state [2])
  );
  LD   \CONTROL/FSM5/next_state_3  (
    .D(\CONTROL/FSM5/next_state_mux0000 [3]),
    .G(\CONTROL/FSM5/next_state_not0001_557 ),
    .Q(\CONTROL/FSM5/next_state [3])
  );
  LD   \CONTROL/FSM5/next_state_4  (
    .D(\CONTROL/FSM5/next_state_mux0000 [4]),
    .G(\CONTROL/FSM5/next_state_not0001_557 ),
    .Q(\CONTROL/FSM5/next_state [4])
  );
  FDC   \CONTROL/en0  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_op_1_OBUF_1885),
    .Q(\CONTROL/en0_767 )
  );
  FDCE   \CONTROL/JmpSig  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/JmpSig_not0001 ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(flush_OBUF_1994),
    .Q(\CONTROL/JmpSig_645 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<0>  (
    .I0(alu_result_23_OBUF_1965),
    .I1(alu_result_22_OBUF_1964),
    .I2(alu_result_24_OBUF_1966),
    .I3(alu_result_21_OBUF_1963),
    .O(\myALU/ALU_ZERO_wg_lut [0])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<0>  (
    .CI(alu_op_1_OBUF_1885),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [0]),
    .O(\myALU/ALU_ZERO_wg_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<1>  (
    .I0(alu_result_20_OBUF_1962),
    .I1(alu_result_19_OBUF_1960),
    .I2(alu_result_25_OBUF_1967),
    .I3(alu_result_18_OBUF_1959),
    .O(\myALU/ALU_ZERO_wg_lut [1])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<1>  (
    .CI(\myALU/ALU_ZERO_wg_cy [0]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [1]),
    .O(\myALU/ALU_ZERO_wg_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<2>  (
    .I0(alu_result_17_OBUF_1958),
    .I1(alu_result_16_OBUF_1957),
    .I2(alu_result_26_OBUF_1968),
    .I3(alu_result_15_OBUF_1956),
    .O(\myALU/ALU_ZERO_wg_lut [2])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<2>  (
    .CI(\myALU/ALU_ZERO_wg_cy [1]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [2]),
    .O(\myALU/ALU_ZERO_wg_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<3>  (
    .I0(alu_result_14_OBUF_1955),
    .I1(alu_result_13_OBUF_1954),
    .I2(alu_result_27_OBUF_1969),
    .I3(alu_result_12_OBUF_1953),
    .O(\myALU/ALU_ZERO_wg_lut [3])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<3>  (
    .CI(\myALU/ALU_ZERO_wg_cy [2]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [3]),
    .O(\myALU/ALU_ZERO_wg_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<4>  (
    .I0(alu_result_11_OBUF_1952),
    .I1(alu_result_10_OBUF_1951),
    .I2(alu_result_28_OBUF_1970),
    .I3(alu_result_9_OBUF_1981),
    .O(\myALU/ALU_ZERO_wg_lut [4])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<4>  (
    .CI(\myALU/ALU_ZERO_wg_cy [3]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [4]),
    .O(\myALU/ALU_ZERO_wg_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<5>  (
    .I0(alu_result_8_OBUF_1980),
    .I1(alu_result_7_OBUF_1979),
    .I2(alu_result_29_OBUF_1971),
    .I3(alu_result_6_OBUF_1978),
    .O(\myALU/ALU_ZERO_wg_lut [5])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<5>  (
    .CI(\myALU/ALU_ZERO_wg_cy [4]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [5]),
    .O(\myALU/ALU_ZERO_wg_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<6>  (
    .I0(alu_result_5_OBUF_1977),
    .I1(alu_result_4_OBUF_1976),
    .I2(alu_result_30_OBUF_1973),
    .I3(alu_result_3_OBUF_1975),
    .O(\myALU/ALU_ZERO_wg_lut [6])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<6>  (
    .CI(\myALU/ALU_ZERO_wg_cy [5]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [6]),
    .O(\myALU/ALU_ZERO_wg_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<7>  (
    .I0(alu_result_2_OBUF_1972),
    .I1(alu_result_1_OBUF_1961),
    .I2(alu_result_31_OBUF_1974),
    .I3(alu_result_0_OBUF_1950),
    .O(\myALU/ALU_ZERO_wg_lut [7])
  );
  MUXCY   \myALU/ALU_ZERO_wg_cy<7>  (
    .CI(\myALU/ALU_ZERO_wg_cy [6]),
    .DI(BranchSig_OBUF_64),
    .S(\myALU/ALU_ZERO_wg_lut [7]),
    .O(ALU_ZERO_OBUF_59)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/FSM4/Branch_mux0000111  (
    .I0(\CONTROL/FSM4/next_state [1]),
    .I1(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/N339 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM3/ALU_SrcB_or000221  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .O(\CONTROL/N214 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM5/ALUOp_mux0000<1>211  (
    .I0(\CONTROL/FSM5/next_state [2]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [4]),
    .O(\CONTROL/N1511 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CONTROL/FSM3/RegWrite_mux000011  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [4]),
    .I2(\CONTROL/FSM3/next_state [0]),
    .O(\CONTROL/N121 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM2/ALUOp_mux0000<1>211  (
    .I0(\CONTROL/FSM2/next_state [2]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [4]),
    .O(\CONTROL/N1451 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CONTROL/FSM1/RegWrite_mux000011  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [4]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .O(\CONTROL/N123 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM5/fromWB_mux00001  (
    .I0(\CONTROL/FSM5/next_state [1]),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(\CONTROL/N239 ),
    .I3(\CONTROL/FSM5/next_state [4]),
    .O(\CONTROL/FSM5/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM4/fromWB_mux00001  (
    .I0(\CONTROL/FSM4/next_state [0]),
    .I1(\CONTROL/FSM4/next_state [2]),
    .I2(\CONTROL/N339 ),
    .I3(\CONTROL/FSM4/next_state [3]),
    .O(\CONTROL/FSM4/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/ALUOp_mux0000<1>11  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [3]),
    .I2(\CONTROL/FSM4/next_state [2]),
    .I3(\CONTROL/FSM4/next_state [1]),
    .O(\CONTROL/N138 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM3/fromWB_mux00001  (
    .I0(\CONTROL/FSM3/next_state [4]),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/FSM3/next_state [2]),
    .I3(\CONTROL/N320 ),
    .O(\CONTROL/FSM3/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM3/ALUOp_mux0000<1>11  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .I2(\CONTROL/FSM3/next_state [4]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(\CONTROL/N140 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM2/fromWB_mux00001  (
    .I0(\CONTROL/FSM2/next_state [1]),
    .I1(\CONTROL/FSM2/next_state [2]),
    .I2(\CONTROL/N240 ),
    .I3(\CONTROL/FSM2/next_state [4]),
    .O(\CONTROL/FSM2/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM1/ALUOp_mux0000<1>11  (
    .I0(\CONTROL/FSM1/next_state [4]),
    .I1(\CONTROL/FSM1/next_state [3]),
    .I2(\CONTROL/FSM1/next_state [2]),
    .I3(\CONTROL/FSM1/next_state [1]),
    .O(\CONTROL/N141 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM4/ALU_SrcB_or0002_SW1  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [2]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(\CONTROL/FSM4/next_state [0]),
    .O(N32)
  );
  LUT4 #(
    .INIT ( 16'hAA8E ))
  \CONTROL/FSM5/next_state_not0001_SW0  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [0]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \CONTROL/FSM5/next_state_not0001  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(N34),
    .I2(\CONTROL/FSM5/state [4]),
    .I3(\CONTROL/FSM5/flush_en ),
    .O(\CONTROL/FSM5/next_state_not0001_557 )
  );
  LUT4 #(
    .INIT ( 16'hAA8E ))
  \CONTROL/FSM4/next_state_not0001_SW0  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [0]),
    .I3(\CONTROL/FSM4/state [2]),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \CONTROL/FSM4/next_state_not0001  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(N36),
    .I2(\CONTROL/FSM4/state [4]),
    .I3(\CONTROL/FSM4/flush_en ),
    .O(\CONTROL/FSM4/next_state_not0001_459 )
  );
  LUT4 #(
    .INIT ( 16'hAA8E ))
  \CONTROL/FSM3/next_state_not0001_SW0  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [0]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \CONTROL/FSM3/next_state_not0001  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(N38),
    .I2(\CONTROL/FSM3/state [4]),
    .I3(\CONTROL/FSM3/flush_en ),
    .O(\CONTROL/FSM3/next_state_not0001_352 )
  );
  LUT4 #(
    .INIT ( 16'hAA8E ))
  \CONTROL/FSM2/next_state_not0001_SW0  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [0]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \CONTROL/FSM2/next_state_not0001  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(N40),
    .I2(\CONTROL/FSM2/state [4]),
    .I3(\CONTROL/FSM2/flush_en ),
    .O(\CONTROL/FSM2/next_state_not0001_258 )
  );
  LUT4 #(
    .INIT ( 16'hAA8E ))
  \CONTROL/FSM1/next_state_not0001_SW0  (
    .I0(\CONTROL/FSM1/state [4]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/FSM1/state [2]),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'hFF1B ))
  \CONTROL/FSM1/next_state_not0001  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(N42),
    .I2(\CONTROL/FSM1/state [4]),
    .I3(\CONTROL/FSM1/flush_en ),
    .O(\CONTROL/FSM1/next_state_not0001_160 )
  );
  LUT4 #(
    .INIT ( 16'hFD8D ))
  \CONTROL/FSM1/ALU_SrcB_or0002_SW0  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [1]),
    .I3(\CONTROL/N123 ),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/FSM1/ALU_SrcB_or0002_SW1  (
    .I0(\CONTROL/FSM1/next_state [1]),
    .I1(\CONTROL/N123 ),
    .I2(\CONTROL/FSM1/next_state [2]),
    .I3(\CONTROL/FSM1/next_state [3]),
    .O(N45)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \CONTROL/FSM1/ALU_SrcB_or0002  (
    .I0(\CONTROL/FSM1/next_state [4]),
    .I1(\CONTROL/FSM1/next_state [0]),
    .I2(N44),
    .I3(N45),
    .O(\CONTROL/FSM1/ALU_SrcB_or0002_94 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/Mcount_JmpSigEn_eqn_01  (
    .I0(flush_OBUF_1994),
    .I1(\CONTROL/JmpSigEn [0]),
    .O(\CONTROL/Mcount_JmpSigEn_eqn_0 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<6>1  (
    .I0(\CONTROL/FSM4/next_en_438 ),
    .I1(\CONTROL/FSM5/next_state [0]),
    .O(\CONTROL/FSM5/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<5>1  (
    .I0(\CONTROL/FSM4/next_en_438 ),
    .I1(\CONTROL/FSM5/next_state [1]),
    .O(\CONTROL/FSM5/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<4>1  (
    .I0(\CONTROL/FSM4/next_en_438 ),
    .I1(\CONTROL/FSM5/next_state [2]),
    .O(\CONTROL/FSM5/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_mux0000<3>1  (
    .I0(\CONTROL/FSM4/next_en_438 ),
    .I1(\CONTROL/FSM5/next_state [3]),
    .O(\CONTROL/FSM5/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM5/state_mux0000<2>1  (
    .I0(\CONTROL/FSM4/next_en_438 ),
    .I1(\CONTROL/FSM5/next_state [4]),
    .O(\CONTROL/FSM5/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<6>1  (
    .I0(\CONTROL/FSM3/next_en_335 ),
    .I1(\CONTROL/FSM4/next_state [0]),
    .O(\CONTROL/FSM4/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<5>1  (
    .I0(\CONTROL/FSM3/next_en_335 ),
    .I1(\CONTROL/FSM4/next_state [1]),
    .O(\CONTROL/FSM4/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<4>1  (
    .I0(\CONTROL/FSM3/next_en_335 ),
    .I1(\CONTROL/FSM4/next_state [2]),
    .O(\CONTROL/FSM4/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_mux0000<3>1  (
    .I0(\CONTROL/FSM3/next_en_335 ),
    .I1(\CONTROL/FSM4/next_state [3]),
    .O(\CONTROL/FSM4/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM4/state_mux0000<2>1  (
    .I0(\CONTROL/FSM3/next_en_335 ),
    .I1(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<6>1  (
    .I0(\CONTROL/FSM2/next_en_238 ),
    .I1(\CONTROL/FSM3/next_state [0]),
    .O(\CONTROL/FSM3/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<5>1  (
    .I0(\CONTROL/FSM2/next_en_238 ),
    .I1(\CONTROL/FSM3/next_state [1]),
    .O(\CONTROL/FSM3/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<4>1  (
    .I0(\CONTROL/FSM2/next_en_238 ),
    .I1(\CONTROL/FSM3/next_state [2]),
    .O(\CONTROL/FSM3/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_mux0000<3>1  (
    .I0(\CONTROL/FSM2/next_en_238 ),
    .I1(\CONTROL/FSM3/next_state [3]),
    .O(\CONTROL/FSM3/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM3/state_mux0000<2>1  (
    .I0(\CONTROL/FSM2/next_en_238 ),
    .I1(\CONTROL/FSM3/next_state [4]),
    .O(\CONTROL/FSM3/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<6>1  (
    .I0(\CONTROL/FSM1/next_en_140 ),
    .I1(\CONTROL/FSM2/next_state [0]),
    .O(\CONTROL/FSM2/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<5>1  (
    .I0(\CONTROL/FSM1/next_en_140 ),
    .I1(\CONTROL/FSM2/next_state [1]),
    .O(\CONTROL/FSM2/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<4>1  (
    .I0(\CONTROL/FSM1/next_en_140 ),
    .I1(\CONTROL/FSM2/next_state [2]),
    .O(\CONTROL/FSM2/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_mux0000<3>1  (
    .I0(\CONTROL/FSM1/next_en_140 ),
    .I1(\CONTROL/FSM2/next_state [3]),
    .O(\CONTROL/FSM2/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM2/state_mux0000<2>1  (
    .I0(\CONTROL/FSM1/next_en_140 ),
    .I1(\CONTROL/FSM2/next_state [4]),
    .O(\CONTROL/FSM2/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<6>1  (
    .I0(\CONTROL/en0_767 ),
    .I1(\CONTROL/FSM1/next_state [0]),
    .O(\CONTROL/FSM1/state_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<5>1  (
    .I0(\CONTROL/en0_767 ),
    .I1(\CONTROL/FSM1/next_state [1]),
    .O(\CONTROL/FSM1/state_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<4>1  (
    .I0(\CONTROL/en0_767 ),
    .I1(\CONTROL/FSM1/next_state [2]),
    .O(\CONTROL/FSM1/state_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_mux0000<3>1  (
    .I0(\CONTROL/en0_767 ),
    .I1(\CONTROL/FSM1/next_state [3]),
    .O(\CONTROL/FSM1/state_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM1/state_mux0000<2>1  (
    .I0(\CONTROL/en0_767 ),
    .I1(\CONTROL/FSM1/next_state [4]),
    .O(\CONTROL/FSM1/state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \CONTROL/Mcount_BrSigEn_eqn_11  (
    .I0(\CONTROL/BrSigEn [0]),
    .I1(\CONTROL/BrSigEn [1]),
    .O(\CONTROL/Mcount_BrSigEn_eqn_1 )
  );
  LUT3 #(
    .INIT ( 8'hF9 ))
  \CONTROL/Mcount_JmpSigEn_eqn_11  (
    .I0(\CONTROL/JmpSigEn [1]),
    .I1(\CONTROL/JmpSigEn [0]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/Mcount_JmpSigEn_eqn_1 )
  );
  LUT4 #(
    .INIT ( 16'hFBEF ))
  \CONTROL/FSM3/RegDst_mux0000_SW0  (
    .I0(\CONTROL/FSM3/next_state [4]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .I2(\CONTROL/FSM3/next_state [2]),
    .I3(\CONTROL/FSM3/next_state [1]),
    .O(N50)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM3/RegDst_mux0000_SW1  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/FSM3/next_state [2]),
    .I2(\CONTROL/FSM3/next_state [3]),
    .I3(\CONTROL/FSM3/next_state [4]),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'hF8A8 ))
  \CONTROL/FSM3/RegDst_mux0000  (
    .I0(\CONTROL/FSM3/RegDst_293 ),
    .I1(N50),
    .I2(\CONTROL/FSM3/next_state [0]),
    .I3(N51),
    .O(\CONTROL/FSM3/RegDst_mux0000_294 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM1/RegDst_mux0000_SW0  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(N53)
  );
  LUT4 #(
    .INIT ( 16'hFBEF ))
  \CONTROL/FSM1/RegDst_mux0000_SW1  (
    .I0(\CONTROL/FSM1/next_state [0]),
    .I1(\CONTROL/FSM1/next_state [3]),
    .I2(\CONTROL/FSM1/next_state [2]),
    .I3(\CONTROL/FSM1/next_state [1]),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM1/RegDst_mux0000  (
    .I0(\CONTROL/FSM1/RegDst_97 ),
    .I1(N54),
    .I2(\CONTROL/FSM1/next_state [4]),
    .I3(N53),
    .O(\CONTROL/FSM1/RegDst_mux0000_98 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM1/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [1]),
    .I3(\CONTROL/FSM1/next_state [0]),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hBDFF ))
  \CONTROL/FSM1/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [1]),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM1/MemtoReg_mux0000  (
    .I0(\CONTROL/FSM1/MemtoReg_95 ),
    .I1(N57),
    .I2(\CONTROL/FSM1/next_state [4]),
    .I3(N56),
    .O(\CONTROL/FSM1/MemtoReg_mux0000_96 )
  );
  LUT4 #(
    .INIT ( 16'h4108 ))
  \CONTROL/FSM5/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N59)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM5/RegWrite_mux0000_SW1  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM5/RegWrite_mux0000  (
    .I0(\CONTROL/FSM5/RegWrite_498 ),
    .I1(N60),
    .I2(\CONTROL/FSM5/next_state [4]),
    .I3(N59),
    .O(\CONTROL/FSM5/RegWrite_mux0000_499 )
  );
  LUT4 #(
    .INIT ( 16'h4108 ))
  \CONTROL/FSM4/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM4/RegWrite_mux0000  (
    .I0(\CONTROL/FSM4/RegWrite_398 ),
    .I1(N32),
    .I2(\CONTROL/FSM4/next_state [4]),
    .I3(N62),
    .O(\CONTROL/FSM4/RegWrite_mux0000_399 )
  );
  LUT4 #(
    .INIT ( 16'h4108 ))
  \CONTROL/FSM3/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/FSM3/next_state [0]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N65)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM3/RegWrite_mux0000_SW1  (
    .I0(\CONTROL/FSM3/next_state [3]),
    .I1(\CONTROL/FSM3/next_state [0]),
    .I2(\CONTROL/FSM3/next_state [1]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM3/RegWrite_mux0000  (
    .I0(\CONTROL/FSM3/RegWrite_295 ),
    .I1(N66),
    .I2(\CONTROL/FSM3/next_state [4]),
    .I3(N65),
    .O(\CONTROL/FSM3/RegWrite_mux0000_296 )
  );
  LUT4 #(
    .INIT ( 16'h4108 ))
  \CONTROL/FSM2/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM2/RegWrite_mux0000_SW1  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N69)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM2/RegWrite_mux0000  (
    .I0(\CONTROL/FSM2/RegWrite_198 ),
    .I1(N69),
    .I2(\CONTROL/FSM2/next_state [4]),
    .I3(N68),
    .O(\CONTROL/FSM2/RegWrite_mux0000_199 )
  );
  LUT4 #(
    .INIT ( 16'h4108 ))
  \CONTROL/FSM1/RegWrite_mux0000_SW0  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM1/RegWrite_mux0000_SW1  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'hADA8 ))
  \CONTROL/FSM1/RegWrite_mux0000  (
    .I0(\CONTROL/FSM1/RegWrite_99 ),
    .I1(N72),
    .I2(\CONTROL/FSM1/next_state [4]),
    .I3(N71),
    .O(\CONTROL/FSM1/RegWrite_mux0000_100 )
  );
  LUT4 #(
    .INIT ( 16'h0046 ))
  \CONTROL/FSM1/ALUOp_mux0000<1>_SW0  (
    .I0(\CONTROL/FSM1/next_state [4]),
    .I1(\CONTROL/FSM1/next_state [3]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(N74)
  );
  LUT4 #(
    .INIT ( 16'hDC54 ))
  \CONTROL/FSM1/ALUOp_mux0000<1>  (
    .I0(\CONTROL/FSM1/next_state [1]),
    .I1(\CONTROL/FSM1/ALUOp [0]),
    .I2(N74),
    .I3(\CONTROL/N123 ),
    .O(\CONTROL/FSM1/ALUOp_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/FSM3/ALU_SrcB_mux0000<0>_SW0  (
    .I0(\CONTROL/FSM3/next_state [0]),
    .I1(\CONTROL/N140 ),
    .I2(\CONTROL/FSM3/ALU_SrcB [1]),
    .I3(\CONTROL/FSM3/ALU_SrcB_or0002_289 ),
    .O(N77)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM3/ALU_SrcB_mux0000<0>  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/FSM3/next_state [2]),
    .I2(\CONTROL/N121 ),
    .I3(N77),
    .O(\CONTROL/FSM3/ALU_SrcB_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/FSM3/ALUOp_mux0000<0>_SW0  (
    .I0(\CONTROL/FSM3/next_state [0]),
    .I1(\CONTROL/N140 ),
    .I2(\CONTROL/FSM3/ALUOp [1]),
    .I3(\CONTROL/FSM3/ALU_SrcB_or0002_289 ),
    .O(N79)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM3/ALUOp_mux0000<0>  (
    .I0(N79),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/FSM3/next_state [2]),
    .I3(\CONTROL/N121 ),
    .O(\CONTROL/FSM3/ALUOp_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/FSM1/ALU_SrcB_mux0000<0>_SW0  (
    .I0(\CONTROL/FSM1/next_state [0]),
    .I1(\CONTROL/N141 ),
    .I2(\CONTROL/FSM1/ALU_SrcB [1]),
    .I3(\CONTROL/FSM1/ALU_SrcB_or0002_94 ),
    .O(N81)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM1/ALU_SrcB_mux0000<0>  (
    .I0(\CONTROL/FSM1/next_state [1]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/N123 ),
    .I3(N81),
    .O(\CONTROL/FSM1/ALU_SrcB_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/FSM1/ALUOp_mux0000<0>_SW0  (
    .I0(\CONTROL/FSM1/next_state [0]),
    .I1(\CONTROL/N141 ),
    .I2(\CONTROL/FSM1/ALUOp [1]),
    .I3(\CONTROL/FSM1/ALU_SrcB_or0002_94 ),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM1/ALUOp_mux0000<0>  (
    .I0(N83),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [2]),
    .I3(\CONTROL/N123 ),
    .O(\CONTROL/FSM1/ALUOp_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM5/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [2]),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'hF2FF ))
  \CONTROL/FSM5/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM5/next_state [0]),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(\CONTROL/N1511 ),
    .I3(\CONTROL/FSM5/next_state [1]),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'hDC54 ))
  \CONTROL/FSM5/MemtoReg_mux0000  (
    .I0(\CONTROL/N239 ),
    .I1(\CONTROL/FSM5/MemtoReg_493 ),
    .I2(N85),
    .I3(N86),
    .O(\CONTROL/FSM5/MemtoReg_mux0000_494 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM2/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [2]),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hF2FF ))
  \CONTROL/FSM2/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM2/next_state [0]),
    .I1(\CONTROL/FSM2/next_state [2]),
    .I2(\CONTROL/N1451 ),
    .I3(\CONTROL/FSM2/next_state [1]),
    .O(N89)
  );
  LUT4 #(
    .INIT ( 16'hDC54 ))
  \CONTROL/FSM2/MemtoReg_mux0000  (
    .I0(\CONTROL/N240 ),
    .I1(\CONTROL/FSM2/MemtoReg_193 ),
    .I2(N88),
    .I3(N89),
    .O(\CONTROL/FSM2/MemtoReg_mux0000_194 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/MemtoReg_mux0000_SW0  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [2]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/N339 ),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'hEE4E ))
  \CONTROL/FSM4/MemtoReg_mux0000  (
    .I0(\CONTROL/FSM4/MemtoReg_390 ),
    .I1(N91),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(N92),
    .O(\CONTROL/FSM4/MemtoReg_mux0000_391 )
  );
  LUT3 #(
    .INIT ( 8'h5D ))
  \CONTROL/FSM3/MemtoReg_mux000012  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/FSM3/next_state [0]),
    .I2(\CONTROL/FSM3/next_state [2]),
    .O(\CONTROL/FSM3/MemtoReg_mux000012_292 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM5/ALUOp_mux0000<0>18  (
    .I0(\CONTROL/FSM5/ALUOp [1]),
    .I1(\CONTROL/FSM5/ALU_SrcB_or0002_492 ),
    .I2(\CONTROL/FSM5/ALUOp_mux0000<0>11_485 ),
    .O(\CONTROL/FSM5/ALUOp_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM2/ALUOp_mux0000<0>18  (
    .I0(\CONTROL/FSM2/ALUOp [1]),
    .I1(\CONTROL/FSM2/ALU_SrcB_or0002_192 ),
    .I2(\CONTROL/FSM2/ALUOp_mux0000<0>11_185 ),
    .O(\CONTROL/FSM2/ALUOp_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/FSM4/ALU_SrcB_mux0000<0>12  (
    .I0(\CONTROL/FSM4/next_state [0]),
    .I1(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/ALUOp_mux0000<0>9 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM4/ALU_SrcB_mux0000<0>31  (
    .I0(\CONTROL/FSM4/ALU_SrcB [1]),
    .I1(\CONTROL/FSM4/ALU_SrcB_or0002_389 ),
    .I2(\CONTROL/FSM4/ALU_SrcB_mux0000<0>21_388 ),
    .O(\CONTROL/FSM4/ALU_SrcB_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM4/ALUOp_mux0000<0>26  (
    .I0(\CONTROL/FSM4/ALUOp [1]),
    .I1(\CONTROL/FSM4/ALU_SrcB_or0002_389 ),
    .I2(\CONTROL/FSM4/ALUOp_mux0000<0>17_379 ),
    .O(\CONTROL/FSM4/ALUOp_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/FSM3/ALUOp_mux0000<1>35  (
    .I0(\CONTROL/FSM3/ALUOp [0]),
    .I1(\CONTROL/FSM3/ALUOp_mux0000<1>18 ),
    .I2(\CONTROL/N140 ),
    .I3(\CONTROL/N147 ),
    .O(\CONTROL/FSM3/ALUOp_mux0000 [1])
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
  \CONTROL/JmpSig_not00011  (
    .I0(\CONTROL/JmpSigEn [0]),
    .I1(\CONTROL/JmpSigEn [1]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/JmpSig_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CONTROL/JmpSigEn_not00011  (
    .I0(flush_OBUF_1994),
    .I1(\CONTROL/JmpSigEn [1]),
    .I2(\CONTROL/JmpSigEn [0]),
    .O(\CONTROL/JmpSigEn_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM5/SaveWB_SW0  (
    .I0(\CONTROL/FSM5/next_state [0]),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(\CONTROL/FSM5/RegWrite_498 ),
    .I3(\CONTROL/FSM5/next_state [1]),
    .O(N98)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM5/SaveWB  (
    .I0(\CONTROL/N2 ),
    .I1(\CONTROL/FSM5/next_state [4]),
    .I2(\CONTROL/FSM5/next_state [3]),
    .I3(N98),
    .O(\CONTROL/FSM5/SaveWB_500 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM2/SaveWB_SW0  (
    .I0(\CONTROL/FSM2/next_state [0]),
    .I1(\CONTROL/FSM2/next_state [2]),
    .I2(\CONTROL/FSM2/RegWrite_198 ),
    .I3(\CONTROL/FSM2/next_state [1]),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM2/SaveWB  (
    .I0(\CONTROL/N5 ),
    .I1(\CONTROL/FSM2/next_state [4]),
    .I2(\CONTROL/FSM2/next_state [3]),
    .I3(N100),
    .O(\CONTROL/FSM2/SaveWB_200 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \CONTROL/FSM5/next_state_mux0000<0>411  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/N116 ),
    .O(\CONTROL/N322 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/FSM4/SaveWB2  (
    .I0(\CONTROL/FSM4/next_state [0]),
    .I1(\CONTROL/N3 ),
    .I2(\CONTROL/N266 ),
    .I3(\CONTROL/FSM4/RegWrite_398 ),
    .O(\CONTROL/FSM4/SaveWB )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \CONTROL/FSM3/fromWB_not00011  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [1]),
    .I2(\CONTROL/N121 ),
    .I3(\CONTROL/FSM3/SaveWB_297 ),
    .O(\CONTROL/FSM3/fromWB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \CONTROL/FSM1/fromWB_not00011  (
    .I0(\CONTROL/FSM1/next_state [2]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/N123 ),
    .I3(\CONTROL/FSM1/SaveWB_101 ),
    .O(\CONTROL/FSM1/fromWB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM3/SaveWB_SW0  (
    .I0(\CONTROL/FSM3/next_state [4]),
    .I1(\CONTROL/FSM3/next_state [2]),
    .I2(\CONTROL/FSM3/RegWrite_295 ),
    .I3(\CONTROL/FSM3/next_state [1]),
    .O(N104)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM3/SaveWB  (
    .I0(\CONTROL/FSM3/next_state [0]),
    .I1(\CONTROL/N4 ),
    .I2(\CONTROL/FSM3/next_state [3]),
    .I3(N104),
    .O(\CONTROL/FSM3/SaveWB_297 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM1/SaveWB_SW0  (
    .I0(\CONTROL/FSM1/next_state [0]),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/FSM1/RegWrite_99 ),
    .I3(\CONTROL/FSM1/next_state [1]),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM1/SaveWB  (
    .I0(\CONTROL/N6 ),
    .I1(\CONTROL/FSM1/next_state [4]),
    .I2(\CONTROL/FSM1/next_state [3]),
    .I3(N106),
    .O(\CONTROL/FSM1/SaveWB_101 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<9>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [9]),
    .I2(\ALURESULT/alu_out [9]),
    .O(Mem_addr_9_OBUF_1141)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<31>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [31]),
    .I2(\ALURESULT/alu_out [31]),
    .O(Mem_addr_31_OBUF_1134)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<30>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [30]),
    .I2(\ALURESULT/alu_out [30]),
    .O(Mem_addr_30_OBUF_1133)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<29>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [29]),
    .I2(\ALURESULT/alu_out [29]),
    .O(Mem_addr_29_OBUF_1131)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<28>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [28]),
    .I2(\ALURESULT/alu_out [28]),
    .O(Mem_addr_28_OBUF_1130)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<27>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [27]),
    .I2(\ALURESULT/alu_out [27]),
    .O(Mem_addr_27_OBUF_1129)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<26>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [26]),
    .I2(\ALURESULT/alu_out [26]),
    .O(Mem_addr_26_OBUF_1128)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<25>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [25]),
    .I2(\ALURESULT/alu_out [25]),
    .O(Mem_addr_25_OBUF_1127)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<24>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [24]),
    .I2(\ALURESULT/alu_out [24]),
    .O(Mem_addr_24_OBUF_1126)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<23>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [23]),
    .I2(\ALURESULT/alu_out [23]),
    .O(Mem_addr_23_OBUF_1125)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<22>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [22]),
    .I2(\ALURESULT/alu_out [22]),
    .O(Mem_addr_22_OBUF_1124)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<21>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [21]),
    .I2(\ALURESULT/alu_out [21]),
    .O(Mem_addr_21_OBUF_1123)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<20>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [20]),
    .I2(\ALURESULT/alu_out [20]),
    .O(Mem_addr_20_OBUF_1122)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<1>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [1]),
    .I2(\ALURESULT/alu_out [1]),
    .O(Mem_addr_1_OBUF_1121)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<19>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [19]),
    .I2(\ALURESULT/alu_out [19]),
    .O(Mem_addr_19_OBUF_1120)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<18>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [18]),
    .I2(\ALURESULT/alu_out [18]),
    .O(Mem_addr_18_OBUF_1119)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<17>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [17]),
    .I2(\ALURESULT/alu_out [17]),
    .O(Mem_addr_17_OBUF_1118)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<16>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [16]),
    .I2(\ALURESULT/alu_out [16]),
    .O(Mem_addr_16_OBUF_1117)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<15>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [15]),
    .I2(\ALURESULT/alu_out [15]),
    .O(Mem_addr_15_OBUF_1116)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<14>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [14]),
    .I2(\ALURESULT/alu_out [14]),
    .O(Mem_addr_14_OBUF_1115)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<13>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [13]),
    .I2(\ALURESULT/alu_out [13]),
    .O(Mem_addr_13_OBUF_1114)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<12>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [12]),
    .I2(\ALURESULT/alu_out [12]),
    .O(Mem_addr_12_OBUF_1113)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<11>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [11]),
    .I2(\ALURESULT/alu_out [11]),
    .O(Mem_addr_11_OBUF_1112)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<10>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [10]),
    .I2(\ALURESULT/alu_out [10]),
    .O(Mem_addr_10_OBUF_1111)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<0>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [0]),
    .I2(\ALURESULT/alu_out [0]),
    .O(Mem_addr_0_OBUF_1110)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<8>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [8]),
    .I2(\ALURESULT/alu_out [8]),
    .O(Mem_addr_8_OBUF_1140)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<7>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [7]),
    .I2(\ALURESULT/alu_out [7]),
    .O(Mem_addr_7_OBUF_1139)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<6>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [6]),
    .I2(\ALURESULT/alu_out [6]),
    .O(Mem_addr_6_OBUF_1138)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<5>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [5]),
    .I2(\ALURESULT/alu_out [5]),
    .O(Mem_addr_5_OBUF_1137)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<4>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [4]),
    .I2(\ALURESULT/alu_out [4]),
    .O(Mem_addr_4_OBUF_1136)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<3>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [3]),
    .I2(\ALURESULT/alu_out [3]),
    .O(Mem_addr_3_OBUF_1135)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \MemAddr/Mem_addr<2>1  (
    .I0(DMemVisit_OBUF_805),
    .I1(\PCReg/PC [2]),
    .I2(\ALURESULT/alu_out [2]),
    .O(Mem_addr_2_OBUF_1132)
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM1/stage_mux0000<2>1  (
    .I0(\CONTROL/FSM1/stage [0]),
    .I1(\CONTROL/N6 ),
    .I2(\CONTROL/FSM1/flush_en ),
    .I3(\CONTROL/ack1_755 ),
    .O(\CONTROL/FSM1/stage_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h8819 ))
  \CONTROL/FSM1/next_state_mux0000<0>27  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/ack1_755 ),
    .I3(\CONTROL/FSM1/state [0]),
    .O(\CONTROL/FSM1/next_state_mux0000<0>27_148 )
  );
  LUT4 #(
    .INIT ( 16'h2232 ))
  \CONTROL/FSM1/next_state_mux0000<0>77  (
    .I0(\CONTROL/FSM1/next_state_mux0000<0>53_149 ),
    .I1(\CONTROL/FSM1/state [2]),
    .I2(\CONTROL/FSM1/next_state_mux0000<0>27_148 ),
    .I3(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/FSM1/next_state_mux0000<0>77_150 )
  );
  LUT4 #(
    .INIT ( 16'h1371 ))
  \CONTROL/FSM1/next_state_mux0000<0>138  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/ack1_755 ),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/FSM1/state [3]),
    .O(\CONTROL/FSM1/next_state_mux0000<0>138_147 )
  );
  LUT4 #(
    .INIT ( 16'h8819 ))
  \CONTROL/FSM2/next_state_mux0000<0>27  (
    .I0(\CONTROL/FSM2/state [3]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/N127 ),
    .I3(\CONTROL/FSM2/state [0]),
    .O(\CONTROL/FSM2/next_state_mux0000<0>27_246 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM2/next_state_mux0000<0>50  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [1]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(\CONTROL/FSM2/next_state_mux0000<0>50_247 )
  );
  LUT4 #(
    .INIT ( 16'h2232 ))
  \CONTROL/FSM2/next_state_mux0000<0>73  (
    .I0(\CONTROL/FSM2/next_state_mux0000<0>50_247 ),
    .I1(\CONTROL/FSM2/state [2]),
    .I2(\CONTROL/FSM2/next_state_mux0000<0>27_246 ),
    .I3(\CONTROL/FSM2/state [4]),
    .O(\CONTROL/FSM2/next_state_mux0000<0>73_248 )
  );
  LUT4 #(
    .INIT ( 16'h1371 ))
  \CONTROL/FSM2/next_state_mux0000<0>135  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/N127 ),
    .I2(\CONTROL/FSM2/state [1]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(\CONTROL/FSM2/next_state_mux0000<0>135_245 )
  );
  LUT4 #(
    .INIT ( 16'h8819 ))
  \CONTROL/FSM4/next_state_mux0000<0>27  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/FSM4/state [0]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>27_446 )
  );
  LUT4 #(
    .INIT ( 16'h2232 ))
  \CONTROL/FSM4/next_state_mux0000<0>77  (
    .I0(\CONTROL/FSM4/next_state_mux0000<0>53 ),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/FSM4/next_state_mux0000<0>27_446 ),
    .I3(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>77_449 )
  );
  LUT4 #(
    .INIT ( 16'h1371 ))
  \CONTROL/FSM4/next_state_mux0000<0>138  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/ack4 ),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/FSM4/state [3]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>138_445 )
  );
  LUT4 #(
    .INIT ( 16'h8819 ))
  \CONTROL/FSM3/next_state_mux0000<0>27  (
    .I0(\CONTROL/FSM3/state [3]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/ack3_757 ),
    .I3(\CONTROL/FSM3/state [0]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>27_343 )
  );
  LUT4 #(
    .INIT ( 16'h2232 ))
  \CONTROL/FSM3/next_state_mux0000<0>77  (
    .I0(\CONTROL/FSM3/next_state_mux0000<0>53_344 ),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/FSM3/next_state_mux0000<0>27_343 ),
    .I3(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>77_345 )
  );
  LUT4 #(
    .INIT ( 16'h1371 ))
  \CONTROL/FSM3/next_state_mux0000<0>138  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/ack3_757 ),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>138_342 )
  );
  LUT4 #(
    .INIT ( 16'h28E2 ))
  \CONTROL/FSM1/next_state_mux0000<4>50  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [0]),
    .O(\CONTROL/FSM1/next_state_mux0000<4>50_159 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM1/stage_mux0000<0>31  (
    .I0(\CONTROL/FSM1/flush_en ),
    .I1(\CONTROL/ack1_755 ),
    .I2(\CONTROL/N6 ),
    .O(\CONTROL/N273 )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \CONTROL/FSM1/stage_mux0000<1>1  (
    .I0(\CONTROL/FSM1/stage [0]),
    .I1(\CONTROL/FSM1/stage [1]),
    .I2(\CONTROL/N273 ),
    .O(\CONTROL/FSM1/stage_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \CONTROL/FSM1/stage_mux0000<0>2  (
    .I0(\CONTROL/N273 ),
    .I1(\CONTROL/FSM1/stage [2]),
    .I2(\CONTROL/FSM1/stage [0]),
    .I3(\CONTROL/FSM1/stage [1]),
    .O(\CONTROL/FSM1/stage_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h28E2 ))
  \CONTROL/FSM4/next_state_mux0000<4>49  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [0]),
    .O(\CONTROL/FSM4/next_state_mux0000<4>49_458 )
  );
  LUT4 #(
    .INIT ( 16'h28E2 ))
  \CONTROL/FSM3/next_state_mux0000<4>50  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [0]),
    .O(\CONTROL/FSM3/next_state_mux0000<4>50_351 )
  );
  LUT4 #(
    .INIT ( 16'h28E2 ))
  \CONTROL/FSM2/next_state_mux0000<4>50  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [0]),
    .O(\CONTROL/FSM2/next_state_mux0000<4>50_257 )
  );
  LUT4 #(
    .INIT ( 16'h2038 ))
  \CONTROL/FSM1/next_state_mux0000<3>48  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/FSM1/state [2]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [1]),
    .O(\CONTROL/FSM1/next_state_mux0000<3>48_157 )
  );
  LUT4 #(
    .INIT ( 16'h069A ))
  \CONTROL/FSM1/next_state_mux0000<2>76  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [2]),
    .O(\CONTROL/FSM1/next_state_mux0000<2>76_155 )
  );
  LUT4 #(
    .INIT ( 16'h8819 ))
  \CONTROL/FSM5/next_state_mux0000<0>95  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/ack5_761 ),
    .I3(\CONTROL/FSM5/state [0]),
    .O(\CONTROL/FSM5/next_state_mux0000<0>95_545 )
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \CONTROL/FSM5/next_state_mux0000<0>165  (
    .I0(\CONTROL/N322 ),
    .I1(\CONTROL/ack5_761 ),
    .I2(\CONTROL/FSM5/flush_en ),
    .I3(\CONTROL/FSM5/next_state_mux0000<0>130_544 ),
    .O(\CONTROL/FSM5/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM2/stage_mux0000<2>1  (
    .I0(\CONTROL/FSM2/stage [0]),
    .I1(\CONTROL/N5 ),
    .I2(\CONTROL/FSM2/flush_en ),
    .I3(\CONTROL/ack2_756 ),
    .O(\CONTROL/FSM2/stage_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h28E2 ))
  \CONTROL/FSM5/next_state_mux0000<4>50  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [0]),
    .O(\CONTROL/FSM5/next_state_mux0000<4>50_556 )
  );
  LUT4 #(
    .INIT ( 16'h2038 ))
  \CONTROL/FSM2/next_state_mux0000<3>48  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/FSM2/state [2]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [1]),
    .O(\CONTROL/FSM2/next_state_mux0000<3>48_255 )
  );
  LUT4 #(
    .INIT ( 16'h3F31 ))
  \CONTROL/FSM4/next_state_mux0000<2>117  (
    .I0(\CONTROL/ack4 ),
    .I1(\CONTROL/N3 ),
    .I2(\CONTROL/FSM4/flush_en ),
    .I3(\CONTROL/FSM4/next_state_mux0000<2>79 ),
    .O(\CONTROL/FSM4/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h069A ))
  \CONTROL/FSM3/next_state_mux0000<2>76  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [2]),
    .O(\CONTROL/FSM3/next_state_mux0000<2>76_348 )
  );
  LUT4 #(
    .INIT ( 16'h069A ))
  \CONTROL/FSM2/next_state_mux0000<2>76  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [2]),
    .O(\CONTROL/FSM2/next_state_mux0000<2>76_253 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM3/stage_mux0000<2>1  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/N4 ),
    .I2(\CONTROL/FSM3/flush_en ),
    .I3(\CONTROL/ack3_757 ),
    .O(\CONTROL/FSM3/stage_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/FSM5/ALUOp_mux0000<1>222  (
    .I0(\CONTROL/FSM5/next_state [0]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .O(\CONTROL/N239 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/FSM3/MemtoReg_mux0000112  (
    .I0(\CONTROL/FSM3/next_state [0]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .O(\CONTROL/N320 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM5/flush_en1  (
    .I0(\CONTROL/FSM5/stage [1]),
    .I1(\CONTROL/FSM5/stage [2]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/FSM5/flush_en )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/FSM5/RegDst_mux000023  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/FSM5/next_state [0]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .O(\CONTROL/N319 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM4/flush_en1  (
    .I0(\CONTROL/FSM4/stage [1]),
    .I1(\CONTROL/FSM4/stage [2]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/FSM4/flush_en )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM3/flush_en1  (
    .I0(\CONTROL/FSM3/stage [1]),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/FSM3/flush_en )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM1/flush_en1  (
    .I0(\CONTROL/FSM1/stage [1]),
    .I1(\CONTROL/FSM1/stage [2]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/FSM1/flush_en )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/JmpOccur41  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [4]),
    .I2(\CONTROL/N320 ),
    .I3(\CONTROL/FSM3/next_state [1]),
    .O(\CONTROL/N147 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/SaveWB11  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [4]),
    .I2(\CONTROL/FSM4/next_state [2]),
    .I3(\CONTROL/FSM4/next_state [1]),
    .O(\CONTROL/N266 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \CONTROL/FSM3/next_state_mux0000<1>1_SW0  (
    .I0(\CONTROL/N3411 ),
    .I1(\CONTROL/FSM3/state [0]),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'h4577 ))
  \CONTROL/FSM3/next_state_mux0000<1>1  (
    .I0(\CONTROL/N4 ),
    .I1(\CONTROL/FSM3/flush_en ),
    .I2(\CONTROL/ack3_757 ),
    .I3(N120),
    .O(\CONTROL/N63 )
  );
  LUT4 #(
    .INIT ( 16'h0604 ))
  \CONTROL/FSM1/next_state_mux0000<1>75  (
    .I0(\CONTROL/FSM1/state [1]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [2]),
    .O(\CONTROL/FSM1/next_state_mux0000<1>75_153 )
  );
  LUT4 #(
    .INIT ( 16'hCFC4 ))
  \CONTROL/FSM5/next_state_mux0000<2>114  (
    .I0(\CONTROL/ack5_761 ),
    .I1(\CONTROL/N322 ),
    .I2(\CONTROL/FSM5/flush_en ),
    .I3(\CONTROL/FSM5/next_state_mux0000<2>77 ),
    .O(\CONTROL/FSM5/next_state_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/FSM5/next_state_mux0000<3>20  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [1]),
    .O(\CONTROL/FSM5/next_state_mux0000<3>20_553 )
  );
  LUT4 #(
    .INIT ( 16'hCFC4 ))
  \CONTROL/FSM5/next_state_mux0000<3>55  (
    .I0(\CONTROL/ack5_761 ),
    .I1(\CONTROL/N322 ),
    .I2(\CONTROL/FSM5/flush_en ),
    .I3(\CONTROL/FSM5/next_state_mux0000<3>30_554 ),
    .O(\CONTROL/FSM5/next_state_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM2/stage_mux0000<0>31  (
    .I0(\CONTROL/FSM2/flush_en ),
    .I1(\CONTROL/ack2_756 ),
    .I2(\CONTROL/N5 ),
    .O(\CONTROL/N270 )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \CONTROL/FSM2/stage_mux0000<1>1  (
    .I0(\CONTROL/FSM2/stage [0]),
    .I1(\CONTROL/FSM2/stage [1]),
    .I2(\CONTROL/N270 ),
    .O(\CONTROL/FSM2/stage_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM4/stage_mux0000<2>1  (
    .I0(\CONTROL/FSM4/stage [0]),
    .I1(\CONTROL/N3 ),
    .I2(\CONTROL/FSM4/flush_en ),
    .I3(\CONTROL/ack4 ),
    .O(\CONTROL/FSM4/stage_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \CONTROL/FSM2/stage_mux0000<0>2  (
    .I0(\CONTROL/N270 ),
    .I1(\CONTROL/FSM2/stage [2]),
    .I2(\CONTROL/FSM2/stage [0]),
    .I3(\CONTROL/FSM2/stage [1]),
    .O(\CONTROL/FSM2/stage_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/FSM2/ALUOp_mux0000<1>222  (
    .I0(\CONTROL/FSM2/next_state [0]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .O(\CONTROL/N240 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM2/flush_en1  (
    .I0(\CONTROL/FSM2/stage [1]),
    .I1(\CONTROL/FSM2/stage [2]),
    .I2(flush_OBUF_1994),
    .O(\CONTROL/FSM2/flush_en )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/FSM2/RegDst_mux000023  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/FSM2/next_state [0]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .O(\CONTROL/N3211 )
  );
  LUT4 #(
    .INIT ( 16'h0604 ))
  \CONTROL/FSM2/next_state_mux0000<1>75  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [2]),
    .O(\CONTROL/FSM2/next_state_mux0000<1>75_251 )
  );
  LUT4 #(
    .INIT ( 16'h0180 ))
  \CONTROL/JmpOccur50  (
    .I0(\CONTROL/FSM1/next_state [1]),
    .I1(\CONTROL/FSM1/next_state [0]),
    .I2(\CONTROL/FSM1/next_state [3]),
    .I3(\CONTROL/FSM1/next_state [4]),
    .O(\CONTROL/JmpOccur50_643 )
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \CONTROL/JmpOccur67  (
    .I0(\CONTROL/JmpOccur50_643 ),
    .I1(\CONTROL/FSM1/next_state [2]),
    .I2(\CONTROL/N147 ),
    .I3(\CONTROL/JmpOccur12 ),
    .O(\CONTROL/JmpOccur67_644 )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \CONTROL/FSM3/stage_mux0000<1>1  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [1]),
    .I2(\CONTROL/N297 ),
    .O(\CONTROL/FSM3/stage_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \CONTROL/FSM3/stage_mux0000<0>2  (
    .I0(N575),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(\CONTROL/FSM3/stage [0]),
    .I3(\CONTROL/FSM3/stage [1]),
    .O(\CONTROL/FSM3/stage_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \CONTROL/FSM4/stage_mux0000<1>1  (
    .I0(\CONTROL/FSM4/stage [0]),
    .I1(\CONTROL/FSM4/stage [1]),
    .I2(\CONTROL/N298 ),
    .O(\CONTROL/FSM4/stage_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \CONTROL/FSM4/stage_mux0000<0>2  (
    .I0(N576),
    .I1(\CONTROL/FSM4/stage [2]),
    .I2(\CONTROL/FSM4/stage [0]),
    .I3(\CONTROL/FSM4/stage [1]),
    .O(\CONTROL/FSM4/stage_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM5/stage_mux0000<2>1  (
    .I0(\CONTROL/FSM5/stage [0]),
    .I1(\CONTROL/N2 ),
    .I2(\CONTROL/FSM5/flush_en ),
    .I3(\CONTROL/ack5_761 ),
    .O(\CONTROL/FSM5/stage_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/MemtoReg31  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/ack2_756 ),
    .I2(\CONTROL/ack3_757 ),
    .O(\CONTROL/N152 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/RegDst30  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/RegDst_392 ),
    .O(\CONTROL/RegDst30_738 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM5/state_ClkEn_inv1  (
    .I0(\CONTROL/FSM4/next_en_438 ),
    .I1(\CONTROL/FSM5/bubble_en_inv_533 ),
    .O(\CONTROL/FSM5/state_ClkEn_inv )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM4/state_ClkEn_inv1  (
    .I0(\CONTROL/FSM3/next_en_335 ),
    .I1(\CONTROL/FSM4/bubble_en_inv_433 ),
    .O(\CONTROL/FSM4/state_ClkEn_inv )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM3/state_ClkEn_inv1  (
    .I0(\CONTROL/FSM2/next_en_238 ),
    .I1(\CONTROL/FSM3/bubble_en_inv_330 ),
    .O(\CONTROL/FSM3/state_ClkEn_inv )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM2/state_ClkEn_inv1  (
    .I0(\CONTROL/FSM1/next_en_140 ),
    .I1(\CONTROL/FSM2/bubble_en_inv_233 ),
    .O(\CONTROL/FSM2/state_ClkEn_inv )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \CONTROL/FSM1/state_ClkEn_inv1  (
    .I0(\CONTROL/en0_767 ),
    .I1(\CONTROL/FSM1/bubble_en_inv_134 ),
    .O(\CONTROL/FSM1/state_ClkEn_inv )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/WaitForMem2  (
    .I0(\CONTROL/stateofTHREE[2] ),
    .I1(\CONTROL/N269 ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .O(bubble_OBUF_1986)
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \CONTROL/FSM4/stage_not00011  (
    .I0(\CONTROL/N3 ),
    .I1(\CONTROL/FSM4/bubble_en_inv_433 ),
    .I2(\CONTROL/FSM4/flush_en ),
    .O(\CONTROL/FSM4/stage_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \CONTROL/FSM3/stage_not00011  (
    .I0(\CONTROL/N4 ),
    .I1(\CONTROL/FSM3/bubble_en_inv_330 ),
    .I2(\CONTROL/FSM3/flush_en ),
    .O(\CONTROL/FSM3/stage_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \CONTROL/FSM2/stage_not00011  (
    .I0(\CONTROL/N5 ),
    .I1(\CONTROL/FSM2/bubble_en_inv_233 ),
    .I2(\CONTROL/FSM2/flush_en ),
    .O(\CONTROL/FSM2/stage_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \CONTROL/FSM1/stage_not00011  (
    .I0(\CONTROL/N6 ),
    .I1(\CONTROL/FSM1/bubble_en_inv_134 ),
    .I2(\CONTROL/FSM1/flush_en ),
    .O(\CONTROL/FSM1/stage_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/PC_En_Start  (
    .I0(N126),
    .I1(\CONTROL/ack3_757 ),
    .I2(\CONTROL/ack4 ),
    .I3(N580),
    .O(PC_En_Start_OBUF_1551)
  );
  LUT4 #(
    .INIT ( 16'hFBBA ))
  \CONTROL/FSM5/bubble_en_inv  (
    .I0(N128),
    .I1(PC_En_Conflict_OBUF_1549),
    .I2(\CONTROL/FSM5/stage [1]),
    .I3(\CONTROL/FSM5/stage [0]),
    .O(\CONTROL/FSM5/bubble_en_inv_533 )
  );
  LUT4 #(
    .INIT ( 16'hFBBA ))
  \CONTROL/FSM4/bubble_en_inv  (
    .I0(N130),
    .I1(PC_En_Conflict_OBUF_1549),
    .I2(\CONTROL/FSM4/stage [1]),
    .I3(\CONTROL/FSM4/stage [0]),
    .O(\CONTROL/FSM4/bubble_en_inv_433 )
  );
  LUT4 #(
    .INIT ( 16'hFBBA ))
  \CONTROL/FSM3/bubble_en_inv  (
    .I0(N132),
    .I1(PC_En_Conflict_OBUF_1549),
    .I2(\CONTROL/FSM3/stage [1]),
    .I3(\CONTROL/FSM3/stage [0]),
    .O(\CONTROL/FSM3/bubble_en_inv_330 )
  );
  LUT4 #(
    .INIT ( 16'hFBBA ))
  \CONTROL/FSM2/bubble_en_inv  (
    .I0(N134),
    .I1(PC_En_Conflict_OBUF_1549),
    .I2(\CONTROL/FSM2/stage [1]),
    .I3(\CONTROL/FSM2/stage [0]),
    .O(\CONTROL/FSM2/bubble_en_inv_233 )
  );
  LUT4 #(
    .INIT ( 16'hFBBA ))
  \CONTROL/FSM1/bubble_en_inv  (
    .I0(N136),
    .I1(PC_En_Conflict_OBUF_1549),
    .I2(\CONTROL/FSM1/stage [1]),
    .I3(\CONTROL/FSM1/stage [0]),
    .O(\CONTROL/FSM1/bubble_en_inv_134 )
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \CONTROL/FSM5/stage_mux0000<1>1  (
    .I0(\CONTROL/FSM5/stage [0]),
    .I1(\CONTROL/FSM5/stage [1]),
    .I2(N577),
    .O(\CONTROL/FSM5/stage_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6C00 ))
  \CONTROL/FSM5/stage_mux0000<0>2  (
    .I0(\CONTROL/FSM5/stage [0]),
    .I1(\CONTROL/FSM5/stage [2]),
    .I2(\CONTROL/FSM5/stage [1]),
    .I3(\CONTROL/N299 ),
    .O(\CONTROL/FSM5/stage_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFBF3 ))
  \CONTROL/fromWB  (
    .I0(\CONTROL/FSM5/fromWB_535 ),
    .I1(\CONTROL/N1051 ),
    .I2(N138),
    .I3(\CONTROL/ack5_761 ),
    .O(fromWB_OBUF_1996)
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \CONTROL/ackstate<0>11  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/N262 ),
    .I2(\CONTROL/ack5_761 ),
    .O(\CONTROL/N26 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/ackstate<4>22  (
    .I0(\CONTROL/N26 ),
    .I1(\CONTROL/FSM1/state [4]),
    .I2(N365),
    .I3(BranchSig_OBUF_64),
    .O(ackstate_4_OBUF_1767)
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \CONTROL/RegWrite12  (
    .I0(\CONTROL/ack2_756 ),
    .I1(\CONTROL/FSM2/RegWrite_198 ),
    .I2(\CONTROL/ack3_757 ),
    .I3(\CONTROL/FSM3/RegWrite_295 ),
    .O(\CONTROL/RegWrite12_739 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/RegWrite30  (
    .I0(\CONTROL/FSM4/RegWrite_398 ),
    .I1(N578),
    .O(\CONTROL/RegWrite30_740 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \CONTROL/I10_cy<4>1101  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/fromWB_136 ),
    .O(\CONTROL/N11 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/ALUOp_or00000  (
    .I0(\CONTROL/FSM5/ALUOp [0]),
    .I1(\CONTROL/FSM5/ALUOp [1]),
    .O(\CONTROL/ALUOp_or00000_67 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \CONTROL/I10_cy<2>1111  (
    .I0(\CONTROL/FSM3/fromWB_332 ),
    .I1(N583),
    .O(\CONTROL/N51 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \CONTROL/I10_cy<2>11011  (
    .I0(\CONTROL/FSM4/fromWB_435 ),
    .I1(N585),
    .O(\CONTROL/N1051 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<9>1  (
    .I0(\ALURESULT/alu_out [9]),
    .I1(M_doutb_9_OBUF_1076),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_9_OBUF_2430)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<8>1  (
    .I0(\ALURESULT/alu_out [8]),
    .I1(M_doutb_8_OBUF_1075),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_8_OBUF_2429)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<7>1  (
    .I0(\ALURESULT/alu_out [7]),
    .I1(M_doutb_7_OBUF_1074),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_7_OBUF_2428)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<6>1  (
    .I0(\ALURESULT/alu_out [6]),
    .I1(M_doutb_6_OBUF_1073),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_6_OBUF_2427)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<5>1  (
    .I0(\ALURESULT/alu_out [5]),
    .I1(M_doutb_5_OBUF_1072),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_5_OBUF_2426)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<4>1  (
    .I0(\ALURESULT/alu_out [4]),
    .I1(M_doutb_4_OBUF_1071),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_4_OBUF_2425)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<3>1  (
    .I0(\ALURESULT/alu_out [3]),
    .I1(M_doutb_3_OBUF_1070),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_3_OBUF_2424)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<31>1  (
    .I0(\ALURESULT/alu_out [31]),
    .I1(M_doutb_31_OBUF_1069),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_31_OBUF_2423)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<30>1  (
    .I0(\ALURESULT/alu_out [30]),
    .I1(M_doutb_30_OBUF_1068),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_30_OBUF_2422)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<2>1  (
    .I0(\ALURESULT/alu_out [2]),
    .I1(M_doutb_2_OBUF_1067),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_2_OBUF_2421)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<29>1  (
    .I0(\ALURESULT/alu_out [29]),
    .I1(M_doutb_29_OBUF_1066),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_29_OBUF_2420)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<28>1  (
    .I0(\ALURESULT/alu_out [28]),
    .I1(M_doutb_28_OBUF_1065),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_28_OBUF_2419)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<27>1  (
    .I0(\ALURESULT/alu_out [27]),
    .I1(M_doutb_27_OBUF_1064),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_27_OBUF_2418)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<26>1  (
    .I0(\ALURESULT/alu_out [26]),
    .I1(M_doutb_26_OBUF_1063),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_26_OBUF_2417)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<25>1  (
    .I0(\ALURESULT/alu_out [25]),
    .I1(M_doutb_25_OBUF_1062),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_25_OBUF_2416)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<24>1  (
    .I0(\ALURESULT/alu_out [24]),
    .I1(M_doutb_24_OBUF_1061),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_24_OBUF_2415)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<23>1  (
    .I0(\ALURESULT/alu_out [23]),
    .I1(M_doutb_23_OBUF_1060),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_23_OBUF_2414)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<22>1  (
    .I0(\ALURESULT/alu_out [22]),
    .I1(M_doutb_22_OBUF_1059),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_22_OBUF_2413)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<21>1  (
    .I0(\ALURESULT/alu_out [21]),
    .I1(M_doutb_21_OBUF_1058),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_21_OBUF_2412)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<20>1  (
    .I0(\ALURESULT/alu_out [20]),
    .I1(M_doutb_20_OBUF_1057),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_20_OBUF_2411)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<1>1  (
    .I0(\ALURESULT/alu_out [1]),
    .I1(M_doutb_1_OBUF_1056),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_1_OBUF_2410)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<19>1  (
    .I0(\ALURESULT/alu_out [19]),
    .I1(M_doutb_19_OBUF_1055),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_19_OBUF_2409)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<18>1  (
    .I0(\ALURESULT/alu_out [18]),
    .I1(M_doutb_18_OBUF_1054),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_18_OBUF_2408)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<17>1  (
    .I0(\ALURESULT/alu_out [17]),
    .I1(M_doutb_17_OBUF_1053),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_17_OBUF_2407)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<16>1  (
    .I0(\ALURESULT/alu_out [16]),
    .I1(M_doutb_16_OBUF_1052),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_16_OBUF_2406)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<15>1  (
    .I0(\ALURESULT/alu_out [15]),
    .I1(M_doutb_15_OBUF_1051),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_15_OBUF_2405)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<14>1  (
    .I0(\ALURESULT/alu_out [14]),
    .I1(M_doutb_14_OBUF_1050),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_14_OBUF_2404)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<13>1  (
    .I0(\ALURESULT/alu_out [13]),
    .I1(M_doutb_13_OBUF_1049),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_13_OBUF_2403)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<12>1  (
    .I0(\ALURESULT/alu_out [12]),
    .I1(M_doutb_12_OBUF_1048),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_12_OBUF_2402)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<11>1  (
    .I0(\ALURESULT/alu_out [11]),
    .I1(M_doutb_11_OBUF_1047),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_11_OBUF_2401)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<10>1  (
    .I0(\ALURESULT/alu_out [10]),
    .I1(M_doutb_10_OBUF_1046),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_10_OBUF_2400)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \RegDatainMux/reg_datain<0>1  (
    .I0(\ALURESULT/alu_out [0]),
    .I1(M_doutb_0_OBUF_1045),
    .I2(MemtoReg_OBUF_1143),
    .O(reg_datain_0_OBUF_2399)
  );
  LUT4 #(
    .INIT ( 16'h73F3 ))
  \CONTROL/I10_cy<4>114  (
    .I0(\CONTROL/FSM5/fromWB_535 ),
    .I1(\CONTROL/N11 ),
    .I2(N140),
    .I3(\CONTROL/ack51 ),
    .O(\CONTROL/N01 )
  );
  LUT4 #(
    .INIT ( 16'h475D ))
  \CONTROL/ack5_SW0  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [1]),
    .O(N142)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/ack2  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N144),
    .I2(N602),
    .O(\CONTROL/ack2_756 )
  );
  LUT4 #(
    .INIT ( 16'h475D ))
  \CONTROL/ack3_SW0  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [1]),
    .O(N146)
  );
  LUT4 #(
    .INIT ( 16'h475D ))
  \CONTROL/ack1_SW0  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [1]),
    .O(N148)
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>94  (
    .I0(\CONTROL/FSM2/WB_value [8]),
    .I1(\CONTROL/FSM1/WB_value [8]),
    .I2(N604),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>94_639 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>84  (
    .I0(\CONTROL/FSM2/WB_value [7]),
    .I1(\CONTROL/FSM1/WB_value [7]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>84_637 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>74  (
    .I0(\CONTROL/FSM2/WB_value [6]),
    .I1(\CONTROL/FSM1/WB_value [6]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>74_635 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>64  (
    .I0(\CONTROL/FSM2/WB_value [5]),
    .I1(\CONTROL/FSM1/WB_value [5]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>64_633 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>54  (
    .I0(\CONTROL/FSM2/WB_value [4]),
    .I1(\CONTROL/FSM1/WB_value [4]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>54_631 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>434  (
    .I0(\CONTROL/FSM2/WB_value [31]),
    .I1(\CONTROL/FSM1/WB_value [31]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>434_627 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>414  (
    .I0(\CONTROL/FSM2/WB_value [30]),
    .I1(\CONTROL/FSM1/WB_value [30]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>414_625 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>44  (
    .I0(\CONTROL/FSM2/WB_value [3]),
    .I1(\CONTROL/FSM1/WB_value [3]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>44_629 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>394  (
    .I0(\CONTROL/FSM2/WB_value [29]),
    .I1(\CONTROL/FSM1/WB_value [29]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>394_623 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>374  (
    .I0(\CONTROL/FSM2/WB_value [28]),
    .I1(\CONTROL/FSM1/WB_value [28]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>374_621 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>354  (
    .I0(\CONTROL/FSM2/WB_value [27]),
    .I1(\CONTROL/FSM1/WB_value [27]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>354_619 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>334  (
    .I0(\CONTROL/FSM2/WB_value [26]),
    .I1(\CONTROL/FSM1/WB_value [26]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>334_615 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>314  (
    .I0(\CONTROL/FSM2/WB_value [25]),
    .I1(\CONTROL/FSM1/WB_value [25]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>314_613 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>34  (
    .I0(\CONTROL/FSM2/WB_value [2]),
    .I1(\CONTROL/FSM1/WB_value [2]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>34_617 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>294  (
    .I0(\CONTROL/FSM2/WB_value [24]),
    .I1(\CONTROL/FSM1/WB_value [24]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>294_611 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>274  (
    .I0(\CONTROL/FSM2/WB_value [23]),
    .I1(\CONTROL/FSM1/WB_value [23]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>274_609 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>254  (
    .I0(\CONTROL/FSM2/WB_value [22]),
    .I1(\CONTROL/FSM1/WB_value [22]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>254_607 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>234  (
    .I0(\CONTROL/FSM2/WB_value [21]),
    .I1(\CONTROL/FSM1/WB_value [21]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>234_603 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>214  (
    .I0(\CONTROL/FSM2/WB_value [20]),
    .I1(\CONTROL/FSM1/WB_value [20]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>214_601 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>204  (
    .I0(\CONTROL/FSM2/WB_value [19]),
    .I1(\CONTROL/FSM1/WB_value [19]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>204_599 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>24  (
    .I0(\CONTROL/FSM2/WB_value [1]),
    .I1(\CONTROL/FSM1/WB_value [1]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>24_605 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>194  (
    .I0(\CONTROL/FSM2/WB_value [18]),
    .I1(\CONTROL/FSM1/WB_value [18]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>194_597 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>184  (
    .I0(\CONTROL/FSM2/WB_value [17]),
    .I1(\CONTROL/FSM1/WB_value [17]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>184_595 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>174  (
    .I0(\CONTROL/FSM2/WB_value [16]),
    .I1(\CONTROL/FSM1/WB_value [16]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>174_593 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>164  (
    .I0(\CONTROL/FSM2/WB_value [15]),
    .I1(\CONTROL/FSM1/WB_value [15]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>164_591 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>154  (
    .I0(\CONTROL/FSM2/WB_value [14]),
    .I1(\CONTROL/FSM1/WB_value [14]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>154_589 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>144  (
    .I0(\CONTROL/FSM2/WB_value [13]),
    .I1(\CONTROL/FSM1/WB_value [13]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>144_586 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>134  (
    .I0(\CONTROL/FSM2/WB_value [12]),
    .I1(\CONTROL/FSM1/WB_value [12]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>134_583 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>124  (
    .I0(\CONTROL/FSM2/WB_value [11]),
    .I1(\CONTROL/FSM1/WB_value [11]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>124_581 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>1141  (
    .I0(\CONTROL/FSM2/WB_value [10]),
    .I1(\CONTROL/FSM1/WB_value [10]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>114_579 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>104  (
    .I0(\CONTROL/FSM2/WB_value [9]),
    .I1(\CONTROL/FSM1/WB_value [9]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>104_577 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/I10_cy<4>14  (
    .I0(\CONTROL/FSM2/WB_value [0]),
    .I1(\CONTROL/FSM1/WB_value [0]),
    .I2(\CONTROL/N112 ),
    .I3(\CONTROL/N01 ),
    .O(\CONTROL/I10_cy<4>14_585 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/DMemVisit0  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(N581),
    .O(\CONTROL/DMemVisit0_83 )
  );
  LUT4 #(
    .INIT ( 16'h1200 ))
  \CONTROL/DMemVisit27  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/DMemVisit14_85 ),
    .O(\CONTROL/DMemVisit27_87 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/DMemVisit197  (
    .I0(\CONTROL/DMemVisit102_84 ),
    .I1(\CONTROL/DMemVisit179_86 ),
    .I2(\CONTROL/DMemVisit27_87 ),
    .I3(\CONTROL/DMemVisit0_83 ),
    .O(DMemVisit_OBUF_805)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/PC_En_Conflict1  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(N150),
    .O(\CONTROL/PC_En_Conflict1_716 )
  );
  LUT4 #(
    .INIT ( 16'hB111 ))
  \CONTROL/PC_En_Conflict13  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/N116 ),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(N590),
    .O(\CONTROL/PC_En_Conflict13_718 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/PC_En_Conflict23  (
    .I0(\CONTROL/PC_En_Conflict1_716 ),
    .I1(\CONTROL/PC_En_Conflict2_719 ),
    .I2(\CONTROL/PC_En_Conflict11_717 ),
    .I3(\CONTROL/PC_En_Conflict13_718 ),
    .O(PC_En_Conflict_OBUF_1549)
  );
  LUT4 #(
    .INIT ( 16'hCA0A ))
  \PC_Generator/Mmux_next_PC12  (
    .I0(\PC_Generator/next_PC_addsub0000 [0]),
    .I1(PC_Src_0_OBUF_1649),
    .I2(PC_Src_1_OBUF_1650),
    .I3(alu_result_0_OBUF_1950),
    .O(next_PC_0_OBUF_2186)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/PC_En_Conflict2  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(N152),
    .O(\CONTROL/PC_En_Conflict2_719 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<31>1  (
    .I0(\ALURESULT/alu_out [31]),
    .I1(M_doutb_31_OBUF_1069),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_31_OBUF_926)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb341  (
    .I0(\reg_out/r2_dout [31]),
    .I1(ForwardB_31_OBUF_926),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_31_OBUF_1880)
  );
  LUT4 #(
    .INIT ( 16'hFBD9 ))
  \CONTROL/ALU_SrcB<0>2_SW0  (
    .I0(\CONTROL/FSM1/state [1]),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/FSM1/state [2]),
    .I3(\CONTROL/FSM1/state [0]),
    .O(N154)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \CONTROL/ALU_SrcB<0>2  (
    .I0(\CONTROL/FSM1/state [4]),
    .I1(N155),
    .I2(N154),
    .O(\CONTROL/N107 )
  );
  LUT4 #(
    .INIT ( 16'hCA0A ))
  \PC_Generator/Mmux_next_PC221  (
    .I0(\PC_Generator/next_PC_addsub0000 [1]),
    .I1(PC_Src_0_OBUF_1649),
    .I2(PC_Src_1_OBUF_1650),
    .I3(alu_result_1_OBUF_1961),
    .O(next_PC_1_OBUF_2197)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC441  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [2]),
    .I3(alu_result_2_OBUF_1972),
    .O(next_PC_2_OBUF_2208)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC501  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [3]),
    .I3(alu_result_3_OBUF_1975),
    .O(next_PC_3_OBUF_2211)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<31>1  (
    .I0(\ALURESULT/alu_out [31]),
    .I1(M_doutb_31_OBUF_1069),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_31_OBUF_862)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<31>1  (
    .I0(\reg_out/r2_dout [31]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_31_OBUF_862),
    .O(alu_a_31_OBUF_1824)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/SelectA5_cmp_eq0000221  (
    .I0(\CONTROL/FSM3/state [1]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/N3411 )
  );
  LUT4 #(
    .INIT ( 16'hFBD9 ))
  \CONTROL/ALUOp_or00002_SW0  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM2/state [3]),
    .I2(\CONTROL/FSM2/state [2]),
    .I3(\CONTROL/FSM2/state [0]),
    .O(N161)
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \CONTROL/ALUOp_or00002  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(N162),
    .I2(N161),
    .O(\CONTROL/N54 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/ALUOp_or00005_SW0  (
    .I0(N591),
    .I1(\CONTROL/FSM5/state [0]),
    .O(\CONTROL/PC_En_Conflictstate<0>4 )
  );
  LUT4 #(
    .INIT ( 16'h7277 ))
  \CONTROL/ALUOp_or00005  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(N165),
    .I2(\CONTROL/N145 ),
    .I3(\CONTROL/PC_En_Conflictstate<0>4 ),
    .O(\CONTROL/N106 )
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC521  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [4]),
    .I3(alu_result_4_OBUF_1976),
    .O(next_PC_4_OBUF_2212)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC541  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [5]),
    .I3(alu_result_5_OBUF_1977),
    .O(next_PC_5_OBUF_2213)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/PC_En_Conflict3  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(N588),
    .O(\CONTROL/PC_En_Conflict3_720 )
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC561  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [6]),
    .I3(alu_result_6_OBUF_1978),
    .O(next_PC_6_OBUF_2214)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<30>1  (
    .I0(\ALURESULT/alu_out [30]),
    .I1(M_doutb_30_OBUF_1068),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_30_OBUF_925)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb321  (
    .I0(\reg_out/r2_dout [30]),
    .I1(ForwardB_30_OBUF_925),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_30_OBUF_1879)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC581  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [7]),
    .I3(alu_result_7_OBUF_1979),
    .O(next_PC_7_OBUF_2215)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<29>1  (
    .I0(\ALURESULT/alu_out [29]),
    .I1(M_doutb_29_OBUF_1066),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_29_OBUF_923)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb301  (
    .I0(\reg_out/r2_dout [29]),
    .I1(ForwardB_29_OBUF_923),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_29_OBUF_1878)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC601  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [8]),
    .I3(alu_result_8_OBUF_1980),
    .O(next_PC_8_OBUF_2216)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC621  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [9]),
    .I3(alu_result_9_OBUF_1981),
    .O(next_PC_9_OBUF_2217)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<28>1  (
    .I0(\ALURESULT/alu_out [28]),
    .I1(M_doutb_28_OBUF_1065),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_28_OBUF_922)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb281  (
    .I0(\reg_out/r2_dout [28]),
    .I1(ForwardB_28_OBUF_922),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_28_OBUF_1877)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC31  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [10]),
    .I3(alu_result_10_OBUF_1951),
    .O(next_PC_10_OBUF_2187)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<27>1  (
    .I0(\ALURESULT/alu_out [27]),
    .I1(M_doutb_27_OBUF_1064),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_27_OBUF_921)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb261  (
    .I0(\reg_out/r2_dout [27]),
    .I1(ForwardB_27_OBUF_921),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_27_OBUF_1876)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC51  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [11]),
    .I3(alu_result_11_OBUF_1952),
    .O(next_PC_11_OBUF_2188)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<26>1  (
    .I0(\ALURESULT/alu_out [26]),
    .I1(M_doutb_26_OBUF_1063),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_26_OBUF_920)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb241  (
    .I0(\reg_out/r2_dout [26]),
    .I1(ForwardB_26_OBUF_920),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_26_OBUF_1875)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/stateofFOUR_cmp_eq00031  (
    .I0(\CONTROL/FSM4/stage [1]),
    .I1(\CONTROL/FSM4/stage [0]),
    .I2(\CONTROL/FSM4/stage [2]),
    .O(\CONTROL/stateofFOUR_cmp_eq0003 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/SelectA5_cmp_eq000033  (
    .I0(\CONTROL/FSM5/stage [2]),
    .I1(\CONTROL/FSM5/stage [0]),
    .I2(\CONTROL/FSM5/state [4]),
    .I3(\CONTROL/FSM5/stage [1]),
    .O(\CONTROL/SelectA5_cmp_eq000033_748 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/SelectA5_cmp_eq0000106  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(N589),
    .I2(\CONTROL/N3411 ),
    .O(\CONTROL/SelectA5_cmp_eq0000106_743 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \CONTROL/SelectA5_cmp_eq0000121  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(\CONTROL/FSM4/state [3]),
    .O(\CONTROL/SelectA5_cmp_eq0000121_744 )
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \CONTROL/SelectA5_cmp_eq0000156  (
    .I0(\CONTROL/SelectA5_cmp_eq0000132_745 ),
    .I1(\CONTROL/stateofFOUR_cmp_eq0001 ),
    .I2(\CONTROL/SelectA5_cmp_eq0000106_743 ),
    .O(\CONTROL/SelectA5_cmp_eq0000156_746 )
  );
  LUT4 #(
    .INIT ( 16'hFF32 ))
  \CONTROL/SelectA5_cmp_eq0000227  (
    .I0(\CONTROL/SelectA5_cmp_eq0000188_747 ),
    .I1(\CONTROL/stateofFOUR_cmp_eq0000 ),
    .I2(\CONTROL/SelectA5_cmp_eq0000156_746 ),
    .I3(\CONTROL/SelectA5_cmp_eq000089_750 ),
    .O(\CONTROL/SelectA5_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC71  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [12]),
    .I3(alu_result_12_OBUF_1953),
    .O(next_PC_12_OBUF_2189)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<25>1  (
    .I0(\ALURESULT/alu_out [25]),
    .I1(M_doutb_25_OBUF_1062),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_25_OBUF_919)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb221  (
    .I0(\reg_out/r2_dout [25]),
    .I1(ForwardB_25_OBUF_919),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_25_OBUF_1874)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC91  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [13]),
    .I3(alu_result_13_OBUF_1954),
    .O(next_PC_13_OBUF_2190)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<24>1  (
    .I0(\ALURESULT/alu_out [24]),
    .I1(M_doutb_24_OBUF_1061),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_24_OBUF_918)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb201  (
    .I0(\reg_out/r2_dout [24]),
    .I1(ForwardB_24_OBUF_918),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_24_OBUF_1873)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC111  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [14]),
    .I3(alu_result_14_OBUF_1955),
    .O(next_PC_14_OBUF_2191)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<23>1  (
    .I0(\ALURESULT/alu_out [23]),
    .I1(M_doutb_23_OBUF_1060),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_23_OBUF_917)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb181  (
    .I0(\reg_out/r2_dout [23]),
    .I1(ForwardB_23_OBUF_917),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_23_OBUF_1872)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC131  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [15]),
    .I3(alu_result_15_OBUF_1956),
    .O(next_PC_15_OBUF_2192)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<22>1  (
    .I0(\ALURESULT/alu_out [22]),
    .I1(M_doutb_22_OBUF_1059),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_22_OBUF_916)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb161  (
    .I0(\reg_out/r2_dout [22]),
    .I1(ForwardB_22_OBUF_916),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_22_OBUF_1871)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<30>1  (
    .I0(\ALURESULT/alu_out [30]),
    .I1(M_doutb_30_OBUF_1068),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_30_OBUF_861)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<30>1  (
    .I0(\reg_out/r2_dout [30]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_30_OBUF_861),
    .O(alu_a_30_OBUF_1823)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC151  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [16]),
    .I3(alu_result_16_OBUF_1957),
    .O(next_PC_16_OBUF_2193)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<21>1  (
    .I0(\ALURESULT/alu_out [21]),
    .I1(M_doutb_21_OBUF_1058),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_21_OBUF_915)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb141  (
    .I0(\reg_out/r2_dout [21]),
    .I1(ForwardB_21_OBUF_915),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_21_OBUF_1870)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<29>1  (
    .I0(\ALURESULT/alu_out [29]),
    .I1(M_doutb_29_OBUF_1066),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_29_OBUF_859)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<29>1  (
    .I0(\reg_out/r2_dout [29]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_29_OBUF_859),
    .O(alu_a_29_OBUF_1821)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC171  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [17]),
    .I3(alu_result_17_OBUF_1958),
    .O(next_PC_17_OBUF_2194)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<20>1  (
    .I0(\ALURESULT/alu_out [20]),
    .I1(M_doutb_20_OBUF_1057),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_20_OBUF_914)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb121  (
    .I0(\reg_out/r2_dout [20]),
    .I1(ForwardB_20_OBUF_914),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_20_OBUF_1869)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC191  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [18]),
    .I3(alu_result_18_OBUF_1959),
    .O(next_PC_18_OBUF_2195)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<28>1  (
    .I0(\ALURESULT/alu_out [28]),
    .I1(M_doutb_28_OBUF_1065),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_28_OBUF_858)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<28>1  (
    .I0(\reg_out/r2_dout [28]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_28_OBUF_858),
    .O(alu_a_28_OBUF_1820)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<19>1  (
    .I0(\ALURESULT/alu_out [19]),
    .I1(M_doutb_19_OBUF_1055),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_19_OBUF_912)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb81  (
    .I0(\reg_out/r2_dout [19]),
    .I1(ForwardB_19_OBUF_912),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_19_OBUF_1867)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC211  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [19]),
    .I3(alu_result_19_OBUF_1960),
    .O(next_PC_19_OBUF_2196)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<27>1  (
    .I0(\ALURESULT/alu_out [27]),
    .I1(M_doutb_27_OBUF_1064),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_27_OBUF_857)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<27>1  (
    .I0(\reg_out/r2_dout [27]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_27_OBUF_857),
    .O(alu_a_27_OBUF_1819)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<18>1  (
    .I0(\ALURESULT/alu_out [18]),
    .I1(M_doutb_18_OBUF_1054),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_18_OBUF_911)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb61  (
    .I0(\reg_out/r2_dout [18]),
    .I1(ForwardB_18_OBUF_911),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_18_OBUF_1866)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \CONTROL/PC_En_Conflict4  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(N592),
    .O(\CONTROL/PC_En_Conflict4_721 )
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC241  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [20]),
    .I3(alu_result_20_OBUF_1962),
    .O(next_PC_20_OBUF_2198)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<26>1  (
    .I0(\ALURESULT/alu_out [26]),
    .I1(M_doutb_26_OBUF_1063),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_26_OBUF_856)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<26>1  (
    .I0(\reg_out/r2_dout [26]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_26_OBUF_856),
    .O(alu_a_26_OBUF_1818)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<17>1  (
    .I0(\ALURESULT/alu_out [17]),
    .I1(M_doutb_17_OBUF_1053),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_17_OBUF_910)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb41  (
    .I0(\reg_out/r2_dout [17]),
    .I1(ForwardB_17_OBUF_910),
    .I2(ALU_SrcB_0_OBUF_57),
    .O(alu_b_17_OBUF_1865)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC261  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [21]),
    .I3(alu_result_21_OBUF_1963),
    .O(next_PC_21_OBUF_2199)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<25>1  (
    .I0(\ALURESULT/alu_out [25]),
    .I1(M_doutb_25_OBUF_1062),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_25_OBUF_855)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<25>1  (
    .I0(\reg_out/r2_dout [25]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_25_OBUF_855),
    .O(alu_a_25_OBUF_1817)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC281  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [22]),
    .I3(alu_result_22_OBUF_1964),
    .O(next_PC_22_OBUF_2200)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<24>1  (
    .I0(\ALURESULT/alu_out [24]),
    .I1(M_doutb_24_OBUF_1061),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_24_OBUF_854)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<24>1  (
    .I0(\reg_out/r2_dout [24]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_24_OBUF_854),
    .O(alu_a_24_OBUF_1816)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC301  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [23]),
    .I3(alu_result_23_OBUF_1965),
    .O(next_PC_23_OBUF_2201)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<23>1  (
    .I0(\ALURESULT/alu_out [23]),
    .I1(M_doutb_23_OBUF_1060),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_23_OBUF_853)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<23>1  (
    .I0(\reg_out/r2_dout [23]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_23_OBUF_853),
    .O(alu_a_23_OBUF_1815)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC321  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [24]),
    .I3(alu_result_24_OBUF_1966),
    .O(next_PC_24_OBUF_2202)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<22>1  (
    .I0(\ALURESULT/alu_out [22]),
    .I1(M_doutb_22_OBUF_1059),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_22_OBUF_852)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<22>1  (
    .I0(\reg_out/r2_dout [22]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_22_OBUF_852),
    .O(alu_a_22_OBUF_1814)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<16>1  (
    .I0(\ALURESULT/alu_out [16]),
    .I1(M_doutb_16_OBUF_1052),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_16_OBUF_909)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC341  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [25]),
    .I3(alu_result_25_OBUF_1967),
    .O(next_PC_25_OBUF_2203)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<15>1  (
    .I0(\ALURESULT/alu_out [15]),
    .I1(M_doutb_15_OBUF_1051),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_15_OBUF_908)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<21>1  (
    .I0(\ALURESULT/alu_out [21]),
    .I1(M_doutb_21_OBUF_1058),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_21_OBUF_851)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<21>1  (
    .I0(\reg_out/r2_dout [21]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_21_OBUF_851),
    .O(alu_a_21_OBUF_1813)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC361  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [26]),
    .I3(alu_result_26_OBUF_1968),
    .O(next_PC_26_OBUF_2204)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<14>1  (
    .I0(\ALURESULT/alu_out [14]),
    .I1(M_doutb_14_OBUF_1050),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_14_OBUF_907)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<20>1  (
    .I0(\ALURESULT/alu_out [20]),
    .I1(M_doutb_20_OBUF_1057),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_20_OBUF_850)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<20>1  (
    .I0(\reg_out/r2_dout [20]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_20_OBUF_850),
    .O(alu_a_20_OBUF_1812)
  );
  LUT4 #(
    .INIT ( 16'hB830 ))
  \PC_Generator/Mmux_next_PC381  (
    .I0(PC_Src_0_OBUF_1649),
    .I1(PC_Src_1_OBUF_1650),
    .I2(\PC_Generator/next_PC_addsub0000 [27]),
    .I3(alu_result_27_OBUF_1969),
    .O(next_PC_27_OBUF_2205)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<13>1  (
    .I0(\ALURESULT/alu_out [13]),
    .I1(M_doutb_13_OBUF_1049),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_13_OBUF_906)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<19>1  (
    .I0(\ALURESULT/alu_out [19]),
    .I1(M_doutb_19_OBUF_1055),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_19_OBUF_848)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<19>1  (
    .I0(\reg_out/r2_dout [19]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_19_OBUF_848),
    .O(alu_a_19_OBUF_1810)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<12>1  (
    .I0(\ALURESULT/alu_out [12]),
    .I1(M_doutb_12_OBUF_1048),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_12_OBUF_905)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<18>1  (
    .I0(\ALURESULT/alu_out [18]),
    .I1(M_doutb_18_OBUF_1054),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_18_OBUF_847)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<18>1  (
    .I0(\reg_out/r2_dout [18]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_18_OBUF_847),
    .O(alu_a_18_OBUF_1809)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<11>1  (
    .I0(\ALURESULT/alu_out [11]),
    .I1(M_doutb_11_OBUF_1047),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_11_OBUF_904)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<17>1  (
    .I0(\ALURESULT/alu_out [17]),
    .I1(M_doutb_17_OBUF_1053),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_17_OBUF_846)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<17>1  (
    .I0(\reg_out/r2_dout [17]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_17_OBUF_846),
    .O(alu_a_17_OBUF_1808)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<10>1  (
    .I0(\ALURESULT/alu_out [10]),
    .I1(M_doutb_10_OBUF_1046),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_10_OBUF_903)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<16>1  (
    .I0(\ALURESULT/alu_out [16]),
    .I1(M_doutb_16_OBUF_1052),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_16_OBUF_845)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<16>1  (
    .I0(\reg_out/r2_dout [16]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_16_OBUF_845),
    .O(alu_a_16_OBUF_1807)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<9>1  (
    .I0(\ALURESULT/alu_out [9]),
    .I1(M_doutb_9_OBUF_1076),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_9_OBUF_933)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<15>1  (
    .I0(\ALURESULT/alu_out [15]),
    .I1(M_doutb_15_OBUF_1051),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_15_OBUF_844)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<15>1  (
    .I0(\reg_out/r2_dout [15]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_15_OBUF_844),
    .O(alu_a_15_OBUF_1806)
  );
  LUT4 #(
    .INIT ( 16'h2223 ))
  \CONTROL/ALU_SrcA30  (
    .I0(\CONTROL/stateofALU [2]),
    .I1(\CONTROL/stateofALU [1]),
    .I2(\CONTROL/stateofALU [4]),
    .I3(\CONTROL/stateofALU [3]),
    .O(\CONTROL/ALU_SrcA30_75 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofTHREE<2>15  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/N155 ),
    .I3(N603),
    .O(\CONTROL/stateofTHREE<2>15_795 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \CONTROL/stateofALU<3>23  (
    .I0(\CONTROL/FSM2/state [3]),
    .I1(\CONTROL/stateofALU<3>7_780 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(\CONTROL/stateofALU_cmp_eq0000 ),
    .O(\CONTROL/stateofALU<3>23_779 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \CONTROL/stateofALU<0>23  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/stateofALU<0>7_771 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(\CONTROL/stateofALU_cmp_eq0000 ),
    .O(\CONTROL/stateofALU<0>23_770 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<8>1  (
    .I0(\ALURESULT/alu_out [8]),
    .I1(M_doutb_8_OBUF_1075),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_8_OBUF_932)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<14>1  (
    .I0(\ALURESULT/alu_out [14]),
    .I1(M_doutb_14_OBUF_1050),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_14_OBUF_843)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<14>1  (
    .I0(\reg_out/r2_dout [14]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_14_OBUF_843),
    .O(alu_a_14_OBUF_1805)
  );
  LUT4 #(
    .INIT ( 16'hFFEC ))
  \CONTROL/ALU_SrcB<0>39  (
    .I0(\CONTROL/SelectA5_cmp_eq0000 ),
    .I1(\CONTROL/ALU_SrcB<0>17_78 ),
    .I2(\CONTROL/N302 ),
    .I3(SelectB_OBUF_1691),
    .O(ALU_SrcB_0_OBUF_57)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<7>1  (
    .I0(\ALURESULT/alu_out [7]),
    .I1(M_doutb_7_OBUF_1074),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_7_OBUF_931)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<13>1  (
    .I0(\ALURESULT/alu_out [13]),
    .I1(M_doutb_13_OBUF_1049),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_13_OBUF_842)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<13>1  (
    .I0(\reg_out/r2_dout [13]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_13_OBUF_842),
    .O(alu_a_13_OBUF_1804)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<6>1  (
    .I0(\ALURESULT/alu_out [6]),
    .I1(M_doutb_6_OBUF_1073),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_6_OBUF_930)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<12>1  (
    .I0(\ALURESULT/alu_out [12]),
    .I1(M_doutb_12_OBUF_1048),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_12_OBUF_841)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<12>1  (
    .I0(\reg_out/r2_dout [12]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_12_OBUF_841),
    .O(alu_a_12_OBUF_1803)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<5>1  (
    .I0(\ALURESULT/alu_out [5]),
    .I1(M_doutb_5_OBUF_1072),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_5_OBUF_929)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<11>1  (
    .I0(\ALURESULT/alu_out [11]),
    .I1(M_doutb_11_OBUF_1047),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_11_OBUF_840)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<11>1  (
    .I0(\reg_out/r2_dout [11]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_11_OBUF_840),
    .O(alu_a_11_OBUF_1802)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<1>1  (
    .I0(\ALURESULT/alu_out [1]),
    .I1(M_doutb_1_OBUF_1056),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_1_OBUF_913)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \ALU_OPB_MUX/Mmux_alu_opb101  (
    .I0(ALU_SrcB_0_OBUF_57),
    .I1(\reg_out/r2_dout [1]),
    .I2(ForwardB_1_OBUF_913),
    .O(alu_b_1_OBUF_1868)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<4>1  (
    .I0(\ALURESULT/alu_out [4]),
    .I1(M_doutb_4_OBUF_1071),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_4_OBUF_928)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<10>1  (
    .I0(\ALURESULT/alu_out [10]),
    .I1(M_doutb_10_OBUF_1046),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_10_OBUF_839)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<10>1  (
    .I0(\reg_out/r2_dout [10]),
    .I1(ALU_SrcA_OBUF_54),
    .I2(ForwardA_10_OBUF_839),
    .O(alu_a_10_OBUF_1801)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<0>1  (
    .I0(\ALURESULT/alu_out [0]),
    .I1(M_doutb_0_OBUF_1045),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_0_OBUF_902)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \ALU_OPB_MUX/Mmux_alu_opb21  (
    .I0(\reg_out/r2_dout [0]),
    .I1(ForwardB_0_OBUF_902),
    .I2(N607),
    .O(alu_b_0_OBUF_1864)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<3>1  (
    .I0(\ALURESULT/alu_out [3]),
    .I1(M_doutb_3_OBUF_1070),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_3_OBUF_927)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<9>1  (
    .I0(\ALURESULT/alu_out [9]),
    .I1(M_doutb_9_OBUF_1076),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_9_OBUF_869)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<9>1  (
    .I0(\reg_out/r2_dout [9]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_9_OBUF_869),
    .O(alu_a_9_OBUF_1831)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardBMux/Forward<2>1  (
    .I0(\ALURESULT/alu_out [2]),
    .I1(M_doutb_2_OBUF_1067),
    .I2(SelectB_OBUF_1691),
    .O(ForwardB_2_OBUF_924)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<8>1  (
    .I0(\ALURESULT/alu_out [8]),
    .I1(M_doutb_8_OBUF_1075),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_8_OBUF_868)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<8>1  (
    .I0(\reg_out/r2_dout [8]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_8_OBUF_868),
    .O(alu_a_8_OBUF_1830)
  );
  LUT3 #(
    .INIT ( 8'hE7 ))
  \CONTROL/ALU_SrcB<0>3_SW0  (
    .I0(N599),
    .I1(\CONTROL/stateofALU [1]),
    .I2(\CONTROL/stateofALU [4]),
    .O(N176)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/stateofTHREE_cmp_eq00031  (
    .I0(\CONTROL/FSM4/stage [0]),
    .I1(\CONTROL/FSM4/stage [1]),
    .I2(\CONTROL/FSM4/stage [2]),
    .O(\CONTROL/stateofTHREE_cmp_eq0003 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/stateofTHREE_cmp_eq00021  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [1]),
    .I2(\CONTROL/FSM3/stage [2]),
    .O(\CONTROL/stateofTHREE_cmp_eq0002 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \CONTROL/stateofALU_cmp_eq00031  (
    .I0(\CONTROL/FSM4/stage [0]),
    .I1(\CONTROL/FSM4/stage [2]),
    .I2(\CONTROL/FSM4/stage [1]),
    .O(\CONTROL/stateofALU_cmp_eq0003 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \CONTROL/rsofALU<0>31  (
    .I0(\CONTROL/stateofALU_cmp_eq0003 ),
    .I1(\CONTROL/stateofALU_cmp_eq0002 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(N598),
    .O(\CONTROL/N134 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \CONTROL/WaitForMem121  (
    .I0(\CONTROL/stateofTHREE_cmp_eq0003 ),
    .I1(\CONTROL/stateofTHREE_cmp_eq0001 ),
    .I2(\CONTROL/stateofTHREE_cmp_eq0002 ),
    .I3(N595),
    .O(\CONTROL/N135 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/WaitForMem11  (
    .I0(\CONTROL/FSM5/stage [1]),
    .I1(\CONTROL/FSM5/stage [2]),
    .I2(\CONTROL/FSM5/stage [0]),
    .I3(N178),
    .O(\CONTROL/N109 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofTHREE<3>15  (
    .I0(\CONTROL/FSM2/state [3]),
    .I1(\CONTROL/FSM3/state [3]),
    .I2(\CONTROL/N155 ),
    .I3(\CONTROL/N307 ),
    .O(\CONTROL/stateofTHREE<3>15_796 )
  );
  LUT4 #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/WaitForMem115  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/N155 ),
    .I3(\CONTROL/N307 ),
    .O(\CONTROL/WaitForMem115_753 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \CONTROL/stateofALU<1>23  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/stateofALU<1>7_774 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(\CONTROL/stateofALU_cmp_eq0000 ),
    .O(\CONTROL/stateofALU<1>23_773 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<7>1  (
    .I0(\ALURESULT/alu_out [7]),
    .I1(M_doutb_7_OBUF_1074),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_7_OBUF_867)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<7>1  (
    .I0(\reg_out/r2_dout [7]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_7_OBUF_867),
    .O(alu_a_7_OBUF_1829)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<6>1  (
    .I0(\ALURESULT/alu_out [6]),
    .I1(M_doutb_6_OBUF_1073),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_6_OBUF_866)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<6>1  (
    .I0(\reg_out/r2_dout [6]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_6_OBUF_866),
    .O(alu_a_6_OBUF_1828)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<5>1  (
    .I0(\ALURESULT/alu_out [5]),
    .I1(M_doutb_5_OBUF_1072),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_5_OBUF_865)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<5>1  (
    .I0(\reg_out/r2_dout [5]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_5_OBUF_865),
    .O(alu_a_5_OBUF_1827)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<4>1  (
    .I0(\ALURESULT/alu_out [4]),
    .I1(M_doutb_4_OBUF_1071),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_4_OBUF_864)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<4>1  (
    .I0(\reg_out/r2_dout [4]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_4_OBUF_864),
    .O(alu_a_4_OBUF_1826)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<3>1  (
    .I0(\ALURESULT/alu_out [3]),
    .I1(M_doutb_3_OBUF_1070),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_3_OBUF_863)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<3>1  (
    .I0(\reg_out/r2_dout [3]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_3_OBUF_863),
    .O(alu_a_3_OBUF_1825)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<2>1  (
    .I0(\ALURESULT/alu_out [2]),
    .I1(M_doutb_2_OBUF_1067),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_2_OBUF_860)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<2>1  (
    .I0(\reg_out/r2_dout [2]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_2_OBUF_860),
    .O(alu_a_2_OBUF_1822)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<1>1  (
    .I0(\ALURESULT/alu_out [1]),
    .I1(M_doutb_1_OBUF_1056),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_1_OBUF_849)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<1>1  (
    .I0(\reg_out/r2_dout [1]),
    .I1(\CONTROL/ALU_SrcA69_76 ),
    .I2(ForwardA_1_OBUF_849),
    .O(alu_a_1_OBUF_1811)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \CONTROL/stateofALU_cmp_eq00021  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(\CONTROL/FSM3/stage [1]),
    .O(\CONTROL/stateofALU_cmp_eq0002 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \CONTROL/stateofALU_cmp_eq00011  (
    .I0(\CONTROL/FSM2/stage [0]),
    .I1(\CONTROL/FSM2/stage [2]),
    .I2(\CONTROL/FSM2/stage [1]),
    .O(\CONTROL/stateofALU_cmp_eq0001 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \ForwardAMux/Forward<0>1  (
    .I0(\ALURESULT/alu_out [0]),
    .I1(M_doutb_0_OBUF_1045),
    .I2(SelectA_OBUF_1689),
    .O(ForwardA_0_OBUF_838)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \ALU_OPA_MUX/alu_opa<0>1  (
    .I0(\reg_out/r2_dout [0]),
    .I1(N606),
    .I2(ForwardA_0_OBUF_838),
    .O(alu_a_0_OBUF_1800)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/rsofALU<0>2  (
    .I0(\CONTROL/FSM5/stage [1]),
    .I1(\CONTROL/FSM5/stage [0]),
    .I2(\CONTROL/FSM5/stage [2]),
    .I3(N195),
    .O(\CONTROL/N108 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \CONTROL/stateofALU<4>23  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/stateofALU<4>7_783 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(\CONTROL/stateofALU_cmp_eq0000 ),
    .O(\CONTROL/stateofALU<4>23_782 )
  );
  LUT4 #(
    .INIT ( 16'h00AC ))
  \CONTROL/stateofALU<2>23  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/stateofALU<2>7_777 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(\CONTROL/stateofALU_cmp_eq0000 ),
    .O(\CONTROL/stateofALU<2>23_776 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE5  (
    .I0(alu_result_23_OBUF_1965),
    .I1(alu_result_15_OBUF_1956),
    .I2(alu_result_7_OBUF_1979),
    .I3(alu_result_6_OBUF_1978),
    .O(\myALU/ALU_POSITIVE5_2071 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE15  (
    .I0(alu_result_25_OBUF_1967),
    .I1(alu_result_17_OBUF_1958),
    .I2(alu_result_10_OBUF_1951),
    .I3(alu_result_9_OBUF_1981),
    .O(\myALU/ALU_POSITIVE15_2067 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE36  (
    .I0(alu_result_30_OBUF_1973),
    .I1(\myALU/ALU_POSITIVE5_2071 ),
    .I2(\myALU/ALU_POSITIVE15_2067 ),
    .I3(\myALU/ALU_POSITIVE23 ),
    .O(\myALU/ALU_POSITIVE36_2070 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE65  (
    .I0(alu_result_19_OBUF_1960),
    .I1(alu_result_12_OBUF_1953),
    .I2(alu_result_5_OBUF_1977),
    .I3(alu_result_4_OBUF_1976),
    .O(\myALU/ALU_POSITIVE65_2073 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE75  (
    .I0(alu_result_18_OBUF_1959),
    .I1(alu_result_11_OBUF_1952),
    .I2(alu_result_3_OBUF_1975),
    .I3(alu_result_2_OBUF_1972),
    .O(\myALU/ALU_POSITIVE75_2074 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE82  (
    .I0(alu_result_27_OBUF_1969),
    .I1(\myALU/ALU_POSITIVE65_2073 ),
    .I2(alu_result_26_OBUF_1968),
    .I3(\myALU/ALU_POSITIVE75_2074 ),
    .O(\myALU/ALU_POSITIVE82_2075 )
  );
  LUT4 #(
    .INIT ( 16'h3332 ))
  \myALU/ALU_POSITIVE115  (
    .I0(\myALU/ALU_POSITIVE56_2072 ),
    .I1(alu_result_31_OBUF_1974),
    .I2(\myALU/ALU_POSITIVE82_2075 ),
    .I3(\myALU/ALU_POSITIVE36_2070 ),
    .O(ALU_POSITIVE_OBUF_52)
  );
  IBUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_2528)
  );
  OBUF   ALU_ZERO_OBUF (
    .I(ALU_ZERO_OBUF_59),
    .O(ALU_ZERO)
  );
  OBUF   Branch_gz_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Branch_gz)
  );
  OBUF   Branch_ne_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Branch_ne)
  );
  OBUF   en0_OBUF (
    .I(\CONTROL/en0_1_768 ),
    .O(en0)
  );
  OBUF   PC_En_Conflict_OBUF (
    .I(PC_En_Conflict_OBUF_1549),
    .O(PC_En_Conflict)
  );
  OBUF   DMemVisit_OBUF (
    .I(DMemVisit_OBUF_805),
    .O(DMemVisit)
  );
  OBUF   JmpSig_OBUF (
    .I(\CONTROL/JmpSig_645 ),
    .O(JmpSig)
  );
  OBUF   PCWrite_OBUF (
    .I(PCWrite_OBUF_1547),
    .O(PCWrite)
  );
  OBUF   ALU_POSITIVE_OBUF (
    .I(ALU_POSITIVE_OBUF_52),
    .O(ALU_POSITIVE)
  );
  OBUF   flush_OBUF (
    .I(flush_OBUF_1994),
    .O(flush)
  );
  OBUF   BranchSig_OBUF (
    .I(BranchSig_OBUF_64),
    .O(BranchSig)
  );
  OBUF   Branch_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Branch)
  );
  OBUF   IR_Write_OBUF (
    .I(BranchSig_OBUF_64),
    .O(IR_Write)
  );
  OBUF   bubble_OBUF (
    .I(bubble_OBUF_1986),
    .O(bubble)
  );
  OBUF   RegDst_OBUF (
    .I(RegDst_OBUF_1653),
    .O(RegDst)
  );
  OBUF   RegWrite_OBUF (
    .I(\RegFile/R_0_not0001 ),
    .O(RegWrite)
  );
  OBUF   fromWB_OBUF (
    .I(fromWB_OBUF_1996),
    .O(fromWB)
  );
  OBUF   PC_En_Start_OBUF (
    .I(PC_En_Start_OBUF_1551),
    .O(PC_En_Start)
  );
  OBUF   ALU_SrcA_OBUF (
    .I(ALU_SrcA_OBUF_54),
    .O(ALU_SrcA)
  );
  OBUF   MemWrite_OBUF (
    .I(BranchSig_OBUF_64),
    .O(MemWrite)
  );
  OBUF   SelectA_OBUF (
    .I(SelectA_OBUF_1689),
    .O(SelectA)
  );
  OBUF   SelectB_OBUF (
    .I(SelectB_OBUF_1691),
    .O(SelectB)
  );
  OBUF   MemtoReg_OBUF (
    .I(MemtoReg_OBUF_1143),
    .O(MemtoReg)
  );
  OBUF   PC_en_OBUF (
    .I(PCWrite_OBUF_1547),
    .O(PC_en)
  );
  OBUF   IorD_OBUF (
    .I(DMemVisit_OBUF_805),
    .O(IorD)
  );
  OBUF   funct_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(funct[5])
  );
  OBUF   funct_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(funct[4])
  );
  OBUF   funct_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(funct[3])
  );
  OBUF   funct_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(funct[2])
  );
  OBUF   funct_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(funct[1])
  );
  OBUF   funct_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(funct[0])
  );
  OBUF   PC_Src_1_OBUF (
    .I(PC_Src_1_OBUF_1650),
    .O(PC_Src[1])
  );
  OBUF   PC_Src_0_OBUF (
    .I(PC_Src_0_OBUF_1649),
    .O(PC_Src[0])
  );
  OBUF   next_PC_31_OBUF (
    .I(next_PC_31_OBUF_2210),
    .O(next_PC[31])
  );
  OBUF   next_PC_30_OBUF (
    .I(next_PC_30_OBUF_2209),
    .O(next_PC[30])
  );
  OBUF   next_PC_29_OBUF (
    .I(next_PC_29_OBUF_2207),
    .O(next_PC[29])
  );
  OBUF   next_PC_28_OBUF (
    .I(next_PC_28_OBUF_2206),
    .O(next_PC[28])
  );
  OBUF   next_PC_27_OBUF (
    .I(next_PC_27_OBUF_2205),
    .O(next_PC[27])
  );
  OBUF   next_PC_26_OBUF (
    .I(next_PC_26_OBUF_2204),
    .O(next_PC[26])
  );
  OBUF   next_PC_25_OBUF (
    .I(next_PC_25_OBUF_2203),
    .O(next_PC[25])
  );
  OBUF   next_PC_24_OBUF (
    .I(next_PC_24_OBUF_2202),
    .O(next_PC[24])
  );
  OBUF   next_PC_23_OBUF (
    .I(next_PC_23_OBUF_2201),
    .O(next_PC[23])
  );
  OBUF   next_PC_22_OBUF (
    .I(next_PC_22_OBUF_2200),
    .O(next_PC[22])
  );
  OBUF   next_PC_21_OBUF (
    .I(next_PC_21_OBUF_2199),
    .O(next_PC[21])
  );
  OBUF   next_PC_20_OBUF (
    .I(next_PC_20_OBUF_2198),
    .O(next_PC[20])
  );
  OBUF   next_PC_19_OBUF (
    .I(next_PC_19_OBUF_2196),
    .O(next_PC[19])
  );
  OBUF   next_PC_18_OBUF (
    .I(next_PC_18_OBUF_2195),
    .O(next_PC[18])
  );
  OBUF   next_PC_17_OBUF (
    .I(next_PC_17_OBUF_2194),
    .O(next_PC[17])
  );
  OBUF   next_PC_16_OBUF (
    .I(next_PC_16_OBUF_2193),
    .O(next_PC[16])
  );
  OBUF   next_PC_15_OBUF (
    .I(next_PC_15_OBUF_2192),
    .O(next_PC[15])
  );
  OBUF   next_PC_14_OBUF (
    .I(next_PC_14_OBUF_2191),
    .O(next_PC[14])
  );
  OBUF   next_PC_13_OBUF (
    .I(next_PC_13_OBUF_2190),
    .O(next_PC[13])
  );
  OBUF   next_PC_12_OBUF (
    .I(next_PC_12_OBUF_2189),
    .O(next_PC[12])
  );
  OBUF   next_PC_11_OBUF (
    .I(next_PC_11_OBUF_2188),
    .O(next_PC[11])
  );
  OBUF   next_PC_10_OBUF (
    .I(next_PC_10_OBUF_2187),
    .O(next_PC[10])
  );
  OBUF   next_PC_9_OBUF (
    .I(next_PC_9_OBUF_2217),
    .O(next_PC[9])
  );
  OBUF   next_PC_8_OBUF (
    .I(next_PC_8_OBUF_2216),
    .O(next_PC[8])
  );
  OBUF   next_PC_7_OBUF (
    .I(next_PC_7_OBUF_2215),
    .O(next_PC[7])
  );
  OBUF   next_PC_6_OBUF (
    .I(next_PC_6_OBUF_2214),
    .O(next_PC[6])
  );
  OBUF   next_PC_5_OBUF (
    .I(next_PC_5_OBUF_2213),
    .O(next_PC[5])
  );
  OBUF   next_PC_4_OBUF (
    .I(next_PC_4_OBUF_2212),
    .O(next_PC[4])
  );
  OBUF   next_PC_3_OBUF (
    .I(next_PC_3_OBUF_2211),
    .O(next_PC[3])
  );
  OBUF   next_PC_2_OBUF (
    .I(next_PC_2_OBUF_2208),
    .O(next_PC[2])
  );
  OBUF   next_PC_1_OBUF (
    .I(next_PC_1_OBUF_2197),
    .O(next_PC[1])
  );
  OBUF   next_PC_0_OBUF (
    .I(next_PC_0_OBUF_2186),
    .O(next_PC[0])
  );
  OBUF   ALUOp_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(ALUOp[1])
  );
  OBUF   ALUOp_0_OBUF (
    .I(ALUOp_0_OBUF_2),
    .O(ALUOp[0])
  );
  OBUF   alu_result_31_OBUF (
    .I(alu_result_31_OBUF_1974),
    .O(alu_result[31])
  );
  OBUF   alu_result_30_OBUF (
    .I(alu_result_30_OBUF_1973),
    .O(alu_result[30])
  );
  OBUF   alu_result_29_OBUF (
    .I(alu_result_29_OBUF_1971),
    .O(alu_result[29])
  );
  OBUF   alu_result_28_OBUF (
    .I(alu_result_28_OBUF_1970),
    .O(alu_result[28])
  );
  OBUF   alu_result_27_OBUF (
    .I(alu_result_27_OBUF_1969),
    .O(alu_result[27])
  );
  OBUF   alu_result_26_OBUF (
    .I(alu_result_26_OBUF_1968),
    .O(alu_result[26])
  );
  OBUF   alu_result_25_OBUF (
    .I(alu_result_25_OBUF_1967),
    .O(alu_result[25])
  );
  OBUF   alu_result_24_OBUF (
    .I(alu_result_24_OBUF_1966),
    .O(alu_result[24])
  );
  OBUF   alu_result_23_OBUF (
    .I(alu_result_23_OBUF_1965),
    .O(alu_result[23])
  );
  OBUF   alu_result_22_OBUF (
    .I(alu_result_22_OBUF_1964),
    .O(alu_result[22])
  );
  OBUF   alu_result_21_OBUF (
    .I(alu_result_21_OBUF_1963),
    .O(alu_result[21])
  );
  OBUF   alu_result_20_OBUF (
    .I(alu_result_20_OBUF_1962),
    .O(alu_result[20])
  );
  OBUF   alu_result_19_OBUF (
    .I(alu_result_19_OBUF_1960),
    .O(alu_result[19])
  );
  OBUF   alu_result_18_OBUF (
    .I(alu_result_18_OBUF_1959),
    .O(alu_result[18])
  );
  OBUF   alu_result_17_OBUF (
    .I(alu_result_17_OBUF_1958),
    .O(alu_result[17])
  );
  OBUF   alu_result_16_OBUF (
    .I(alu_result_16_OBUF_1957),
    .O(alu_result[16])
  );
  OBUF   alu_result_15_OBUF (
    .I(alu_result_15_OBUF_1956),
    .O(alu_result[15])
  );
  OBUF   alu_result_14_OBUF (
    .I(alu_result_14_OBUF_1955),
    .O(alu_result[14])
  );
  OBUF   alu_result_13_OBUF (
    .I(alu_result_13_OBUF_1954),
    .O(alu_result[13])
  );
  OBUF   alu_result_12_OBUF (
    .I(alu_result_12_OBUF_1953),
    .O(alu_result[12])
  );
  OBUF   alu_result_11_OBUF (
    .I(alu_result_11_OBUF_1952),
    .O(alu_result[11])
  );
  OBUF   alu_result_10_OBUF (
    .I(alu_result_10_OBUF_1951),
    .O(alu_result[10])
  );
  OBUF   alu_result_9_OBUF (
    .I(alu_result_9_OBUF_1981),
    .O(alu_result[9])
  );
  OBUF   alu_result_8_OBUF (
    .I(alu_result_8_OBUF_1980),
    .O(alu_result[8])
  );
  OBUF   alu_result_7_OBUF (
    .I(alu_result_7_OBUF_1979),
    .O(alu_result[7])
  );
  OBUF   alu_result_6_OBUF (
    .I(alu_result_6_OBUF_1978),
    .O(alu_result[6])
  );
  OBUF   alu_result_5_OBUF (
    .I(alu_result_5_OBUF_1977),
    .O(alu_result[5])
  );
  OBUF   alu_result_4_OBUF (
    .I(alu_result_4_OBUF_1976),
    .O(alu_result[4])
  );
  OBUF   alu_result_3_OBUF (
    .I(alu_result_3_OBUF_1975),
    .O(alu_result[3])
  );
  OBUF   alu_result_2_OBUF (
    .I(alu_result_2_OBUF_1972),
    .O(alu_result[2])
  );
  OBUF   alu_result_1_OBUF (
    .I(alu_result_1_OBUF_1961),
    .O(alu_result[1])
  );
  OBUF   alu_result_0_OBUF (
    .I(alu_result_0_OBUF_1950),
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
    .I(BranchSig_OBUF_64),
    .O(ackstate[6])
  );
  OBUF   ackstate_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(ackstate[5])
  );
  OBUF   ackstate_4_OBUF (
    .I(ackstate_4_OBUF_1767),
    .O(ackstate[4])
  );
  OBUF   ackstate_3_OBUF (
    .I(ackstate_3_OBUF_1766),
    .O(ackstate[3])
  );
  OBUF   ackstate_2_OBUF (
    .I(ackstate_2_OBUF_1765),
    .O(ackstate[2])
  );
  OBUF   ackstate_1_OBUF (
    .I(ackstate_1_OBUF_1764),
    .O(ackstate[1])
  );
  OBUF   ackstate_0_OBUF (
    .I(ackstate_0_OBUF_1763),
    .O(ackstate[0])
  );
  OBUF   sext_Immed_31_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[31])
  );
  OBUF   sext_Immed_30_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[30])
  );
  OBUF   sext_Immed_29_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[29])
  );
  OBUF   sext_Immed_28_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[28])
  );
  OBUF   sext_Immed_27_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[27])
  );
  OBUF   sext_Immed_26_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[26])
  );
  OBUF   sext_Immed_25_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[25])
  );
  OBUF   sext_Immed_24_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[24])
  );
  OBUF   sext_Immed_23_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[23])
  );
  OBUF   sext_Immed_22_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[22])
  );
  OBUF   sext_Immed_21_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[21])
  );
  OBUF   sext_Immed_20_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[20])
  );
  OBUF   sext_Immed_19_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[19])
  );
  OBUF   sext_Immed_18_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[18])
  );
  OBUF   sext_Immed_17_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[17])
  );
  OBUF   sext_Immed_16_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[16])
  );
  OBUF   sext_Immed_15_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[15])
  );
  OBUF   sext_Immed_14_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[14])
  );
  OBUF   sext_Immed_13_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[13])
  );
  OBUF   sext_Immed_12_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[12])
  );
  OBUF   sext_Immed_11_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[11])
  );
  OBUF   sext_Immed_10_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[10])
  );
  OBUF   sext_Immed_9_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[9])
  );
  OBUF   sext_Immed_8_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[8])
  );
  OBUF   sext_Immed_7_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[7])
  );
  OBUF   sext_Immed_6_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[6])
  );
  OBUF   sext_Immed_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[5])
  );
  OBUF   sext_Immed_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[4])
  );
  OBUF   sext_Immed_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[3])
  );
  OBUF   sext_Immed_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[2])
  );
  OBUF   sext_Immed_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[1])
  );
  OBUF   sext_Immed_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(sext_Immed[0])
  );
  OBUF   Immed_15_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[15])
  );
  OBUF   Immed_14_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[14])
  );
  OBUF   Immed_13_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[13])
  );
  OBUF   Immed_12_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[12])
  );
  OBUF   Immed_11_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[11])
  );
  OBUF   Immed_10_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[10])
  );
  OBUF   Immed_9_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[9])
  );
  OBUF   Immed_8_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[8])
  );
  OBUF   Immed_7_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[7])
  );
  OBUF   Immed_6_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[6])
  );
  OBUF   Immed_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[5])
  );
  OBUF   Immed_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[4])
  );
  OBUF   Immed_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[3])
  );
  OBUF   Immed_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[2])
  );
  OBUF   Immed_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[1])
  );
  OBUF   Immed_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Immed[0])
  );
  OBUF   alu_op_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(alu_op[3])
  );
  OBUF   alu_op_2_OBUF (
    .I(ALUOp_0_OBUF_2),
    .O(alu_op[2])
  );
  OBUF   alu_op_1_OBUF (
    .I(alu_op_1_OBUF_1885),
    .O(alu_op[1])
  );
  OBUF   alu_op_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(alu_op[0])
  );
  OBUF   r3_addr_mux_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r3_addr_mux[4])
  );
  OBUF   r3_addr_mux_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r3_addr_mux[3])
  );
  OBUF   r3_addr_mux_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r3_addr_mux[2])
  );
  OBUF   r3_addr_mux_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r3_addr_mux[1])
  );
  OBUF   r3_addr_mux_0_OBUF (
    .I(BranchSig_OBUF_64),
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
    .I(\PCReg/PC [1]),
    .O(PC[1])
  );
  OBUF   PC_0_OBUF (
    .I(\PCReg/PC [0]),
    .O(PC[0])
  );
  OBUF   instruction_31_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[31])
  );
  OBUF   instruction_30_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[30])
  );
  OBUF   instruction_29_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[29])
  );
  OBUF   instruction_28_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[28])
  );
  OBUF   instruction_27_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[27])
  );
  OBUF   instruction_26_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[26])
  );
  OBUF   instruction_25_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[25])
  );
  OBUF   instruction_24_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[24])
  );
  OBUF   instruction_23_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[23])
  );
  OBUF   instruction_22_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[22])
  );
  OBUF   instruction_21_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[21])
  );
  OBUF   instruction_20_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[20])
  );
  OBUF   instruction_19_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[19])
  );
  OBUF   instruction_18_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[18])
  );
  OBUF   instruction_17_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[17])
  );
  OBUF   instruction_16_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[16])
  );
  OBUF   instruction_15_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[15])
  );
  OBUF   instruction_14_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[14])
  );
  OBUF   instruction_13_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[13])
  );
  OBUF   instruction_12_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[12])
  );
  OBUF   instruction_11_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[11])
  );
  OBUF   instruction_10_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[10])
  );
  OBUF   instruction_9_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[9])
  );
  OBUF   instruction_8_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[8])
  );
  OBUF   instruction_7_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[7])
  );
  OBUF   instruction_6_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[6])
  );
  OBUF   instruction_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[5])
  );
  OBUF   instruction_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[4])
  );
  OBUF   instruction_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[3])
  );
  OBUF   instruction_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[2])
  );
  OBUF   instruction_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(instruction[1])
  );
  OBUF   instruction_0_OBUF (
    .I(BranchSig_OBUF_64),
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
  OBUF   WB_value_31_OBUF (
    .I(WB_value_31_OBUF_1748),
    .O(WB_value[31])
  );
  OBUF   WB_value_30_OBUF (
    .I(WB_value_30_OBUF_1747),
    .O(WB_value[30])
  );
  OBUF   WB_value_29_OBUF (
    .I(WB_value_29_OBUF_1745),
    .O(WB_value[29])
  );
  OBUF   WB_value_28_OBUF (
    .I(WB_value_28_OBUF_1744),
    .O(WB_value[28])
  );
  OBUF   WB_value_27_OBUF (
    .I(WB_value_27_OBUF_1743),
    .O(WB_value[27])
  );
  OBUF   WB_value_26_OBUF (
    .I(WB_value_26_OBUF_1742),
    .O(WB_value[26])
  );
  OBUF   WB_value_25_OBUF (
    .I(WB_value_25_OBUF_1741),
    .O(WB_value[25])
  );
  OBUF   WB_value_24_OBUF (
    .I(WB_value_24_OBUF_1740),
    .O(WB_value[24])
  );
  OBUF   WB_value_23_OBUF (
    .I(WB_value_23_OBUF_1739),
    .O(WB_value[23])
  );
  OBUF   WB_value_22_OBUF (
    .I(WB_value_22_OBUF_1738),
    .O(WB_value[22])
  );
  OBUF   WB_value_21_OBUF (
    .I(WB_value_21_OBUF_1737),
    .O(WB_value[21])
  );
  OBUF   WB_value_20_OBUF (
    .I(WB_value_20_OBUF_1736),
    .O(WB_value[20])
  );
  OBUF   WB_value_19_OBUF (
    .I(WB_value_19_OBUF_1734),
    .O(WB_value[19])
  );
  OBUF   WB_value_18_OBUF (
    .I(WB_value_18_OBUF_1733),
    .O(WB_value[18])
  );
  OBUF   WB_value_17_OBUF (
    .I(WB_value_17_OBUF_1732),
    .O(WB_value[17])
  );
  OBUF   WB_value_16_OBUF (
    .I(WB_value_16_OBUF_1731),
    .O(WB_value[16])
  );
  OBUF   WB_value_15_OBUF (
    .I(WB_value_15_OBUF_1730),
    .O(WB_value[15])
  );
  OBUF   WB_value_14_OBUF (
    .I(WB_value_14_OBUF_1729),
    .O(WB_value[14])
  );
  OBUF   WB_value_13_OBUF (
    .I(WB_value_13_OBUF_1728),
    .O(WB_value[13])
  );
  OBUF   WB_value_12_OBUF (
    .I(WB_value_12_OBUF_1727),
    .O(WB_value[12])
  );
  OBUF   WB_value_11_OBUF (
    .I(WB_value_11_OBUF_1726),
    .O(WB_value[11])
  );
  OBUF   WB_value_10_OBUF (
    .I(WB_value_10_OBUF_1725),
    .O(WB_value[10])
  );
  OBUF   WB_value_9_OBUF (
    .I(WB_value_9_OBUF_1755),
    .O(WB_value[9])
  );
  OBUF   WB_value_8_OBUF (
    .I(WB_value_8_OBUF_1754),
    .O(WB_value[8])
  );
  OBUF   WB_value_7_OBUF (
    .I(WB_value_7_OBUF_1753),
    .O(WB_value[7])
  );
  OBUF   WB_value_6_OBUF (
    .I(WB_value_6_OBUF_1752),
    .O(WB_value[6])
  );
  OBUF   WB_value_5_OBUF (
    .I(WB_value_5_OBUF_1751),
    .O(WB_value[5])
  );
  OBUF   WB_value_4_OBUF (
    .I(WB_value_4_OBUF_1750),
    .O(WB_value[4])
  );
  OBUF   WB_value_3_OBUF (
    .I(WB_value_3_OBUF_1749),
    .O(WB_value[3])
  );
  OBUF   WB_value_2_OBUF (
    .I(WB_value_2_OBUF_1746),
    .O(WB_value[2])
  );
  OBUF   WB_value_1_OBUF (
    .I(WB_value_1_OBUF_1735),
    .O(WB_value[1])
  );
  OBUF   WB_value_0_OBUF (
    .I(WB_value_0_OBUF_1724),
    .O(WB_value[0])
  );
  OBUF   ForwardA_31_OBUF (
    .I(ForwardA_31_OBUF_862),
    .O(ForwardA[31])
  );
  OBUF   ForwardA_30_OBUF (
    .I(ForwardA_30_OBUF_861),
    .O(ForwardA[30])
  );
  OBUF   ForwardA_29_OBUF (
    .I(ForwardA_29_OBUF_859),
    .O(ForwardA[29])
  );
  OBUF   ForwardA_28_OBUF (
    .I(ForwardA_28_OBUF_858),
    .O(ForwardA[28])
  );
  OBUF   ForwardA_27_OBUF (
    .I(ForwardA_27_OBUF_857),
    .O(ForwardA[27])
  );
  OBUF   ForwardA_26_OBUF (
    .I(ForwardA_26_OBUF_856),
    .O(ForwardA[26])
  );
  OBUF   ForwardA_25_OBUF (
    .I(ForwardA_25_OBUF_855),
    .O(ForwardA[25])
  );
  OBUF   ForwardA_24_OBUF (
    .I(ForwardA_24_OBUF_854),
    .O(ForwardA[24])
  );
  OBUF   ForwardA_23_OBUF (
    .I(ForwardA_23_OBUF_853),
    .O(ForwardA[23])
  );
  OBUF   ForwardA_22_OBUF (
    .I(ForwardA_22_OBUF_852),
    .O(ForwardA[22])
  );
  OBUF   ForwardA_21_OBUF (
    .I(ForwardA_21_OBUF_851),
    .O(ForwardA[21])
  );
  OBUF   ForwardA_20_OBUF (
    .I(ForwardA_20_OBUF_850),
    .O(ForwardA[20])
  );
  OBUF   ForwardA_19_OBUF (
    .I(ForwardA_19_OBUF_848),
    .O(ForwardA[19])
  );
  OBUF   ForwardA_18_OBUF (
    .I(ForwardA_18_OBUF_847),
    .O(ForwardA[18])
  );
  OBUF   ForwardA_17_OBUF (
    .I(ForwardA_17_OBUF_846),
    .O(ForwardA[17])
  );
  OBUF   ForwardA_16_OBUF (
    .I(ForwardA_16_OBUF_845),
    .O(ForwardA[16])
  );
  OBUF   ForwardA_15_OBUF (
    .I(ForwardA_15_OBUF_844),
    .O(ForwardA[15])
  );
  OBUF   ForwardA_14_OBUF (
    .I(ForwardA_14_OBUF_843),
    .O(ForwardA[14])
  );
  OBUF   ForwardA_13_OBUF (
    .I(ForwardA_13_OBUF_842),
    .O(ForwardA[13])
  );
  OBUF   ForwardA_12_OBUF (
    .I(ForwardA_12_OBUF_841),
    .O(ForwardA[12])
  );
  OBUF   ForwardA_11_OBUF (
    .I(ForwardA_11_OBUF_840),
    .O(ForwardA[11])
  );
  OBUF   ForwardA_10_OBUF (
    .I(ForwardA_10_OBUF_839),
    .O(ForwardA[10])
  );
  OBUF   ForwardA_9_OBUF (
    .I(ForwardA_9_OBUF_869),
    .O(ForwardA[9])
  );
  OBUF   ForwardA_8_OBUF (
    .I(ForwardA_8_OBUF_868),
    .O(ForwardA[8])
  );
  OBUF   ForwardA_7_OBUF (
    .I(ForwardA_7_OBUF_867),
    .O(ForwardA[7])
  );
  OBUF   ForwardA_6_OBUF (
    .I(ForwardA_6_OBUF_866),
    .O(ForwardA[6])
  );
  OBUF   ForwardA_5_OBUF (
    .I(ForwardA_5_OBUF_865),
    .O(ForwardA[5])
  );
  OBUF   ForwardA_4_OBUF (
    .I(ForwardA_4_OBUF_864),
    .O(ForwardA[4])
  );
  OBUF   ForwardA_3_OBUF (
    .I(ForwardA_3_OBUF_863),
    .O(ForwardA[3])
  );
  OBUF   ForwardA_2_OBUF (
    .I(ForwardA_2_OBUF_860),
    .O(ForwardA[2])
  );
  OBUF   ForwardA_1_OBUF (
    .I(ForwardA_1_OBUF_849),
    .O(ForwardA[1])
  );
  OBUF   ForwardA_0_OBUF (
    .I(ForwardA_0_OBUF_838),
    .O(ForwardA[0])
  );
  OBUF   ForwardB_31_OBUF (
    .I(ForwardB_31_OBUF_926),
    .O(ForwardB[31])
  );
  OBUF   ForwardB_30_OBUF (
    .I(ForwardB_30_OBUF_925),
    .O(ForwardB[30])
  );
  OBUF   ForwardB_29_OBUF (
    .I(ForwardB_29_OBUF_923),
    .O(ForwardB[29])
  );
  OBUF   ForwardB_28_OBUF (
    .I(ForwardB_28_OBUF_922),
    .O(ForwardB[28])
  );
  OBUF   ForwardB_27_OBUF (
    .I(ForwardB_27_OBUF_921),
    .O(ForwardB[27])
  );
  OBUF   ForwardB_26_OBUF (
    .I(ForwardB_26_OBUF_920),
    .O(ForwardB[26])
  );
  OBUF   ForwardB_25_OBUF (
    .I(ForwardB_25_OBUF_919),
    .O(ForwardB[25])
  );
  OBUF   ForwardB_24_OBUF (
    .I(ForwardB_24_OBUF_918),
    .O(ForwardB[24])
  );
  OBUF   ForwardB_23_OBUF (
    .I(ForwardB_23_OBUF_917),
    .O(ForwardB[23])
  );
  OBUF   ForwardB_22_OBUF (
    .I(ForwardB_22_OBUF_916),
    .O(ForwardB[22])
  );
  OBUF   ForwardB_21_OBUF (
    .I(ForwardB_21_OBUF_915),
    .O(ForwardB[21])
  );
  OBUF   ForwardB_20_OBUF (
    .I(ForwardB_20_OBUF_914),
    .O(ForwardB[20])
  );
  OBUF   ForwardB_19_OBUF (
    .I(ForwardB_19_OBUF_912),
    .O(ForwardB[19])
  );
  OBUF   ForwardB_18_OBUF (
    .I(ForwardB_18_OBUF_911),
    .O(ForwardB[18])
  );
  OBUF   ForwardB_17_OBUF (
    .I(ForwardB_17_OBUF_910),
    .O(ForwardB[17])
  );
  OBUF   ForwardB_16_OBUF (
    .I(ForwardB_16_OBUF_909),
    .O(ForwardB[16])
  );
  OBUF   ForwardB_15_OBUF (
    .I(ForwardB_15_OBUF_908),
    .O(ForwardB[15])
  );
  OBUF   ForwardB_14_OBUF (
    .I(ForwardB_14_OBUF_907),
    .O(ForwardB[14])
  );
  OBUF   ForwardB_13_OBUF (
    .I(ForwardB_13_OBUF_906),
    .O(ForwardB[13])
  );
  OBUF   ForwardB_12_OBUF (
    .I(ForwardB_12_OBUF_905),
    .O(ForwardB[12])
  );
  OBUF   ForwardB_11_OBUF (
    .I(ForwardB_11_OBUF_904),
    .O(ForwardB[11])
  );
  OBUF   ForwardB_10_OBUF (
    .I(ForwardB_10_OBUF_903),
    .O(ForwardB[10])
  );
  OBUF   ForwardB_9_OBUF (
    .I(ForwardB_9_OBUF_933),
    .O(ForwardB[9])
  );
  OBUF   ForwardB_8_OBUF (
    .I(ForwardB_8_OBUF_932),
    .O(ForwardB[8])
  );
  OBUF   ForwardB_7_OBUF (
    .I(ForwardB_7_OBUF_931),
    .O(ForwardB[7])
  );
  OBUF   ForwardB_6_OBUF (
    .I(ForwardB_6_OBUF_930),
    .O(ForwardB[6])
  );
  OBUF   ForwardB_5_OBUF (
    .I(ForwardB_5_OBUF_929),
    .O(ForwardB[5])
  );
  OBUF   ForwardB_4_OBUF (
    .I(ForwardB_4_OBUF_928),
    .O(ForwardB[4])
  );
  OBUF   ForwardB_3_OBUF (
    .I(ForwardB_3_OBUF_927),
    .O(ForwardB[3])
  );
  OBUF   ForwardB_2_OBUF (
    .I(ForwardB_2_OBUF_924),
    .O(ForwardB[2])
  );
  OBUF   ForwardB_1_OBUF (
    .I(ForwardB_1_OBUF_913),
    .O(ForwardB[1])
  );
  OBUF   ForwardB_0_OBUF (
    .I(ForwardB_0_OBUF_902),
    .O(ForwardB[0])
  );
  OBUF   alu_a_31_OBUF (
    .I(alu_a_31_OBUF_1824),
    .O(alu_a[31])
  );
  OBUF   alu_a_30_OBUF (
    .I(alu_a_30_OBUF_1823),
    .O(alu_a[30])
  );
  OBUF   alu_a_29_OBUF (
    .I(alu_a_29_OBUF_1821),
    .O(alu_a[29])
  );
  OBUF   alu_a_28_OBUF (
    .I(alu_a_28_OBUF_1820),
    .O(alu_a[28])
  );
  OBUF   alu_a_27_OBUF (
    .I(alu_a_27_OBUF_1819),
    .O(alu_a[27])
  );
  OBUF   alu_a_26_OBUF (
    .I(alu_a_26_OBUF_1818),
    .O(alu_a[26])
  );
  OBUF   alu_a_25_OBUF (
    .I(alu_a_25_OBUF_1817),
    .O(alu_a[25])
  );
  OBUF   alu_a_24_OBUF (
    .I(alu_a_24_OBUF_1816),
    .O(alu_a[24])
  );
  OBUF   alu_a_23_OBUF (
    .I(alu_a_23_OBUF_1815),
    .O(alu_a[23])
  );
  OBUF   alu_a_22_OBUF (
    .I(alu_a_22_OBUF_1814),
    .O(alu_a[22])
  );
  OBUF   alu_a_21_OBUF (
    .I(alu_a_21_OBUF_1813),
    .O(alu_a[21])
  );
  OBUF   alu_a_20_OBUF (
    .I(alu_a_20_OBUF_1812),
    .O(alu_a[20])
  );
  OBUF   alu_a_19_OBUF (
    .I(alu_a_19_OBUF_1810),
    .O(alu_a[19])
  );
  OBUF   alu_a_18_OBUF (
    .I(alu_a_18_OBUF_1809),
    .O(alu_a[18])
  );
  OBUF   alu_a_17_OBUF (
    .I(alu_a_17_OBUF_1808),
    .O(alu_a[17])
  );
  OBUF   alu_a_16_OBUF (
    .I(alu_a_16_OBUF_1807),
    .O(alu_a[16])
  );
  OBUF   alu_a_15_OBUF (
    .I(alu_a_15_OBUF_1806),
    .O(alu_a[15])
  );
  OBUF   alu_a_14_OBUF (
    .I(alu_a_14_OBUF_1805),
    .O(alu_a[14])
  );
  OBUF   alu_a_13_OBUF (
    .I(alu_a_13_OBUF_1804),
    .O(alu_a[13])
  );
  OBUF   alu_a_12_OBUF (
    .I(alu_a_12_OBUF_1803),
    .O(alu_a[12])
  );
  OBUF   alu_a_11_OBUF (
    .I(alu_a_11_OBUF_1802),
    .O(alu_a[11])
  );
  OBUF   alu_a_10_OBUF (
    .I(alu_a_10_OBUF_1801),
    .O(alu_a[10])
  );
  OBUF   alu_a_9_OBUF (
    .I(alu_a_9_OBUF_1831),
    .O(alu_a[9])
  );
  OBUF   alu_a_8_OBUF (
    .I(alu_a_8_OBUF_1830),
    .O(alu_a[8])
  );
  OBUF   alu_a_7_OBUF (
    .I(alu_a_7_OBUF_1829),
    .O(alu_a[7])
  );
  OBUF   alu_a_6_OBUF (
    .I(alu_a_6_OBUF_1828),
    .O(alu_a[6])
  );
  OBUF   alu_a_5_OBUF (
    .I(alu_a_5_OBUF_1827),
    .O(alu_a[5])
  );
  OBUF   alu_a_4_OBUF (
    .I(alu_a_4_OBUF_1826),
    .O(alu_a[4])
  );
  OBUF   alu_a_3_OBUF (
    .I(alu_a_3_OBUF_1825),
    .O(alu_a[3])
  );
  OBUF   alu_a_2_OBUF (
    .I(alu_a_2_OBUF_1822),
    .O(alu_a[2])
  );
  OBUF   alu_a_1_OBUF (
    .I(alu_a_1_OBUF_1811),
    .O(alu_a[1])
  );
  OBUF   alu_a_0_OBUF (
    .I(alu_a_0_OBUF_1800),
    .O(alu_a[0])
  );
  OBUF   alu_b_31_OBUF (
    .I(alu_b_31_OBUF_1880),
    .O(alu_b[31])
  );
  OBUF   alu_b_30_OBUF (
    .I(alu_b_30_OBUF_1879),
    .O(alu_b[30])
  );
  OBUF   alu_b_29_OBUF (
    .I(alu_b_29_OBUF_1878),
    .O(alu_b[29])
  );
  OBUF   alu_b_28_OBUF (
    .I(alu_b_28_OBUF_1877),
    .O(alu_b[28])
  );
  OBUF   alu_b_27_OBUF (
    .I(alu_b_27_OBUF_1876),
    .O(alu_b[27])
  );
  OBUF   alu_b_26_OBUF (
    .I(alu_b_26_OBUF_1875),
    .O(alu_b[26])
  );
  OBUF   alu_b_25_OBUF (
    .I(alu_b_25_OBUF_1874),
    .O(alu_b[25])
  );
  OBUF   alu_b_24_OBUF (
    .I(alu_b_24_OBUF_1873),
    .O(alu_b[24])
  );
  OBUF   alu_b_23_OBUF (
    .I(alu_b_23_OBUF_1872),
    .O(alu_b[23])
  );
  OBUF   alu_b_22_OBUF (
    .I(alu_b_22_OBUF_1871),
    .O(alu_b[22])
  );
  OBUF   alu_b_21_OBUF (
    .I(alu_b_21_OBUF_1870),
    .O(alu_b[21])
  );
  OBUF   alu_b_20_OBUF (
    .I(alu_b_20_OBUF_1869),
    .O(alu_b[20])
  );
  OBUF   alu_b_19_OBUF (
    .I(alu_b_19_OBUF_1867),
    .O(alu_b[19])
  );
  OBUF   alu_b_18_OBUF (
    .I(alu_b_18_OBUF_1866),
    .O(alu_b[18])
  );
  OBUF   alu_b_17_OBUF (
    .I(alu_b_17_OBUF_1865),
    .O(alu_b[17])
  );
  OBUF   alu_b_16_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_46_47 ),
    .O(alu_b[16])
  );
  OBUF   alu_b_15_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_45_46 ),
    .O(alu_b[15])
  );
  OBUF   alu_b_14_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_44_45 ),
    .O(alu_b[14])
  );
  OBUF   alu_b_13_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_43_44 ),
    .O(alu_b[13])
  );
  OBUF   alu_b_12_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_42_43 ),
    .O(alu_b[12])
  );
  OBUF   alu_b_11_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_41_37 ),
    .O(alu_b[11])
  );
  OBUF   alu_b_10_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_4_36 ),
    .O(alu_b[10])
  );
  OBUF   alu_b_9_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_414_42 ),
    .O(alu_b[9])
  );
  OBUF   alu_b_8_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_413_41 ),
    .O(alu_b[8])
  );
  OBUF   alu_b_7_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_412_40 ),
    .O(alu_b[7])
  );
  OBUF   alu_b_6_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_411_39 ),
    .O(alu_b[6])
  );
  OBUF   alu_b_5_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_410_38 ),
    .O(alu_b[5])
  );
  OBUF   alu_b_4_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_49_50 ),
    .O(alu_b[4])
  );
  OBUF   alu_b_3_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_48_49 ),
    .O(alu_b[3])
  );
  OBUF   alu_b_2_OBUF (
    .I(\ALU_OPB_MUX/Mmux_alu_opb_47_48 ),
    .O(alu_b[2])
  );
  OBUF   alu_b_1_OBUF (
    .I(alu_b_1_OBUF_1868),
    .O(alu_b[1])
  );
  OBUF   alu_b_0_OBUF (
    .I(alu_b_0_OBUF_1864),
    .O(alu_b[0])
  );
  OBUF   alu_out_31_OBUF (
    .I(\ALURESULT/alu_out [31]),
    .O(alu_out[31])
  );
  OBUF   alu_out_30_OBUF (
    .I(\ALURESULT/alu_out [30]),
    .O(alu_out[30])
  );
  OBUF   alu_out_29_OBUF (
    .I(\ALURESULT/alu_out [29]),
    .O(alu_out[29])
  );
  OBUF   alu_out_28_OBUF (
    .I(\ALURESULT/alu_out [28]),
    .O(alu_out[28])
  );
  OBUF   alu_out_27_OBUF (
    .I(\ALURESULT/alu_out [27]),
    .O(alu_out[27])
  );
  OBUF   alu_out_26_OBUF (
    .I(\ALURESULT/alu_out [26]),
    .O(alu_out[26])
  );
  OBUF   alu_out_25_OBUF (
    .I(\ALURESULT/alu_out [25]),
    .O(alu_out[25])
  );
  OBUF   alu_out_24_OBUF (
    .I(\ALURESULT/alu_out [24]),
    .O(alu_out[24])
  );
  OBUF   alu_out_23_OBUF (
    .I(\ALURESULT/alu_out [23]),
    .O(alu_out[23])
  );
  OBUF   alu_out_22_OBUF (
    .I(\ALURESULT/alu_out [22]),
    .O(alu_out[22])
  );
  OBUF   alu_out_21_OBUF (
    .I(\ALURESULT/alu_out [21]),
    .O(alu_out[21])
  );
  OBUF   alu_out_20_OBUF (
    .I(\ALURESULT/alu_out [20]),
    .O(alu_out[20])
  );
  OBUF   alu_out_19_OBUF (
    .I(\ALURESULT/alu_out [19]),
    .O(alu_out[19])
  );
  OBUF   alu_out_18_OBUF (
    .I(\ALURESULT/alu_out [18]),
    .O(alu_out[18])
  );
  OBUF   alu_out_17_OBUF (
    .I(\ALURESULT/alu_out [17]),
    .O(alu_out[17])
  );
  OBUF   alu_out_16_OBUF (
    .I(\ALURESULT/alu_out [16]),
    .O(alu_out[16])
  );
  OBUF   alu_out_15_OBUF (
    .I(\ALURESULT/alu_out [15]),
    .O(alu_out[15])
  );
  OBUF   alu_out_14_OBUF (
    .I(\ALURESULT/alu_out [14]),
    .O(alu_out[14])
  );
  OBUF   alu_out_13_OBUF (
    .I(\ALURESULT/alu_out [13]),
    .O(alu_out[13])
  );
  OBUF   alu_out_12_OBUF (
    .I(\ALURESULT/alu_out [12]),
    .O(alu_out[12])
  );
  OBUF   alu_out_11_OBUF (
    .I(\ALURESULT/alu_out [11]),
    .O(alu_out[11])
  );
  OBUF   alu_out_10_OBUF (
    .I(\ALURESULT/alu_out [10]),
    .O(alu_out[10])
  );
  OBUF   alu_out_9_OBUF (
    .I(\ALURESULT/alu_out [9]),
    .O(alu_out[9])
  );
  OBUF   alu_out_8_OBUF (
    .I(\ALURESULT/alu_out [8]),
    .O(alu_out[8])
  );
  OBUF   alu_out_7_OBUF (
    .I(\ALURESULT/alu_out [7]),
    .O(alu_out[7])
  );
  OBUF   alu_out_6_OBUF (
    .I(\ALURESULT/alu_out [6]),
    .O(alu_out[6])
  );
  OBUF   alu_out_5_OBUF (
    .I(\ALURESULT/alu_out [5]),
    .O(alu_out[5])
  );
  OBUF   alu_out_4_OBUF (
    .I(\ALURESULT/alu_out [4]),
    .O(alu_out[4])
  );
  OBUF   alu_out_3_OBUF (
    .I(\ALURESULT/alu_out [3]),
    .O(alu_out[3])
  );
  OBUF   alu_out_2_OBUF (
    .I(\ALURESULT/alu_out [2]),
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
    .I(\reg_out/r2_dout [31]),
    .O(r1_dout[31])
  );
  OBUF   r1_dout_30_OBUF (
    .I(\reg_out/r2_dout [30]),
    .O(r1_dout[30])
  );
  OBUF   r1_dout_29_OBUF (
    .I(\reg_out/r2_dout [29]),
    .O(r1_dout[29])
  );
  OBUF   r1_dout_28_OBUF (
    .I(\reg_out/r2_dout [28]),
    .O(r1_dout[28])
  );
  OBUF   r1_dout_27_OBUF (
    .I(\reg_out/r2_dout [27]),
    .O(r1_dout[27])
  );
  OBUF   r1_dout_26_OBUF (
    .I(\reg_out/r2_dout [26]),
    .O(r1_dout[26])
  );
  OBUF   r1_dout_25_OBUF (
    .I(\reg_out/r2_dout [25]),
    .O(r1_dout[25])
  );
  OBUF   r1_dout_24_OBUF (
    .I(\reg_out/r2_dout [24]),
    .O(r1_dout[24])
  );
  OBUF   r1_dout_23_OBUF (
    .I(\reg_out/r2_dout [23]),
    .O(r1_dout[23])
  );
  OBUF   r1_dout_22_OBUF (
    .I(\reg_out/r2_dout [22]),
    .O(r1_dout[22])
  );
  OBUF   r1_dout_21_OBUF (
    .I(\reg_out/r2_dout [21]),
    .O(r1_dout[21])
  );
  OBUF   r1_dout_20_OBUF (
    .I(\reg_out/r2_dout [20]),
    .O(r1_dout[20])
  );
  OBUF   r1_dout_19_OBUF (
    .I(\reg_out/r2_dout [19]),
    .O(r1_dout[19])
  );
  OBUF   r1_dout_18_OBUF (
    .I(\reg_out/r2_dout [18]),
    .O(r1_dout[18])
  );
  OBUF   r1_dout_17_OBUF (
    .I(\reg_out/r2_dout [17]),
    .O(r1_dout[17])
  );
  OBUF   r1_dout_16_OBUF (
    .I(\reg_out/r2_dout [16]),
    .O(r1_dout[16])
  );
  OBUF   r1_dout_15_OBUF (
    .I(\reg_out/r2_dout [15]),
    .O(r1_dout[15])
  );
  OBUF   r1_dout_14_OBUF (
    .I(\reg_out/r2_dout [14]),
    .O(r1_dout[14])
  );
  OBUF   r1_dout_13_OBUF (
    .I(\reg_out/r2_dout [13]),
    .O(r1_dout[13])
  );
  OBUF   r1_dout_12_OBUF (
    .I(\reg_out/r2_dout [12]),
    .O(r1_dout[12])
  );
  OBUF   r1_dout_11_OBUF (
    .I(\reg_out/r2_dout [11]),
    .O(r1_dout[11])
  );
  OBUF   r1_dout_10_OBUF (
    .I(\reg_out/r2_dout [10]),
    .O(r1_dout[10])
  );
  OBUF   r1_dout_9_OBUF (
    .I(\reg_out/r2_dout [9]),
    .O(r1_dout[9])
  );
  OBUF   r1_dout_8_OBUF (
    .I(\reg_out/r2_dout [8]),
    .O(r1_dout[8])
  );
  OBUF   r1_dout_7_OBUF (
    .I(\reg_out/r2_dout [7]),
    .O(r1_dout[7])
  );
  OBUF   r1_dout_6_OBUF (
    .I(\reg_out/r2_dout [6]),
    .O(r1_dout[6])
  );
  OBUF   r1_dout_5_OBUF (
    .I(\reg_out/r2_dout [5]),
    .O(r1_dout[5])
  );
  OBUF   r1_dout_4_OBUF (
    .I(\reg_out/r2_dout [4]),
    .O(r1_dout[4])
  );
  OBUF   r1_dout_3_OBUF (
    .I(\reg_out/r2_dout [3]),
    .O(r1_dout[3])
  );
  OBUF   r1_dout_2_OBUF (
    .I(\reg_out/r2_dout [2]),
    .O(r1_dout[2])
  );
  OBUF   r1_dout_1_OBUF (
    .I(\reg_out/r2_dout [1]),
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
    .I(BranchSig_OBUF_64),
    .O(bubblePri[2])
  );
  OBUF   bubblePri_1_OBUF (
    .I(PC_En_Conflict_OBUF_1549),
    .O(bubblePri[1])
  );
  OBUF   bubblePri_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(bubblePri[0])
  );
  OBUF   Jump_addr_25_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[25])
  );
  OBUF   Jump_addr_24_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[24])
  );
  OBUF   Jump_addr_23_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[23])
  );
  OBUF   Jump_addr_22_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[22])
  );
  OBUF   Jump_addr_21_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[21])
  );
  OBUF   Jump_addr_20_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[20])
  );
  OBUF   Jump_addr_19_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[19])
  );
  OBUF   Jump_addr_18_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[18])
  );
  OBUF   Jump_addr_17_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[17])
  );
  OBUF   Jump_addr_16_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[16])
  );
  OBUF   Jump_addr_15_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[15])
  );
  OBUF   Jump_addr_14_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[14])
  );
  OBUF   Jump_addr_13_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[13])
  );
  OBUF   Jump_addr_12_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[12])
  );
  OBUF   Jump_addr_11_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[11])
  );
  OBUF   Jump_addr_10_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[10])
  );
  OBUF   Jump_addr_9_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[9])
  );
  OBUF   Jump_addr_8_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[8])
  );
  OBUF   Jump_addr_7_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[7])
  );
  OBUF   Jump_addr_6_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[6])
  );
  OBUF   Jump_addr_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[5])
  );
  OBUF   Jump_addr_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[4])
  );
  OBUF   Jump_addr_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[3])
  );
  OBUF   Jump_addr_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[2])
  );
  OBUF   Jump_addr_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[1])
  );
  OBUF   Jump_addr_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(Jump_addr[0])
  );
  OBUF   r1_data_31_OBUF (
    .I(\RegFile/R_0_31_1679 ),
    .O(r1_data[31])
  );
  OBUF   r1_data_30_OBUF (
    .I(\RegFile/R_0_30_1678 ),
    .O(r1_data[30])
  );
  OBUF   r1_data_29_OBUF (
    .I(\RegFile/R_0_29_1676 ),
    .O(r1_data[29])
  );
  OBUF   r1_data_28_OBUF (
    .I(\RegFile/R_0_28_1675 ),
    .O(r1_data[28])
  );
  OBUF   r1_data_27_OBUF (
    .I(\RegFile/R_0_27_1674 ),
    .O(r1_data[27])
  );
  OBUF   r1_data_26_OBUF (
    .I(\RegFile/R_0_26_1673 ),
    .O(r1_data[26])
  );
  OBUF   r1_data_25_OBUF (
    .I(\RegFile/R_0_25_1672 ),
    .O(r1_data[25])
  );
  OBUF   r1_data_24_OBUF (
    .I(\RegFile/R_0_24_1671 ),
    .O(r1_data[24])
  );
  OBUF   r1_data_23_OBUF (
    .I(\RegFile/R_0_23_1670 ),
    .O(r1_data[23])
  );
  OBUF   r1_data_22_OBUF (
    .I(\RegFile/R_0_22_1669 ),
    .O(r1_data[22])
  );
  OBUF   r1_data_21_OBUF (
    .I(\RegFile/R_0_21_1668 ),
    .O(r1_data[21])
  );
  OBUF   r1_data_20_OBUF (
    .I(\RegFile/R_0_20_1667 ),
    .O(r1_data[20])
  );
  OBUF   r1_data_19_OBUF (
    .I(\RegFile/R_0_19_1665 ),
    .O(r1_data[19])
  );
  OBUF   r1_data_18_OBUF (
    .I(\RegFile/R_0_18_1664 ),
    .O(r1_data[18])
  );
  OBUF   r1_data_17_OBUF (
    .I(\RegFile/R_0_17_1663 ),
    .O(r1_data[17])
  );
  OBUF   r1_data_16_OBUF (
    .I(\RegFile/R_0_16_1662 ),
    .O(r1_data[16])
  );
  OBUF   r1_data_15_OBUF (
    .I(\RegFile/R_0_15_1661 ),
    .O(r1_data[15])
  );
  OBUF   r1_data_14_OBUF (
    .I(\RegFile/R_0_14_1660 ),
    .O(r1_data[14])
  );
  OBUF   r1_data_13_OBUF (
    .I(\RegFile/R_0_13_1659 ),
    .O(r1_data[13])
  );
  OBUF   r1_data_12_OBUF (
    .I(\RegFile/R_0_12_1658 ),
    .O(r1_data[12])
  );
  OBUF   r1_data_11_OBUF (
    .I(\RegFile/R_0_11_1657 ),
    .O(r1_data[11])
  );
  OBUF   r1_data_10_OBUF (
    .I(\RegFile/R_0_10_1656 ),
    .O(r1_data[10])
  );
  OBUF   r1_data_9_OBUF (
    .I(\RegFile/R_0_9_1685 ),
    .O(r1_data[9])
  );
  OBUF   r1_data_8_OBUF (
    .I(\RegFile/R_0_8_1684 ),
    .O(r1_data[8])
  );
  OBUF   r1_data_7_OBUF (
    .I(\RegFile/R_0_7_1683 ),
    .O(r1_data[7])
  );
  OBUF   r1_data_6_OBUF (
    .I(\RegFile/R_0_6_1682 ),
    .O(r1_data[6])
  );
  OBUF   r1_data_5_OBUF (
    .I(\RegFile/R_0_5_1681 ),
    .O(r1_data[5])
  );
  OBUF   r1_data_4_OBUF (
    .I(\RegFile/R_0_4_1680 ),
    .O(r1_data[4])
  );
  OBUF   r1_data_3_OBUF (
    .I(\RegFile/R_0_3_1677 ),
    .O(r1_data[3])
  );
  OBUF   r1_data_2_OBUF (
    .I(\RegFile/R_0_2_1666 ),
    .O(r1_data[2])
  );
  OBUF   r1_data_1_OBUF (
    .I(\RegFile/R_0_1_1655 ),
    .O(r1_data[1])
  );
  OBUF   r1_data_0_OBUF (
    .I(\RegFile/R_0_0_1654 ),
    .O(r1_data[0])
  );
  OBUF   reg_datain_31_OBUF (
    .I(reg_datain_31_OBUF_2423),
    .O(reg_datain[31])
  );
  OBUF   reg_datain_30_OBUF (
    .I(reg_datain_30_OBUF_2422),
    .O(reg_datain[30])
  );
  OBUF   reg_datain_29_OBUF (
    .I(reg_datain_29_OBUF_2420),
    .O(reg_datain[29])
  );
  OBUF   reg_datain_28_OBUF (
    .I(reg_datain_28_OBUF_2419),
    .O(reg_datain[28])
  );
  OBUF   reg_datain_27_OBUF (
    .I(reg_datain_27_OBUF_2418),
    .O(reg_datain[27])
  );
  OBUF   reg_datain_26_OBUF (
    .I(reg_datain_26_OBUF_2417),
    .O(reg_datain[26])
  );
  OBUF   reg_datain_25_OBUF (
    .I(reg_datain_25_OBUF_2416),
    .O(reg_datain[25])
  );
  OBUF   reg_datain_24_OBUF (
    .I(reg_datain_24_OBUF_2415),
    .O(reg_datain[24])
  );
  OBUF   reg_datain_23_OBUF (
    .I(reg_datain_23_OBUF_2414),
    .O(reg_datain[23])
  );
  OBUF   reg_datain_22_OBUF (
    .I(reg_datain_22_OBUF_2413),
    .O(reg_datain[22])
  );
  OBUF   reg_datain_21_OBUF (
    .I(reg_datain_21_OBUF_2412),
    .O(reg_datain[21])
  );
  OBUF   reg_datain_20_OBUF (
    .I(reg_datain_20_OBUF_2411),
    .O(reg_datain[20])
  );
  OBUF   reg_datain_19_OBUF (
    .I(reg_datain_19_OBUF_2409),
    .O(reg_datain[19])
  );
  OBUF   reg_datain_18_OBUF (
    .I(reg_datain_18_OBUF_2408),
    .O(reg_datain[18])
  );
  OBUF   reg_datain_17_OBUF (
    .I(reg_datain_17_OBUF_2407),
    .O(reg_datain[17])
  );
  OBUF   reg_datain_16_OBUF (
    .I(reg_datain_16_OBUF_2406),
    .O(reg_datain[16])
  );
  OBUF   reg_datain_15_OBUF (
    .I(reg_datain_15_OBUF_2405),
    .O(reg_datain[15])
  );
  OBUF   reg_datain_14_OBUF (
    .I(reg_datain_14_OBUF_2404),
    .O(reg_datain[14])
  );
  OBUF   reg_datain_13_OBUF (
    .I(reg_datain_13_OBUF_2403),
    .O(reg_datain[13])
  );
  OBUF   reg_datain_12_OBUF (
    .I(reg_datain_12_OBUF_2402),
    .O(reg_datain[12])
  );
  OBUF   reg_datain_11_OBUF (
    .I(reg_datain_11_OBUF_2401),
    .O(reg_datain[11])
  );
  OBUF   reg_datain_10_OBUF (
    .I(reg_datain_10_OBUF_2400),
    .O(reg_datain[10])
  );
  OBUF   reg_datain_9_OBUF (
    .I(reg_datain_9_OBUF_2430),
    .O(reg_datain[9])
  );
  OBUF   reg_datain_8_OBUF (
    .I(reg_datain_8_OBUF_2429),
    .O(reg_datain[8])
  );
  OBUF   reg_datain_7_OBUF (
    .I(reg_datain_7_OBUF_2428),
    .O(reg_datain[7])
  );
  OBUF   reg_datain_6_OBUF (
    .I(reg_datain_6_OBUF_2427),
    .O(reg_datain[6])
  );
  OBUF   reg_datain_5_OBUF (
    .I(reg_datain_5_OBUF_2426),
    .O(reg_datain[5])
  );
  OBUF   reg_datain_4_OBUF (
    .I(reg_datain_4_OBUF_2425),
    .O(reg_datain[4])
  );
  OBUF   reg_datain_3_OBUF (
    .I(reg_datain_3_OBUF_2424),
    .O(reg_datain[3])
  );
  OBUF   reg_datain_2_OBUF (
    .I(reg_datain_2_OBUF_2421),
    .O(reg_datain[2])
  );
  OBUF   reg_datain_1_OBUF (
    .I(reg_datain_1_OBUF_2410),
    .O(reg_datain[1])
  );
  OBUF   reg_datain_0_OBUF (
    .I(reg_datain_0_OBUF_2399),
    .O(reg_datain[0])
  );
  OBUF   Mem_addr_31_OBUF (
    .I(Mem_addr_31_OBUF_1134),
    .O(Mem_addr[31])
  );
  OBUF   Mem_addr_30_OBUF (
    .I(Mem_addr_30_OBUF_1133),
    .O(Mem_addr[30])
  );
  OBUF   Mem_addr_29_OBUF (
    .I(Mem_addr_29_OBUF_1131),
    .O(Mem_addr[29])
  );
  OBUF   Mem_addr_28_OBUF (
    .I(Mem_addr_28_OBUF_1130),
    .O(Mem_addr[28])
  );
  OBUF   Mem_addr_27_OBUF (
    .I(Mem_addr_27_OBUF_1129),
    .O(Mem_addr[27])
  );
  OBUF   Mem_addr_26_OBUF (
    .I(Mem_addr_26_OBUF_1128),
    .O(Mem_addr[26])
  );
  OBUF   Mem_addr_25_OBUF (
    .I(Mem_addr_25_OBUF_1127),
    .O(Mem_addr[25])
  );
  OBUF   Mem_addr_24_OBUF (
    .I(Mem_addr_24_OBUF_1126),
    .O(Mem_addr[24])
  );
  OBUF   Mem_addr_23_OBUF (
    .I(Mem_addr_23_OBUF_1125),
    .O(Mem_addr[23])
  );
  OBUF   Mem_addr_22_OBUF (
    .I(Mem_addr_22_OBUF_1124),
    .O(Mem_addr[22])
  );
  OBUF   Mem_addr_21_OBUF (
    .I(Mem_addr_21_OBUF_1123),
    .O(Mem_addr[21])
  );
  OBUF   Mem_addr_20_OBUF (
    .I(Mem_addr_20_OBUF_1122),
    .O(Mem_addr[20])
  );
  OBUF   Mem_addr_19_OBUF (
    .I(Mem_addr_19_OBUF_1120),
    .O(Mem_addr[19])
  );
  OBUF   Mem_addr_18_OBUF (
    .I(Mem_addr_18_OBUF_1119),
    .O(Mem_addr[18])
  );
  OBUF   Mem_addr_17_OBUF (
    .I(Mem_addr_17_OBUF_1118),
    .O(Mem_addr[17])
  );
  OBUF   Mem_addr_16_OBUF (
    .I(Mem_addr_16_OBUF_1117),
    .O(Mem_addr[16])
  );
  OBUF   Mem_addr_15_OBUF (
    .I(Mem_addr_15_OBUF_1116),
    .O(Mem_addr[15])
  );
  OBUF   Mem_addr_14_OBUF (
    .I(Mem_addr_14_OBUF_1115),
    .O(Mem_addr[14])
  );
  OBUF   Mem_addr_13_OBUF (
    .I(Mem_addr_13_OBUF_1114),
    .O(Mem_addr[13])
  );
  OBUF   Mem_addr_12_OBUF (
    .I(Mem_addr_12_OBUF_1113),
    .O(Mem_addr[12])
  );
  OBUF   Mem_addr_11_OBUF (
    .I(Mem_addr_11_OBUF_1112),
    .O(Mem_addr[11])
  );
  OBUF   Mem_addr_10_OBUF (
    .I(Mem_addr_10_OBUF_1111),
    .O(Mem_addr[10])
  );
  OBUF   Mem_addr_9_OBUF (
    .I(Mem_addr_9_OBUF_1141),
    .O(Mem_addr[9])
  );
  OBUF   Mem_addr_8_OBUF (
    .I(Mem_addr_8_OBUF_1140),
    .O(Mem_addr[8])
  );
  OBUF   Mem_addr_7_OBUF (
    .I(Mem_addr_7_OBUF_1139),
    .O(Mem_addr[7])
  );
  OBUF   Mem_addr_6_OBUF (
    .I(Mem_addr_6_OBUF_1138),
    .O(Mem_addr[6])
  );
  OBUF   Mem_addr_5_OBUF (
    .I(Mem_addr_5_OBUF_1137),
    .O(Mem_addr[5])
  );
  OBUF   Mem_addr_4_OBUF (
    .I(Mem_addr_4_OBUF_1136),
    .O(Mem_addr[4])
  );
  OBUF   Mem_addr_3_OBUF (
    .I(Mem_addr_3_OBUF_1135),
    .O(Mem_addr[3])
  );
  OBUF   Mem_addr_2_OBUF (
    .I(Mem_addr_2_OBUF_1132),
    .O(Mem_addr[2])
  );
  OBUF   Mem_addr_1_OBUF (
    .I(Mem_addr_1_OBUF_1121),
    .O(Mem_addr[1])
  );
  OBUF   Mem_addr_0_OBUF (
    .I(Mem_addr_0_OBUF_1110),
    .O(Mem_addr[0])
  );
  OBUF   r1_addr_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r1_addr[4])
  );
  OBUF   r1_addr_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r1_addr[3])
  );
  OBUF   r1_addr_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r1_addr[2])
  );
  OBUF   r1_addr_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r1_addr[1])
  );
  OBUF   r1_addr_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r1_addr[0])
  );
  OBUF   r2_dout_31_OBUF (
    .I(\reg_out/r2_dout [31]),
    .O(r2_dout[31])
  );
  OBUF   r2_dout_30_OBUF (
    .I(\reg_out/r2_dout [30]),
    .O(r2_dout[30])
  );
  OBUF   r2_dout_29_OBUF (
    .I(\reg_out/r2_dout [29]),
    .O(r2_dout[29])
  );
  OBUF   r2_dout_28_OBUF (
    .I(\reg_out/r2_dout [28]),
    .O(r2_dout[28])
  );
  OBUF   r2_dout_27_OBUF (
    .I(\reg_out/r2_dout [27]),
    .O(r2_dout[27])
  );
  OBUF   r2_dout_26_OBUF (
    .I(\reg_out/r2_dout [26]),
    .O(r2_dout[26])
  );
  OBUF   r2_dout_25_OBUF (
    .I(\reg_out/r2_dout [25]),
    .O(r2_dout[25])
  );
  OBUF   r2_dout_24_OBUF (
    .I(\reg_out/r2_dout [24]),
    .O(r2_dout[24])
  );
  OBUF   r2_dout_23_OBUF (
    .I(\reg_out/r2_dout [23]),
    .O(r2_dout[23])
  );
  OBUF   r2_dout_22_OBUF (
    .I(\reg_out/r2_dout [22]),
    .O(r2_dout[22])
  );
  OBUF   r2_dout_21_OBUF (
    .I(\reg_out/r2_dout [21]),
    .O(r2_dout[21])
  );
  OBUF   r2_dout_20_OBUF (
    .I(\reg_out/r2_dout [20]),
    .O(r2_dout[20])
  );
  OBUF   r2_dout_19_OBUF (
    .I(\reg_out/r2_dout [19]),
    .O(r2_dout[19])
  );
  OBUF   r2_dout_18_OBUF (
    .I(\reg_out/r2_dout [18]),
    .O(r2_dout[18])
  );
  OBUF   r2_dout_17_OBUF (
    .I(\reg_out/r2_dout [17]),
    .O(r2_dout[17])
  );
  OBUF   r2_dout_16_OBUF (
    .I(\reg_out/r2_dout [16]),
    .O(r2_dout[16])
  );
  OBUF   r2_dout_15_OBUF (
    .I(\reg_out/r2_dout [15]),
    .O(r2_dout[15])
  );
  OBUF   r2_dout_14_OBUF (
    .I(\reg_out/r2_dout [14]),
    .O(r2_dout[14])
  );
  OBUF   r2_dout_13_OBUF (
    .I(\reg_out/r2_dout [13]),
    .O(r2_dout[13])
  );
  OBUF   r2_dout_12_OBUF (
    .I(\reg_out/r2_dout [12]),
    .O(r2_dout[12])
  );
  OBUF   r2_dout_11_OBUF (
    .I(\reg_out/r2_dout [11]),
    .O(r2_dout[11])
  );
  OBUF   r2_dout_10_OBUF (
    .I(\reg_out/r2_dout [10]),
    .O(r2_dout[10])
  );
  OBUF   r2_dout_9_OBUF (
    .I(\reg_out/r2_dout [9]),
    .O(r2_dout[9])
  );
  OBUF   r2_dout_8_OBUF (
    .I(\reg_out/r2_dout [8]),
    .O(r2_dout[8])
  );
  OBUF   r2_dout_7_OBUF (
    .I(\reg_out/r2_dout [7]),
    .O(r2_dout[7])
  );
  OBUF   r2_dout_6_OBUF (
    .I(\reg_out/r2_dout [6]),
    .O(r2_dout[6])
  );
  OBUF   r2_dout_5_OBUF (
    .I(\reg_out/r2_dout [5]),
    .O(r2_dout[5])
  );
  OBUF   r2_dout_4_OBUF (
    .I(\reg_out/r2_dout [4]),
    .O(r2_dout[4])
  );
  OBUF   r2_dout_3_OBUF (
    .I(\reg_out/r2_dout [3]),
    .O(r2_dout[3])
  );
  OBUF   r2_dout_2_OBUF (
    .I(\reg_out/r2_dout [2]),
    .O(r2_dout[2])
  );
  OBUF   r2_dout_1_OBUF (
    .I(\reg_out/r2_dout [1]),
    .O(r2_dout[1])
  );
  OBUF   r2_dout_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(r2_dout[0])
  );
  OBUF   ALU_SrcB_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(ALU_SrcB[1])
  );
  OBUF   ALU_SrcB_0_OBUF (
    .I(ALU_SrcB_0_OBUF_57),
    .O(ALU_SrcB[0])
  );
  OBUF   reg_realdatain_31_OBUF (
    .I(reg_realdatain_31_OBUF_2519),
    .O(reg_realdatain[31])
  );
  OBUF   reg_realdatain_30_OBUF (
    .I(reg_realdatain_30_OBUF_2518),
    .O(reg_realdatain[30])
  );
  OBUF   reg_realdatain_29_OBUF (
    .I(reg_realdatain_29_OBUF_2516),
    .O(reg_realdatain[29])
  );
  OBUF   reg_realdatain_28_OBUF (
    .I(reg_realdatain_28_OBUF_2515),
    .O(reg_realdatain[28])
  );
  OBUF   reg_realdatain_27_OBUF (
    .I(reg_realdatain_27_OBUF_2514),
    .O(reg_realdatain[27])
  );
  OBUF   reg_realdatain_26_OBUF (
    .I(reg_realdatain_26_OBUF_2513),
    .O(reg_realdatain[26])
  );
  OBUF   reg_realdatain_25_OBUF (
    .I(reg_realdatain_25_OBUF_2512),
    .O(reg_realdatain[25])
  );
  OBUF   reg_realdatain_24_OBUF (
    .I(reg_realdatain_24_OBUF_2511),
    .O(reg_realdatain[24])
  );
  OBUF   reg_realdatain_23_OBUF (
    .I(reg_realdatain_23_OBUF_2510),
    .O(reg_realdatain[23])
  );
  OBUF   reg_realdatain_22_OBUF (
    .I(reg_realdatain_22_OBUF_2509),
    .O(reg_realdatain[22])
  );
  OBUF   reg_realdatain_21_OBUF (
    .I(reg_realdatain_21_OBUF_2508),
    .O(reg_realdatain[21])
  );
  OBUF   reg_realdatain_20_OBUF (
    .I(reg_realdatain_20_OBUF_2507),
    .O(reg_realdatain[20])
  );
  OBUF   reg_realdatain_19_OBUF (
    .I(reg_realdatain_19_OBUF_2505),
    .O(reg_realdatain[19])
  );
  OBUF   reg_realdatain_18_OBUF (
    .I(reg_realdatain_18_OBUF_2504),
    .O(reg_realdatain[18])
  );
  OBUF   reg_realdatain_17_OBUF (
    .I(reg_realdatain_17_OBUF_2503),
    .O(reg_realdatain[17])
  );
  OBUF   reg_realdatain_16_OBUF (
    .I(reg_realdatain_16_OBUF_2502),
    .O(reg_realdatain[16])
  );
  OBUF   reg_realdatain_15_OBUF (
    .I(reg_realdatain_15_OBUF_2501),
    .O(reg_realdatain[15])
  );
  OBUF   reg_realdatain_14_OBUF (
    .I(reg_realdatain_14_OBUF_2500),
    .O(reg_realdatain[14])
  );
  OBUF   reg_realdatain_13_OBUF (
    .I(reg_realdatain_13_OBUF_2499),
    .O(reg_realdatain[13])
  );
  OBUF   reg_realdatain_12_OBUF (
    .I(reg_realdatain_12_OBUF_2498),
    .O(reg_realdatain[12])
  );
  OBUF   reg_realdatain_11_OBUF (
    .I(reg_realdatain_11_OBUF_2497),
    .O(reg_realdatain[11])
  );
  OBUF   reg_realdatain_10_OBUF (
    .I(reg_realdatain_10_OBUF_2496),
    .O(reg_realdatain[10])
  );
  OBUF   reg_realdatain_9_OBUF (
    .I(reg_realdatain_9_OBUF_2526),
    .O(reg_realdatain[9])
  );
  OBUF   reg_realdatain_8_OBUF (
    .I(reg_realdatain_8_OBUF_2525),
    .O(reg_realdatain[8])
  );
  OBUF   reg_realdatain_7_OBUF (
    .I(reg_realdatain_7_OBUF_2524),
    .O(reg_realdatain[7])
  );
  OBUF   reg_realdatain_6_OBUF (
    .I(reg_realdatain_6_OBUF_2523),
    .O(reg_realdatain[6])
  );
  OBUF   reg_realdatain_5_OBUF (
    .I(reg_realdatain_5_OBUF_2522),
    .O(reg_realdatain[5])
  );
  OBUF   reg_realdatain_4_OBUF (
    .I(reg_realdatain_4_OBUF_2521),
    .O(reg_realdatain[4])
  );
  OBUF   reg_realdatain_3_OBUF (
    .I(reg_realdatain_3_OBUF_2520),
    .O(reg_realdatain[3])
  );
  OBUF   reg_realdatain_2_OBUF (
    .I(reg_realdatain_2_OBUF_2517),
    .O(reg_realdatain[2])
  );
  OBUF   reg_realdatain_1_OBUF (
    .I(reg_realdatain_1_OBUF_2506),
    .O(reg_realdatain[1])
  );
  OBUF   reg_realdatain_0_OBUF (
    .I(reg_realdatain_0_OBUF_2495),
    .O(reg_realdatain[0])
  );
  OBUF   r2_data_31_OBUF (
    .I(\RegFile/R_0_31_1679 ),
    .O(r2_data[31])
  );
  OBUF   r2_data_30_OBUF (
    .I(\RegFile/R_0_30_1678 ),
    .O(r2_data[30])
  );
  OBUF   r2_data_29_OBUF (
    .I(\RegFile/R_0_29_1676 ),
    .O(r2_data[29])
  );
  OBUF   r2_data_28_OBUF (
    .I(\RegFile/R_0_28_1675 ),
    .O(r2_data[28])
  );
  OBUF   r2_data_27_OBUF (
    .I(\RegFile/R_0_27_1674 ),
    .O(r2_data[27])
  );
  OBUF   r2_data_26_OBUF (
    .I(\RegFile/R_0_26_1673 ),
    .O(r2_data[26])
  );
  OBUF   r2_data_25_OBUF (
    .I(\RegFile/R_0_25_1672 ),
    .O(r2_data[25])
  );
  OBUF   r2_data_24_OBUF (
    .I(\RegFile/R_0_24_1671 ),
    .O(r2_data[24])
  );
  OBUF   r2_data_23_OBUF (
    .I(\RegFile/R_0_23_1670 ),
    .O(r2_data[23])
  );
  OBUF   r2_data_22_OBUF (
    .I(\RegFile/R_0_22_1669 ),
    .O(r2_data[22])
  );
  OBUF   r2_data_21_OBUF (
    .I(\RegFile/R_0_21_1668 ),
    .O(r2_data[21])
  );
  OBUF   r2_data_20_OBUF (
    .I(\RegFile/R_0_20_1667 ),
    .O(r2_data[20])
  );
  OBUF   r2_data_19_OBUF (
    .I(\RegFile/R_0_19_1665 ),
    .O(r2_data[19])
  );
  OBUF   r2_data_18_OBUF (
    .I(\RegFile/R_0_18_1664 ),
    .O(r2_data[18])
  );
  OBUF   r2_data_17_OBUF (
    .I(\RegFile/R_0_17_1663 ),
    .O(r2_data[17])
  );
  OBUF   r2_data_16_OBUF (
    .I(\RegFile/R_0_16_1662 ),
    .O(r2_data[16])
  );
  OBUF   r2_data_15_OBUF (
    .I(\RegFile/R_0_15_1661 ),
    .O(r2_data[15])
  );
  OBUF   r2_data_14_OBUF (
    .I(\RegFile/R_0_14_1660 ),
    .O(r2_data[14])
  );
  OBUF   r2_data_13_OBUF (
    .I(\RegFile/R_0_13_1659 ),
    .O(r2_data[13])
  );
  OBUF   r2_data_12_OBUF (
    .I(\RegFile/R_0_12_1658 ),
    .O(r2_data[12])
  );
  OBUF   r2_data_11_OBUF (
    .I(\RegFile/R_0_11_1657 ),
    .O(r2_data[11])
  );
  OBUF   r2_data_10_OBUF (
    .I(\RegFile/R_0_10_1656 ),
    .O(r2_data[10])
  );
  OBUF   r2_data_9_OBUF (
    .I(\RegFile/R_0_9_1685 ),
    .O(r2_data[9])
  );
  OBUF   r2_data_8_OBUF (
    .I(\RegFile/R_0_8_1684 ),
    .O(r2_data[8])
  );
  OBUF   r2_data_7_OBUF (
    .I(\RegFile/R_0_7_1683 ),
    .O(r2_data[7])
  );
  OBUF   r2_data_6_OBUF (
    .I(\RegFile/R_0_6_1682 ),
    .O(r2_data[6])
  );
  OBUF   r2_data_5_OBUF (
    .I(\RegFile/R_0_5_1681 ),
    .O(r2_data[5])
  );
  OBUF   r2_data_4_OBUF (
    .I(\RegFile/R_0_4_1680 ),
    .O(r2_data[4])
  );
  OBUF   r2_data_3_OBUF (
    .I(\RegFile/R_0_3_1677 ),
    .O(r2_data[3])
  );
  OBUF   r2_data_2_OBUF (
    .I(\RegFile/R_0_2_1666 ),
    .O(r2_data[2])
  );
  OBUF   r2_data_1_OBUF (
    .I(\RegFile/R_0_1_1655 ),
    .O(r2_data[1])
  );
  OBUF   r2_data_0_OBUF (
    .I(\RegFile/R_0_0_1654 ),
    .O(r2_data[0])
  );
  OBUF   flushPri_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(flushPri[2])
  );
  OBUF   flushPri_1_OBUF (
    .I(flush_OBUF_1994),
    .O(flushPri[1])
  );
  OBUF   flushPri_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(flushPri[0])
  );
  OBUF   M_doutb_31_OBUF (
    .I(M_doutb_31_OBUF_1069),
    .O(M_doutb[31])
  );
  OBUF   M_doutb_30_OBUF (
    .I(M_doutb_30_OBUF_1068),
    .O(M_doutb[30])
  );
  OBUF   M_doutb_29_OBUF (
    .I(M_doutb_29_OBUF_1066),
    .O(M_doutb[29])
  );
  OBUF   M_doutb_28_OBUF (
    .I(M_doutb_28_OBUF_1065),
    .O(M_doutb[28])
  );
  OBUF   M_doutb_27_OBUF (
    .I(M_doutb_27_OBUF_1064),
    .O(M_doutb[27])
  );
  OBUF   M_doutb_26_OBUF (
    .I(M_doutb_26_OBUF_1063),
    .O(M_doutb[26])
  );
  OBUF   M_doutb_25_OBUF (
    .I(M_doutb_25_OBUF_1062),
    .O(M_doutb[25])
  );
  OBUF   M_doutb_24_OBUF (
    .I(M_doutb_24_OBUF_1061),
    .O(M_doutb[24])
  );
  OBUF   M_doutb_23_OBUF (
    .I(M_doutb_23_OBUF_1060),
    .O(M_doutb[23])
  );
  OBUF   M_doutb_22_OBUF (
    .I(M_doutb_22_OBUF_1059),
    .O(M_doutb[22])
  );
  OBUF   M_doutb_21_OBUF (
    .I(M_doutb_21_OBUF_1058),
    .O(M_doutb[21])
  );
  OBUF   M_doutb_20_OBUF (
    .I(M_doutb_20_OBUF_1057),
    .O(M_doutb[20])
  );
  OBUF   M_doutb_19_OBUF (
    .I(M_doutb_19_OBUF_1055),
    .O(M_doutb[19])
  );
  OBUF   M_doutb_18_OBUF (
    .I(M_doutb_18_OBUF_1054),
    .O(M_doutb[18])
  );
  OBUF   M_doutb_17_OBUF (
    .I(M_doutb_17_OBUF_1053),
    .O(M_doutb[17])
  );
  OBUF   M_doutb_16_OBUF (
    .I(M_doutb_16_OBUF_1052),
    .O(M_doutb[16])
  );
  OBUF   M_doutb_15_OBUF (
    .I(M_doutb_15_OBUF_1051),
    .O(M_doutb[15])
  );
  OBUF   M_doutb_14_OBUF (
    .I(M_doutb_14_OBUF_1050),
    .O(M_doutb[14])
  );
  OBUF   M_doutb_13_OBUF (
    .I(M_doutb_13_OBUF_1049),
    .O(M_doutb[13])
  );
  OBUF   M_doutb_12_OBUF (
    .I(M_doutb_12_OBUF_1048),
    .O(M_doutb[12])
  );
  OBUF   M_doutb_11_OBUF (
    .I(M_doutb_11_OBUF_1047),
    .O(M_doutb[11])
  );
  OBUF   M_doutb_10_OBUF (
    .I(M_doutb_10_OBUF_1046),
    .O(M_doutb[10])
  );
  OBUF   M_doutb_9_OBUF (
    .I(M_doutb_9_OBUF_1076),
    .O(M_doutb[9])
  );
  OBUF   M_doutb_8_OBUF (
    .I(M_doutb_8_OBUF_1075),
    .O(M_doutb[8])
  );
  OBUF   M_doutb_7_OBUF (
    .I(M_doutb_7_OBUF_1074),
    .O(M_doutb[7])
  );
  OBUF   M_doutb_6_OBUF (
    .I(M_doutb_6_OBUF_1073),
    .O(M_doutb[6])
  );
  OBUF   M_doutb_5_OBUF (
    .I(M_doutb_5_OBUF_1072),
    .O(M_doutb[5])
  );
  OBUF   M_doutb_4_OBUF (
    .I(M_doutb_4_OBUF_1071),
    .O(M_doutb[4])
  );
  OBUF   M_doutb_3_OBUF (
    .I(M_doutb_3_OBUF_1070),
    .O(M_doutb[3])
  );
  OBUF   M_doutb_2_OBUF (
    .I(M_doutb_2_OBUF_1067),
    .O(M_doutb[2])
  );
  OBUF   M_doutb_1_OBUF (
    .I(M_doutb_1_OBUF_1056),
    .O(M_doutb[1])
  );
  OBUF   M_doutb_0_OBUF (
    .I(M_doutb_0_OBUF_1045),
    .O(M_doutb[0])
  );
  OBUF   r2_addr_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r2_addr[4])
  );
  OBUF   r2_addr_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r2_addr[3])
  );
  OBUF   r2_addr_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r2_addr[2])
  );
  OBUF   r2_addr_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r2_addr[1])
  );
  OBUF   r2_addr_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(r2_addr[0])
  );
  OBUF   opcode_5_OBUF (
    .I(BranchSig_OBUF_64),
    .O(opcode[5])
  );
  OBUF   opcode_4_OBUF (
    .I(BranchSig_OBUF_64),
    .O(opcode[4])
  );
  OBUF   opcode_3_OBUF (
    .I(BranchSig_OBUF_64),
    .O(opcode[3])
  );
  OBUF   opcode_2_OBUF (
    .I(BranchSig_OBUF_64),
    .O(opcode[2])
  );
  OBUF   opcode_1_OBUF (
    .I(BranchSig_OBUF_64),
    .O(opcode[1])
  );
  OBUF   opcode_0_OBUF (
    .I(BranchSig_OBUF_64),
    .O(opcode[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt  (
    .I0(\PCReg/PC [30]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<30>_rt_1598 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt  (
    .I0(\PCReg/PC [29]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<29>_rt_1595 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt  (
    .I0(\PCReg/PC [28]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<28>_rt_1593 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt  (
    .I0(\PCReg/PC [27]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<27>_rt_1591 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt  (
    .I0(\PCReg/PC [26]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<26>_rt_1589 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt  (
    .I0(\PCReg/PC [25]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<25>_rt_1587 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt  (
    .I0(\PCReg/PC [24]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<24>_rt_1585 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt  (
    .I0(\PCReg/PC [23]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<23>_rt_1583 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt  (
    .I0(\PCReg/PC [22]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<22>_rt_1581 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt  (
    .I0(\PCReg/PC [21]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<21>_rt_1579 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt  (
    .I0(\PCReg/PC [20]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<20>_rt_1577 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt  (
    .I0(\PCReg/PC [19]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<19>_rt_1573 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt  (
    .I0(\PCReg/PC [18]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<18>_rt_1571 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt  (
    .I0(\PCReg/PC [17]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<17>_rt_1569 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt  (
    .I0(\PCReg/PC [16]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<16>_rt_1567 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt  (
    .I0(\PCReg/PC [15]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<15>_rt_1565 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt  (
    .I0(\PCReg/PC [14]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<14>_rt_1563 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt  (
    .I0(\PCReg/PC [13]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<13>_rt_1561 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt  (
    .I0(\PCReg/PC [12]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<12>_rt_1559 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt  (
    .I0(\PCReg/PC [11]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<11>_rt_1557 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt  (
    .I0(\PCReg/PC [10]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<10>_rt_1555 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt  (
    .I0(\PCReg/PC [9]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<9>_rt_1612 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt  (
    .I0(\PCReg/PC [8]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<8>_rt_1610 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt  (
    .I0(\PCReg/PC [7]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<7>_rt_1608 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt  (
    .I0(\PCReg/PC [6]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<6>_rt_1606 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt  (
    .I0(\PCReg/PC [5]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<5>_rt_1604 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt  (
    .I0(\PCReg/PC [4]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<4>_rt_1602 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt  (
    .I0(\PCReg/PC [3]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<3>_rt_1600 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<1>_rt  (
    .I0(\PCReg/PC [1]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<1>_rt_1575 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_cy<0>_rt  (
    .I0(\PCReg/PC [0]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_cy<0>_rt_1553 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt  (
    .I0(\PCReg/PC [31]),
    .O(\PC_Generator/Madd_next_PC_addsub0000_xor<31>_rt_1614 )
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  \CONTROL/stateofTHREE<2>18  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(N199),
    .I2(\CONTROL/stateofTHREE<2>15_795 ),
    .I3(\CONTROL/N109 ),
    .O(\CONTROL/stateofTHREE[2] )
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  \CONTROL/stateofALU<3>36  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/stateofALU<3>23_779 ),
    .I2(N201),
    .I3(\CONTROL/N108 ),
    .O(\CONTROL/stateofALU [3])
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  \CONTROL/stateofALU<0>36  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/stateofALU<0>23_770 ),
    .I2(N203),
    .I3(\CONTROL/N108 ),
    .O(\CONTROL/stateofALU [0])
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  \CONTROL/stateofALU<1>36  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(\CONTROL/stateofALU<1>23_773 ),
    .I2(N205),
    .I3(\CONTROL/N108 ),
    .O(\CONTROL/stateofALU [1])
  );
  LUT4 #(
    .INIT ( 16'hFEFC ))
  \CONTROL/stateofALU<4>36  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/stateofALU<4>23_782 ),
    .I2(N207),
    .I3(\CONTROL/N108 ),
    .O(\CONTROL/stateofALU [4])
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \CONTROL/PC_En_Conflictstate<0>46  (
    .I0(\CONTROL/PC_En_Conflict2_719 ),
    .I1(\CONTROL/PC_En_Conflictstate<0>20_723 ),
    .I2(\CONTROL/PC_En_Conflictstate<0>2_722 ),
    .I3(\CONTROL/FSM2/state [0]),
    .O(\CONTROL/PC_En_Conflictstate<0>46_725 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CONTROL/PC_En_Conflictstate<1>52  (
    .I0(\CONTROL/PC_En_Conflict2_719 ),
    .I1(\CONTROL/PC_En_Conflictstate<1>31_728 ),
    .I2(\CONTROL/FSM2/state [1]),
    .O(\CONTROL/PC_En_Conflictstate<1>52_729 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CONTROL/PC_En_Conflictstate<3>52  (
    .I0(\CONTROL/PC_En_Conflict2_719 ),
    .I1(\CONTROL/PC_En_Conflictstate<3>31_731 ),
    .I2(\CONTROL/FSM2/state [3]),
    .O(\CONTROL/PC_En_Conflictstate<3>52_732 )
  );
  LUT4 #(
    .INIT ( 16'h5F4C ))
  \CONTROL/ALU_SrcA69  (
    .I0(\CONTROL/SelectA5_cmp_eq0000 ),
    .I1(\CONTROL/ALU_SrcA30_75 ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(N211),
    .O(ALU_SrcA_OBUF_54)
  );
  LUT4 #(
    .INIT ( 16'hEDFF ))
  \CONTROL/DMemVisit102_SW0  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state_3_1_273 ),
    .I2(\CONTROL/FSM2/state_1_1_270 ),
    .I3(\CONTROL/FSM2/state_0_1_268 ),
    .O(N213)
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \CONTROL/stateofTHREE<3>8  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(N219),
    .I2(\CONTROL/N109 ),
    .O(\CONTROL/stateofTHREE<3>8_797 )
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \CONTROL/stateofTHREE<0>8  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(N601),
    .I2(\CONTROL/N109 ),
    .O(\CONTROL/stateofTHREE<0>8_793 )
  );
  LUT3 #(
    .INIT ( 8'hEC ))
  \CONTROL/WaitForMem18  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(N223),
    .I2(\CONTROL/N109 ),
    .O(\CONTROL/WaitForMem18_754 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/PC_En_Conflictstate<1>3  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(N169),
    .I2(\CONTROL/FSM4/state [1]),
    .O(\CONTROL/PC_En_Conflictstate<1>3_727 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/PC_En_Conflictstate<0>2  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(N167),
    .I2(\CONTROL/FSM3/state [0]),
    .O(\CONTROL/PC_En_Conflictstate<0>2_722 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/PC_En_Conflictstate<3>3  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(N169),
    .I2(\CONTROL/FSM4/state [3]),
    .O(\CONTROL/PC_En_Conflictstate<3>3_730 )
  );
  LUT4 #(
    .INIT ( 16'h0007 ))
  \CONTROL/ack531  (
    .I0(\CONTROL/ack436 ),
    .I1(\CONTROL/N127 ),
    .I2(\CONTROL/ack2_756 ),
    .I3(\CONTROL/ack3_757 ),
    .O(\CONTROL/N262 )
  );
  LUT4 #(
    .INIT ( 16'h0302 ))
  \CONTROL/PC_En_Conflictstate<3>11  (
    .I0(N169),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(N230),
    .I3(\CONTROL/FSM4/state [2]),
    .O(\CONTROL/PC_En_Conflictstate<1>11 )
  );
  LUT4 #(
    .INIT ( 16'hF080 ))
  \CONTROL/SelectB1  (
    .I0(\CONTROL/stateofTHREE[2] ),
    .I1(\CONTROL/N269 ),
    .I2(N593),
    .I3(\CONTROL/SelectA2_cmp_eq0000_741 ),
    .O(SelectB_OBUF_1691)
  );
  LUT4 #(
    .INIT ( 16'hCC80 ))
  \CONTROL/SelectA1  (
    .I0(\CONTROL/stateofTHREE[2] ),
    .I1(\CONTROL/SelectA5_or0000_752 ),
    .I2(\CONTROL/N269 ),
    .I3(\CONTROL/SelectA2_cmp_eq0000_741 ),
    .O(SelectA_OBUF_1689)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>928  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>95_640 ),
    .I2(\CONTROL/I10_cy<4>94_639 ),
    .I3(N232),
    .O(WB_value_8_OBUF_1754)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>828  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>85_638 ),
    .I2(\CONTROL/I10_cy<4>84_637 ),
    .I3(N234),
    .O(WB_value_7_OBUF_1753)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>728  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>75_636 ),
    .I2(\CONTROL/I10_cy<4>74_635 ),
    .I3(N236),
    .O(WB_value_6_OBUF_1752)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>628  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>65_634 ),
    .I2(\CONTROL/I10_cy<4>64_633 ),
    .I3(N238),
    .O(WB_value_5_OBUF_1751)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>528  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>55_632 ),
    .I2(\CONTROL/I10_cy<4>54_631 ),
    .I3(N240),
    .O(WB_value_4_OBUF_1750)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>4328  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>435_628 ),
    .I2(\CONTROL/I10_cy<4>434_627 ),
    .I3(N242),
    .O(WB_value_31_OBUF_1748)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>4128  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>415_626 ),
    .I2(\CONTROL/I10_cy<4>414_625 ),
    .I3(N244),
    .O(WB_value_30_OBUF_1747)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>428  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>45_630 ),
    .I2(\CONTROL/I10_cy<4>44_629 ),
    .I3(N246),
    .O(WB_value_3_OBUF_1749)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>3928  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>395_624 ),
    .I2(\CONTROL/I10_cy<4>394_623 ),
    .I3(N248),
    .O(WB_value_29_OBUF_1745)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>3728  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>375_622 ),
    .I2(\CONTROL/I10_cy<4>374_621 ),
    .I3(N250),
    .O(WB_value_28_OBUF_1744)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>3528  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>355_620 ),
    .I2(\CONTROL/I10_cy<4>354_619 ),
    .I3(N252),
    .O(WB_value_27_OBUF_1743)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>3328  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>335_616 ),
    .I2(\CONTROL/I10_cy<4>334_615 ),
    .I3(N254),
    .O(WB_value_26_OBUF_1742)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>3128  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>315_614 ),
    .I2(\CONTROL/I10_cy<4>314_613 ),
    .I3(N256),
    .O(WB_value_25_OBUF_1741)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>328  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>35_618 ),
    .I2(\CONTROL/I10_cy<4>34_617 ),
    .I3(N258),
    .O(WB_value_2_OBUF_1746)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>2928  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>295_612 ),
    .I2(\CONTROL/I10_cy<4>294_611 ),
    .I3(N260),
    .O(WB_value_24_OBUF_1740)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>2728  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>275_610 ),
    .I2(\CONTROL/I10_cy<4>274_609 ),
    .I3(N262),
    .O(WB_value_23_OBUF_1739)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>2528  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>255_608 ),
    .I2(\CONTROL/I10_cy<4>254_607 ),
    .I3(N264),
    .O(WB_value_22_OBUF_1738)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>2328  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>235_604 ),
    .I2(\CONTROL/I10_cy<4>234_603 ),
    .I3(N266),
    .O(WB_value_21_OBUF_1737)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>2128  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>215_602 ),
    .I2(\CONTROL/I10_cy<4>214_601 ),
    .I3(N268),
    .O(WB_value_20_OBUF_1736)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>2028  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>205_600 ),
    .I2(\CONTROL/I10_cy<4>204_599 ),
    .I3(N270),
    .O(WB_value_19_OBUF_1734)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>228  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>25_606 ),
    .I2(\CONTROL/I10_cy<4>24_605 ),
    .I3(N272),
    .O(WB_value_1_OBUF_1735)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1928  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>195_598 ),
    .I2(\CONTROL/I10_cy<4>194_597 ),
    .I3(N274),
    .O(WB_value_18_OBUF_1733)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1828  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>185_596 ),
    .I2(\CONTROL/I10_cy<4>184_595 ),
    .I3(N276),
    .O(WB_value_17_OBUF_1732)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1728  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>175_594 ),
    .I2(\CONTROL/I10_cy<4>174_593 ),
    .I3(N278),
    .O(WB_value_16_OBUF_1731)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1628  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>165_592 ),
    .I2(\CONTROL/I10_cy<4>164_591 ),
    .I3(N280),
    .O(WB_value_15_OBUF_1730)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1528  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>155_590 ),
    .I2(\CONTROL/I10_cy<4>154_589 ),
    .I3(N282),
    .O(WB_value_14_OBUF_1729)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1428  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>145_587 ),
    .I2(\CONTROL/I10_cy<4>144_586 ),
    .I3(N284),
    .O(WB_value_13_OBUF_1728)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1328  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>135_584 ),
    .I2(\CONTROL/I10_cy<4>134_583 ),
    .I3(N286),
    .O(WB_value_12_OBUF_1727)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1228  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>125_582 ),
    .I2(\CONTROL/I10_cy<4>124_581 ),
    .I3(N288),
    .O(WB_value_11_OBUF_1726)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1128  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>115_580 ),
    .I2(\CONTROL/I10_cy<4>114_579 ),
    .I3(N290),
    .O(WB_value_10_OBUF_1725)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1028  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>105_578 ),
    .I2(\CONTROL/I10_cy<4>104_577 ),
    .I3(N292),
    .O(WB_value_9_OBUF_1755)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/I10_cy<4>1281  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>15_588 ),
    .I2(\CONTROL/I10_cy<4>14_585 ),
    .I3(N294),
    .O(WB_value_0_OBUF_1724)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/WaitForMem31  (
    .I0(\CONTROL/stateofTHREE[4] ),
    .I1(\CONTROL/stateofTHREE<3>8_797 ),
    .I2(\CONTROL/stateofTHREE<3>15_796 ),
    .I3(N296),
    .O(\CONTROL/N269 )
  );
  LUT4 #(
    .INIT ( 16'hEEEF ))
  \CONTROL/SelectA2_cmp_eq0000_SW1  (
    .I0(\CONTROL/stateofTHREE<4>15_799 ),
    .I1(N597),
    .I2(\CONTROL/stateofTHREE<3>15_796 ),
    .I3(\CONTROL/stateofTHREE<3>8_797 ),
    .O(N298)
  );
  LUT4 #(
    .INIT ( 16'hCCDF ))
  \CONTROL/ALU_SrcA69_SW0  (
    .I0(\CONTROL/stateofTHREE[2] ),
    .I1(\CONTROL/ALU_SrcA17_74 ),
    .I2(\CONTROL/N269 ),
    .I3(\CONTROL/SelectA2_cmp_eq0000_741 ),
    .O(N211)
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \CONTROL/stateofALU<2>36_SW0  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/stateofALU_cmp_eq0000 ),
    .I3(\CONTROL/N134 ),
    .O(N209)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/stateofTHREE<4>16  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/N109 ),
    .I2(N596),
    .I3(N217),
    .O(\CONTROL/stateofTHREE[4] )
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<1>_SW0  (
    .I0(\reg_out/r2_dout [1]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_1_OBUF_913),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N300)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<1>_SW1  (
    .I0(\reg_out/r2_dout [1]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_1_OBUF_913),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N301)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<1>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_1_OBUF_849),
    .I2(N300),
    .I3(N301),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<2>_SW0  (
    .I0(\reg_out/r2_dout [2]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_2_OBUF_924),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N303)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<2>_SW1  (
    .I0(\reg_out/r2_dout [2]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_2_OBUF_924),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N304)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<2>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_2_OBUF_860),
    .I2(N303),
    .I3(N304),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<3>_SW0  (
    .I0(\reg_out/r2_dout [3]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_3_OBUF_927),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N306)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<3>_SW1  (
    .I0(\reg_out/r2_dout [3]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_3_OBUF_927),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N307)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<3>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_3_OBUF_863),
    .I2(N306),
    .I3(N307),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<4>_SW0  (
    .I0(\reg_out/r2_dout [4]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_4_OBUF_928),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N309)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<4>_SW1  (
    .I0(\reg_out/r2_dout [4]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_4_OBUF_928),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N310)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<4>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_4_OBUF_864),
    .I2(N309),
    .I3(N310),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [4])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<5>_SW0  (
    .I0(\reg_out/r2_dout [5]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_5_OBUF_929),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N312)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<5>_SW1  (
    .I0(\reg_out/r2_dout [5]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_5_OBUF_929),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N313)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<5>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_5_OBUF_865),
    .I2(N312),
    .I3(N313),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<6>_SW0  (
    .I0(\reg_out/r2_dout [6]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_6_OBUF_930),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N315)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<6>_SW1  (
    .I0(\reg_out/r2_dout [6]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_6_OBUF_930),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N316)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<6>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_6_OBUF_866),
    .I2(N315),
    .I3(N316),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [6])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<7>_SW0  (
    .I0(\reg_out/r2_dout [7]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_7_OBUF_931),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N318)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<7>_SW1  (
    .I0(\reg_out/r2_dout [7]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_7_OBUF_931),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N319)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<7>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_7_OBUF_867),
    .I2(N318),
    .I3(N319),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<8>_SW0  (
    .I0(\reg_out/r2_dout [8]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_8_OBUF_932),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N321)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<8>_SW1  (
    .I0(\reg_out/r2_dout [8]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_8_OBUF_932),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N322)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<8>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_8_OBUF_868),
    .I2(N321),
    .I3(N322),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h3C66 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<9>_SW0  (
    .I0(\reg_out/r2_dout [9]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_9_OBUF_933),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N324)
  );
  LUT4 #(
    .INIT ( 16'h96CC ))
  \myALU/Maddsub_alu_out_addsub0000_lut<9>_SW1  (
    .I0(\reg_out/r2_dout [9]),
    .I1(ALUOp_0_OBUF_2),
    .I2(ForwardB_9_OBUF_933),
    .I3(\CONTROL/ALU_SrcB<0>39_79 ),
    .O(N325)
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<9>  (
    .I0(ALU_SrcA_OBUF_54),
    .I1(ForwardA_9_OBUF_869),
    .I2(N324),
    .I3(N325),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \ALU_OPA_MUX/alu_opa<10>1_SW1  (
    .I0(ALUOp_0_OBUF_2),
    .I1(\reg_out/r2_dout [10]),
    .O(N328)
  );
  LUT4 #(
    .INIT ( 16'h47B8 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<10>  (
    .I0(N328),
    .I1(ALU_SrcA_OBUF_54),
    .I2(N327),
    .I3(\ALU_OPB_MUX/Mmux_alu_opb_4_36 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \ALU_OPA_MUX/alu_opa<11>1_SW1  (
    .I0(ALUOp_0_OBUF_2),
    .I1(\reg_out/r2_dout [11]),
    .O(N331)
  );
  LUT4 #(
    .INIT ( 16'h47B8 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<11>  (
    .I0(N331),
    .I1(ALU_SrcA_OBUF_54),
    .I2(N330),
    .I3(\ALU_OPB_MUX/Mmux_alu_opb_41_37 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \ALU_OPA_MUX/alu_opa<12>1_SW1  (
    .I0(ALUOp_0_OBUF_2),
    .I1(\reg_out/r2_dout [12]),
    .O(N334)
  );
  LUT4 #(
    .INIT ( 16'h47B8 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<12>  (
    .I0(N334),
    .I1(ALU_SrcA_OBUF_54),
    .I2(N333),
    .I3(\ALU_OPB_MUX/Mmux_alu_opb_42_43 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/PCWrite2  (
    .I0(BranchSig_OBUF_64),
    .I1(N336),
    .I2(PC_En_Conflict_OBUF_1549),
    .O(PC_Src_1_OBUF_1650)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/PC_En_Conflictstate<4>2  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(N167),
    .I2(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/PC_En_Conflictstate<4>2_734 )
  );
  LUT4 #(
    .INIT ( 16'h5A3C ))
  \ALU_OPA_MUX/alu_opa<10>1_SW0  (
    .I0(\ALURESULT/alu_out [10]),
    .I1(M_doutb_10_OBUF_1046),
    .I2(ALUOp_0_OBUF_2),
    .I3(SelectA_OBUF_1689),
    .O(N327)
  );
  LUT4 #(
    .INIT ( 16'h5A3C ))
  \ALU_OPA_MUX/alu_opa<11>1_SW0  (
    .I0(\ALURESULT/alu_out [11]),
    .I1(M_doutb_11_OBUF_1047),
    .I2(ALUOp_0_OBUF_2),
    .I3(SelectA_OBUF_1689),
    .O(N330)
  );
  LUT4 #(
    .INIT ( 16'h5A3C ))
  \ALU_OPA_MUX/alu_opa<12>1_SW0  (
    .I0(\ALURESULT/alu_out [12]),
    .I1(M_doutb_12_OBUF_1048),
    .I2(ALUOp_0_OBUF_2),
    .I3(SelectA_OBUF_1689),
    .O(N333)
  );
  LUT4 #(
    .INIT ( 16'hFFE0 ))
  \CONTROL/SelectA2_cmp_eq0000_SW2  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/N109 ),
    .I3(N600),
    .O(N338)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/SelectA2_cmp_eq0000  (
    .I0(N221),
    .I1(N338),
    .I2(N298),
    .I3(N174),
    .O(\CONTROL/SelectA2_cmp_eq0000_741 )
  );
  LUT4 #(
    .INIT ( 16'hFF04 ))
  \CONTROL/WaitForMem131_SW0  (
    .I0(\CONTROL/FSM1/stage [0]),
    .I1(\CONTROL/FSM1/stage [2]),
    .I2(\CONTROL/FSM1/stage [1]),
    .I3(\CONTROL/FSM3/stage [0]),
    .O(N340)
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \CONTROL/WaitForMem131  (
    .I0(\CONTROL/FSM3/stage [2]),
    .I1(\CONTROL/FSM3/stage [1]),
    .I2(N340),
    .I3(N594),
    .O(\CONTROL/N155 )
  );
  LUT4 #(
    .INIT ( 16'hF7D5 ))
  \CONTROL/PC_Src<0>21_SW0  (
    .I0(PC_En_Conflict_OBUF_1549),
    .I1(\CONTROL/PC_En_Conflict1_716 ),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/PC_En_Conflictstate<0>46_725 ),
    .O(N225)
  );
  LUT4 #(
    .INIT ( 16'h9A99 ))
  \PC_Generator/Madd_next_PC_addsub0000_lut<2>  (
    .I0(\PCReg/PC [2]),
    .I1(PC_Src_0_OBUF_1649),
    .I2(N336),
    .I3(PC_En_Conflict_OBUF_1549),
    .O(\PC_Generator/Madd_next_PC_addsub0000_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ALU_SrcB<0>17_SW0  (
    .I0(\CONTROL/N99 ),
    .I1(\CONTROL/FSM3/ALU_SrcB [1]),
    .I2(\CONTROL/N54 ),
    .I3(\CONTROL/FSM2/ALU_SrcB [1]),
    .O(N342)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/ALU_SrcB<0>17  (
    .I0(\CONTROL/N106 ),
    .I1(\CONTROL/FSM5/ALU_SrcB [1]),
    .I2(\CONTROL/ALU_SrcB<0>15_77 ),
    .I3(N342),
    .O(\CONTROL/ALU_SrcB<0>17_78 )
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>916_SW0  (
    .I0(\CONTROL/FSM3/WB_value [8]),
    .I1(\CONTROL/FSM5/WB_value [8]),
    .I2(\CONTROL/N51 ),
    .I3(N579),
    .O(N232)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>816_SW0  (
    .I0(\CONTROL/FSM3/WB_value [7]),
    .I1(\CONTROL/FSM5/WB_value [7]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N234)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>716_SW0  (
    .I0(\CONTROL/FSM3/WB_value [6]),
    .I1(\CONTROL/FSM5/WB_value [6]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N236)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>616_SW0  (
    .I0(\CONTROL/FSM3/WB_value [5]),
    .I1(\CONTROL/FSM5/WB_value [5]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N238)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>516_SW0  (
    .I0(\CONTROL/FSM3/WB_value [4]),
    .I1(\CONTROL/FSM5/WB_value [4]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N240)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>4316_SW0  (
    .I0(\CONTROL/FSM3/WB_value [31]),
    .I1(\CONTROL/FSM5/WB_value [31]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N242)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>4116_SW0  (
    .I0(\CONTROL/FSM3/WB_value [30]),
    .I1(\CONTROL/FSM5/WB_value [30]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N244)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>4161_SW0  (
    .I0(\CONTROL/FSM3/WB_value [3]),
    .I1(\CONTROL/FSM5/WB_value [3]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N246)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>3916_SW0  (
    .I0(\CONTROL/FSM3/WB_value [29]),
    .I1(\CONTROL/FSM5/WB_value [29]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N248)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>3716_SW0  (
    .I0(\CONTROL/FSM3/WB_value [28]),
    .I1(\CONTROL/FSM5/WB_value [28]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N250)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>3516_SW0  (
    .I0(\CONTROL/FSM3/WB_value [27]),
    .I1(\CONTROL/FSM5/WB_value [27]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N252)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>3316_SW0  (
    .I0(\CONTROL/FSM3/WB_value [26]),
    .I1(\CONTROL/FSM5/WB_value [26]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N254)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>3116_SW0  (
    .I0(\CONTROL/FSM3/WB_value [25]),
    .I1(\CONTROL/FSM5/WB_value [25]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N256)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>3161_SW0  (
    .I0(\CONTROL/FSM3/WB_value [2]),
    .I1(\CONTROL/FSM5/WB_value [2]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N258)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2916_SW0  (
    .I0(\CONTROL/FSM3/WB_value [24]),
    .I1(\CONTROL/FSM5/WB_value [24]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N260)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2716_SW0  (
    .I0(\CONTROL/FSM3/WB_value [23]),
    .I1(\CONTROL/FSM5/WB_value [23]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N262)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2516_SW0  (
    .I0(\CONTROL/FSM3/WB_value [22]),
    .I1(\CONTROL/FSM5/WB_value [22]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N264)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2316_SW0  (
    .I0(\CONTROL/FSM3/WB_value [21]),
    .I1(\CONTROL/FSM5/WB_value [21]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N266)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2116_SW0  (
    .I0(\CONTROL/FSM3/WB_value [20]),
    .I1(\CONTROL/FSM5/WB_value [20]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N268)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2016_SW0  (
    .I0(\CONTROL/FSM3/WB_value [19]),
    .I1(\CONTROL/FSM5/WB_value [19]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N270)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>2161_SW0  (
    .I0(\CONTROL/FSM3/WB_value [1]),
    .I1(\CONTROL/FSM5/WB_value [1]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N272)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1916_SW0  (
    .I0(\CONTROL/FSM3/WB_value [18]),
    .I1(\CONTROL/FSM5/WB_value [18]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N274)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1816_SW0  (
    .I0(\CONTROL/FSM3/WB_value [17]),
    .I1(\CONTROL/FSM5/WB_value [17]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N276)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1716_SW0  (
    .I0(\CONTROL/FSM3/WB_value [16]),
    .I1(\CONTROL/FSM5/WB_value [16]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N278)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1616_SW0  (
    .I0(\CONTROL/FSM3/WB_value [15]),
    .I1(\CONTROL/FSM5/WB_value [15]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N280)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1516_SW0  (
    .I0(\CONTROL/FSM3/WB_value [14]),
    .I1(\CONTROL/FSM5/WB_value [14]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N282)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1416_SW0  (
    .I0(\CONTROL/FSM3/WB_value [13]),
    .I1(\CONTROL/FSM5/WB_value [13]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N284)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1316_SW0  (
    .I0(\CONTROL/FSM3/WB_value [12]),
    .I1(\CONTROL/FSM5/WB_value [12]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N286)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1216_SW0  (
    .I0(\CONTROL/FSM3/WB_value [11]),
    .I1(\CONTROL/FSM5/WB_value [11]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N288)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1116_SW0  (
    .I0(\CONTROL/FSM3/WB_value [10]),
    .I1(\CONTROL/FSM5/WB_value [10]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N290)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1016_SW0  (
    .I0(\CONTROL/FSM3/WB_value [9]),
    .I1(\CONTROL/FSM5/WB_value [9]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N292)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \CONTROL/I10_cy<4>1161_SW0  (
    .I0(\CONTROL/FSM3/WB_value [0]),
    .I1(\CONTROL/FSM5/WB_value [0]),
    .I2(\CONTROL/N51 ),
    .I3(\CONTROL/N132 ),
    .O(N294)
  );
  LUT4 #(
    .INIT ( 16'hFFD7 ))
  \CONTROL/DMemVisit102_SW1  (
    .I0(\CONTROL/FSM3/state_0_1_362 ),
    .I1(\CONTROL/FSM3/state_1_1_364 ),
    .I2(\CONTROL/FSM3/state_2_1_366 ),
    .I3(\CONTROL/FSM3/state_3_1_368 ),
    .O(N344)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/DMemVisit179_SW1  (
    .I0(\CONTROL/FSM4/state_1_1_470 ),
    .I1(\CONTROL/FSM4/state_3_1_474 ),
    .I2(\CONTROL/FSM4/state [0]),
    .I3(\CONTROL/FSM4/state_2_1_472 ),
    .O(N346)
  );
  LUT4 #(
    .INIT ( 16'h0537 ))
  \CONTROL/DMemVisit179  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(N215),
    .I3(N346),
    .O(\CONTROL/DMemVisit179_86 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/SelectA5_cmp_eq000089_SW0  (
    .I0(\CONTROL/SelectA5_cmp_eq000045_749 ),
    .I1(\CONTROL/stateofFOUR_cmp_eq0002 ),
    .I2(\CONTROL/SelectA5_cmp_eq000033_748 ),
    .I3(\CONTROL/stateofFOUR_cmp_eq0001 ),
    .O(N348)
  );
  LUT4 #(
    .INIT ( 16'h2227 ))
  \CONTROL/SelectA5_cmp_eq000089  (
    .I0(N587),
    .I1(N349),
    .I2(\CONTROL/stateofFOUR_cmp_eq0003 ),
    .I3(N348),
    .O(\CONTROL/SelectA5_cmp_eq000089_750 )
  );
  LUT4 #(
    .INIT ( 16'h111F ))
  \CONTROL/PC_En_Conflict11  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(N167),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(N169),
    .O(\CONTROL/PC_En_Conflict11_717 )
  );
  LUT4 #(
    .INIT ( 16'h2000 ))
  \CONTROL/MemtoReg45_SW0  (
    .I0(\CONTROL/FSM5/MemtoReg_493 ),
    .I1(\CONTROL/ack1_755 ),
    .I2(\CONTROL/N262 ),
    .I3(N605),
    .O(N351)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/MemtoReg45  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/MemtoReg_390 ),
    .I2(\CONTROL/MemtoReg23 ),
    .I3(N351),
    .O(MemtoReg_OBUF_1143)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/SelectA5_cmp_eq0000132_SW0  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM3/stage [0]),
    .I2(\CONTROL/FSM3/stage [2]),
    .I3(\CONTROL/FSM3/stage [1]),
    .O(N353)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/ALUOp_or000034  (
    .I0(\CONTROL/N106 ),
    .I1(\CONTROL/ALUOp_or00000_67 ),
    .I2(\CONTROL/ALUOp_or000030_70 ),
    .I3(N355),
    .O(ALUOp_0_OBUF_2)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/ALUOp_or00008_SW0  (
    .I0(\CONTROL/N105 ),
    .I1(\CONTROL/FSM4/ALUOp [0]),
    .I2(\CONTROL/ALUOp_or000013_68 ),
    .I3(\CONTROL/FSM4/ALUOp [1]),
    .O(N355)
  );
  MUXF5   \CONTROL/PCWrite2_SW0  (
    .I0(N359),
    .I1(N360),
    .S(\CONTROL/PC_En_Conflict1_716 ),
    .O(N336)
  );
  LUT4 #(
    .INIT ( 16'hBFFD ))
  \CONTROL/PCWrite2_SW0_F  (
    .I0(\CONTROL/PC_En_Conflictstate [4]),
    .I1(\CONTROL/PC_En_Conflictstate<1>52_729 ),
    .I2(\CONTROL/PC_En_Conflictstate<3>52_732 ),
    .I3(\CONTROL/PC_En_Conflictstate<0>46_725 ),
    .O(N359)
  );
  LUT4 #(
    .INIT ( 16'hBFFD ))
  \CONTROL/PCWrite2_SW0_G  (
    .I0(\CONTROL/PC_En_Conflictstate [4]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [0]),
    .O(N360)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM5/RegDst_mux000033  (
    .I0(\CONTROL/FSM5/RegDst_mux000022_497 ),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(\CONTROL/N319 ),
    .I3(\CONTROL/FSM5/next_state [3]),
    .O(\CONTROL/FSM5/RegDst_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM2/RegDst_mux000033  (
    .I0(\CONTROL/FSM2/RegDst_mux000022_197 ),
    .I1(\CONTROL/FSM2/next_state [2]),
    .I2(\CONTROL/N3211 ),
    .I3(\CONTROL/FSM2/next_state [3]),
    .O(\CONTROL/FSM2/RegDst_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFD90 ))
  \CONTROL/FSM5/next_state_mux0000<0>130_SW0  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(\CONTROL/FSM5/state [3]),
    .I2(\CONTROL/FSM5/state [0]),
    .I3(\CONTROL/ack5_761 ),
    .O(N361)
  );
  LUT4 #(
    .INIT ( 16'h1302 ))
  \CONTROL/FSM5/next_state_mux0000<0>130  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(N361),
    .I3(\CONTROL/FSM5/next_state_mux0000<0>95_545 ),
    .O(\CONTROL/FSM5/next_state_mux0000<0>130_544 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \CONTROL/RegDst23_SW0  (
    .I0(\CONTROL/ack2_756 ),
    .I1(\CONTROL/FSM2/RegDst_195 ),
    .I2(\CONTROL/FSM3/RegDst_293 ),
    .I3(\CONTROL/ack3_757 ),
    .O(N363)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ackstate<4>8_SW0  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(\CONTROL/N152 ),
    .I3(\CONTROL/FSM3/state [4]),
    .O(N365)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ackstate<3>8_SW0  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/state [3]),
    .I2(\CONTROL/N152 ),
    .I3(\CONTROL/FSM3/state [3]),
    .O(N367)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/ackstate<3>8  (
    .I0(\CONTROL/FSM2/state [3]),
    .I1(\CONTROL/N305 ),
    .I2(N367),
    .O(\CONTROL/ackstate<3>8_766 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ackstate<2>8_SW0  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/N152 ),
    .I3(\CONTROL/FSM3/state [2]),
    .O(N369)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/ackstate<2>8  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/N305 ),
    .I2(N369),
    .O(\CONTROL/ackstate<2>8_765 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ackstate<1>8_SW0  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/N152 ),
    .I3(\CONTROL/FSM3/state [1]),
    .O(N371)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/ackstate<1>8  (
    .I0(\CONTROL/FSM2/state [1]),
    .I1(\CONTROL/N305 ),
    .I2(N371),
    .O(\CONTROL/ackstate<1>8_764 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \CONTROL/ackstate<0>8_SW0  (
    .I0(\CONTROL/N133 ),
    .I1(\CONTROL/FSM4/state [0]),
    .I2(\CONTROL/N152 ),
    .I3(\CONTROL/FSM3/state [0]),
    .O(N373)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/ackstate<0>8  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/N305 ),
    .I2(N373),
    .O(\CONTROL/ackstate<0>8_763 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE56_SW0  (
    .I0(alu_result_21_OBUF_1963),
    .I1(alu_result_22_OBUF_1964),
    .I2(alu_result_28_OBUF_1970),
    .I3(alu_result_29_OBUF_1971),
    .O(N375)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE56  (
    .I0(alu_result_13_OBUF_1954),
    .I1(alu_result_14_OBUF_1955),
    .I2(alu_result_20_OBUF_1962),
    .I3(N375),
    .O(\myALU/ALU_POSITIVE56_2072 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \CONTROL/SelectA5_cmp_eq0000188_SW0  (
    .I0(N586),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/FSM2/state [3]),
    .O(N377)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \CONTROL/ALUOp_or000030_SW0  (
    .I0(\CONTROL/N54 ),
    .I1(\CONTROL/FSM2/ALUOp [0]),
    .I2(\CONTROL/FSM2/ALUOp [1]),
    .O(N379)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM2/next_state_mux0000<1>101_SW0  (
    .I0(\CONTROL/FSM2/next_state_mux0000<1>28_250 ),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [0]),
    .I3(\CONTROL/FSM2/state [2]),
    .O(N381)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM2/next_state_mux0000<1>101  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/FSM2/flush_en ),
    .I2(\CONTROL/FSM2/next_state_mux0000<1>75_251 ),
    .I3(N381),
    .O(\CONTROL/FSM2/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM1/next_state_mux0000<1>101_SW0  (
    .I0(\CONTROL/FSM1/next_state_mux0000<1>28_152 ),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/FSM1/state [2]),
    .O(N383)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM1/next_state_mux0000<1>101  (
    .I0(\CONTROL/FSM1/state [4]),
    .I1(\CONTROL/FSM1/flush_en ),
    .I2(\CONTROL/FSM1/next_state_mux0000<1>75_153 ),
    .I3(N383),
    .O(\CONTROL/FSM1/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>95  (
    .I0(\CONTROL/FSM4/WB_value [8]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>95_640 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>85  (
    .I0(\CONTROL/FSM4/WB_value [7]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>85_638 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>75  (
    .I0(\CONTROL/FSM4/WB_value [6]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>75_636 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>65  (
    .I0(\CONTROL/FSM4/WB_value [5]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>65_634 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>55  (
    .I0(\CONTROL/FSM4/WB_value [4]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>55_632 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>435  (
    .I0(\CONTROL/FSM4/WB_value [31]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>435_628 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>415  (
    .I0(\CONTROL/FSM4/WB_value [30]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>415_626 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>45  (
    .I0(\CONTROL/FSM4/WB_value [3]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>45_630 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>395  (
    .I0(\CONTROL/FSM4/WB_value [29]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>395_624 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>375  (
    .I0(\CONTROL/FSM4/WB_value [28]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>375_622 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>355  (
    .I0(\CONTROL/FSM4/WB_value [27]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>355_620 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>335  (
    .I0(\CONTROL/FSM4/WB_value [26]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>335_616 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>315  (
    .I0(\CONTROL/FSM4/WB_value [25]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>315_614 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>35  (
    .I0(\CONTROL/FSM4/WB_value [2]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>35_618 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>295  (
    .I0(\CONTROL/FSM4/WB_value [24]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>295_612 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>275  (
    .I0(\CONTROL/FSM4/WB_value [23]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>275_610 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>255  (
    .I0(\CONTROL/FSM4/WB_value [22]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>255_608 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>235  (
    .I0(\CONTROL/FSM4/WB_value [21]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>235_604 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>215  (
    .I0(\CONTROL/FSM4/WB_value [20]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>215_602 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>205  (
    .I0(\CONTROL/FSM4/WB_value [19]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>205_600 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>25  (
    .I0(\CONTROL/FSM4/WB_value [1]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>25_606 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>195  (
    .I0(\CONTROL/FSM4/WB_value [18]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>195_598 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>185  (
    .I0(\CONTROL/FSM4/WB_value [17]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>185_596 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>175  (
    .I0(\CONTROL/FSM4/WB_value [16]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>175_594 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>165  (
    .I0(\CONTROL/FSM4/WB_value [15]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>165_592 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>155  (
    .I0(\CONTROL/FSM4/WB_value [14]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>155_590 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>145  (
    .I0(\CONTROL/FSM4/WB_value [13]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>145_587 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>135  (
    .I0(\CONTROL/FSM4/WB_value [12]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>135_584 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>125  (
    .I0(\CONTROL/FSM4/WB_value [11]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>125_582 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>115  (
    .I0(\CONTROL/FSM4/WB_value [10]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>115_580 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>105  (
    .I0(\CONTROL/FSM4/WB_value [9]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>105_578 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<4>15  (
    .I0(\CONTROL/FSM4/WB_value [0]),
    .I1(\CONTROL/FSM4/fromWB_435 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .O(\CONTROL/I10_cy<4>15_588 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM5/bubble_en_inv_SW0  (
    .I0(\CONTROL/N269 ),
    .I1(\CONTROL/stateofTHREE[2] ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(\CONTROL/FSM5/stage [2]),
    .O(N128)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM4/bubble_en_inv_SW0  (
    .I0(\CONTROL/N269 ),
    .I1(\CONTROL/stateofTHREE[2] ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(\CONTROL/FSM4/stage [2]),
    .O(N130)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM3/bubble_en_inv_SW0  (
    .I0(\CONTROL/N269 ),
    .I1(\CONTROL/stateofTHREE[2] ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(\CONTROL/FSM3/stage [2]),
    .O(N132)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM2/bubble_en_inv_SW0  (
    .I0(\CONTROL/N269 ),
    .I1(\CONTROL/stateofTHREE[2] ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(\CONTROL/FSM2/stage [2]),
    .O(N134)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM1/bubble_en_inv_SW0  (
    .I0(\CONTROL/N269 ),
    .I1(\CONTROL/stateofTHREE[2] ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(\CONTROL/FSM1/stage [2]),
    .O(N136)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/PC_En_Start_SW0  (
    .I0(\CONTROL/N127 ),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(N582),
    .I3(\CONTROL/ack1_755 ),
    .O(N126)
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \CONTROL/FSM5/stage_not00011  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/N116 ),
    .I2(\CONTROL/FSM5/flush_en ),
    .I3(\CONTROL/FSM5/bubble_en_inv_533 ),
    .O(\CONTROL/FSM5/stage_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  \CONTROL/I10_cy<4>1131  (
    .I0(\CONTROL/FSM1/fromWB_136 ),
    .I1(\CONTROL/FSM2/fromWB_235 ),
    .I2(N584),
    .I3(\CONTROL/ack2_756 ),
    .O(\CONTROL/N153 )
  );
  LUT3 #(
    .INIT ( 8'h46 ))
  \CONTROL/FSM2/next_state_mux0000<1>28  (
    .I0(\CONTROL/FSM2/state [3]),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/FSM2/flush_en ),
    .O(\CONTROL/FSM2/next_state_mux0000<1>28_250 )
  );
  LUT3 #(
    .INIT ( 8'h46 ))
  \CONTROL/FSM1/next_state_mux0000<1>28  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(\CONTROL/FSM1/state [4]),
    .I2(\CONTROL/FSM1/flush_en ),
    .O(\CONTROL/FSM1/next_state_mux0000<1>28_152 )
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  \CONTROL/PCWrite1  (
    .I0(PC_En_Conflict_OBUF_1549),
    .I1(N336),
    .I2(PC_En_Start_OBUF_1551),
    .O(PCWrite_OBUF_1547)
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM3/next_state_mux0000<3>_SW1  (
    .I0(\CONTROL/FSM3/state [1]),
    .I1(\CONTROL/FSM3/state [3]),
    .I2(\CONTROL/FSM3/state [4]),
    .I3(\CONTROL/FSM3/state [0]),
    .O(N385)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM3/next_state_mux0000<3>  (
    .I0(N385),
    .I1(\CONTROL/FSM3/flush_en ),
    .I2(\CONTROL/FSM3/state [2]),
    .I3(\CONTROL/N63 ),
    .O(\CONTROL/FSM3/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM4/next_state_mux0000<3>_SW1  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM4/state [3]),
    .I2(\CONTROL/FSM4/state [4]),
    .I3(\CONTROL/FSM4/state [0]),
    .O(N387)
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM4/next_state_mux0000<3>  (
    .I0(N387),
    .I1(\CONTROL/FSM4/flush_en ),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(\CONTROL/N64 ),
    .O(\CONTROL/FSM4/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM2/next_state_mux0000<0>186_SW0  (
    .I0(flush_OBUF_1994),
    .I1(\CONTROL/FSM2/stage [1]),
    .I2(\CONTROL/FSM2/stage [2]),
    .I3(\CONTROL/FSM2/next_state_mux0000<0>73_248 ),
    .O(N389)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM2/next_state_mux0000<0>186  (
    .I0(N389),
    .I1(\CONTROL/FSM2/next_state_mux0000<0>135_245 ),
    .I2(\CONTROL/FSM2/state [2]),
    .I3(\CONTROL/FSM2/state [4]),
    .O(\CONTROL/FSM2/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM3/next_state_mux0000<0>189_SW0  (
    .I0(flush_OBUF_1994),
    .I1(\CONTROL/FSM3/stage [1]),
    .I2(\CONTROL/FSM3/stage [2]),
    .I3(\CONTROL/FSM3/next_state_mux0000<0>77_345 ),
    .O(N391)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM3/next_state_mux0000<0>189  (
    .I0(N391),
    .I1(\CONTROL/FSM3/next_state_mux0000<0>138_342 ),
    .I2(\CONTROL/FSM3/state [2]),
    .I3(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM3/next_state_mux0000<4>73_SW0  (
    .I0(\CONTROL/N4 ),
    .I1(\CONTROL/FSM3/stage [1]),
    .I2(flush_OBUF_1994),
    .I3(\CONTROL/FSM3/stage [2]),
    .O(N393)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM3/next_state_mux0000<4>73  (
    .I0(\CONTROL/ack3_757 ),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(\CONTROL/FSM3/next_state_mux0000<4>50_351 ),
    .I3(N393),
    .O(\CONTROL/FSM3/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM2/next_state_mux0000<4>73_SW0  (
    .I0(\CONTROL/N5 ),
    .I1(\CONTROL/FSM2/stage [1]),
    .I2(flush_OBUF_1994),
    .I3(\CONTROL/FSM2/stage [2]),
    .O(N395)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM2/next_state_mux0000<4>73  (
    .I0(\CONTROL/ack2_756 ),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/FSM2/next_state_mux0000<4>50_257 ),
    .I3(N395),
    .O(\CONTROL/FSM2/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM5/next_state_mux0000<4>73_SW0  (
    .I0(\CONTROL/N2 ),
    .I1(\CONTROL/FSM5/stage [1]),
    .I2(flush_OBUF_1994),
    .I3(\CONTROL/FSM5/stage [2]),
    .O(N397)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM5/next_state_mux0000<4>73  (
    .I0(\CONTROL/ack5_761 ),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(\CONTROL/FSM5/next_state_mux0000<4>50_556 ),
    .I3(N397),
    .O(\CONTROL/FSM5/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h2232 ))
  \CONTROL/FSM2/next_state_mux0000<3>85_SW0  (
    .I0(\CONTROL/N5 ),
    .I1(\CONTROL/FSM2/next_state_mux0000<3>48_255 ),
    .I2(\CONTROL/N127 ),
    .I3(N144),
    .O(N399)
  );
  LUT4 #(
    .INIT ( 16'h3237 ))
  \CONTROL/FSM2/next_state_mux0000<3>85  (
    .I0(\CONTROL/FSM2/flush_en ),
    .I1(\CONTROL/N5 ),
    .I2(\CONTROL/FSM2/state [4]),
    .I3(N399),
    .O(\CONTROL/FSM2/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h2232 ))
  \CONTROL/FSM2/next_state_mux0000<2>117_SW0  (
    .I0(\CONTROL/N5 ),
    .I1(\CONTROL/FSM2/next_state_mux0000<2>76_253 ),
    .I2(\CONTROL/N127 ),
    .I3(N144),
    .O(N401)
  );
  LUT4 #(
    .INIT ( 16'h3237 ))
  \CONTROL/FSM2/next_state_mux0000<2>117  (
    .I0(\CONTROL/FSM2/flush_en ),
    .I1(\CONTROL/N5 ),
    .I2(\CONTROL/FSM2/state [4]),
    .I3(N401),
    .O(\CONTROL/FSM2/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM1/next_state_mux0000<0>189_SW0  (
    .I0(flush_OBUF_1994),
    .I1(\CONTROL/FSM1/stage [1]),
    .I2(\CONTROL/FSM1/stage [2]),
    .I3(\CONTROL/FSM1/next_state_mux0000<0>77_150 ),
    .O(N403)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM1/next_state_mux0000<0>189  (
    .I0(N403),
    .I1(\CONTROL/FSM1/next_state_mux0000<0>138_147 ),
    .I2(\CONTROL/FSM1/state [2]),
    .I3(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/FSM1/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM4/next_state_mux0000<0>189_SW0  (
    .I0(flush_OBUF_1994),
    .I1(\CONTROL/FSM4/stage [1]),
    .I2(\CONTROL/FSM4/stage [2]),
    .I3(\CONTROL/FSM4/next_state_mux0000<0>77_449 ),
    .O(N405)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \CONTROL/FSM4/next_state_mux0000<0>189  (
    .I0(N405),
    .I1(\CONTROL/FSM4/next_state_mux0000<0>138_445 ),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM1/next_state_mux0000<4>73_SW0  (
    .I0(\CONTROL/N6 ),
    .I1(\CONTROL/FSM1/stage [1]),
    .I2(flush_OBUF_1994),
    .I3(\CONTROL/FSM1/stage [2]),
    .O(N407)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM1/next_state_mux0000<4>73  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/state [4]),
    .I2(\CONTROL/FSM1/next_state_mux0000<4>50_159 ),
    .I3(N407),
    .O(\CONTROL/FSM1/next_state_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \CONTROL/FSM4/next_state_mux0000<4>72_SW0  (
    .I0(\CONTROL/N3 ),
    .I1(\CONTROL/FSM4/stage [1]),
    .I2(flush_OBUF_1994),
    .I3(\CONTROL/FSM4/stage [2]),
    .O(N409)
  );
  LUT4 #(
    .INIT ( 16'h10FF ))
  \CONTROL/FSM4/next_state_mux0000<4>72  (
    .I0(\CONTROL/ack4 ),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(\CONTROL/FSM4/next_state_mux0000<4>49_458 ),
    .I3(N409),
    .O(\CONTROL/FSM4/next_state_mux0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hBD ))
  \CONTROL/FSM5/RegDst_mux000022_SW0  (
    .I0(\CONTROL/FSM5/next_state [2]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .O(N415)
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \CONTROL/FSM5/RegDst_mux000022  (
    .I0(\CONTROL/FSM5/next_state [0]),
    .I1(\CONTROL/FSM5/RegDst_495 ),
    .I2(\CONTROL/FSM5/next_state [4]),
    .I3(N415),
    .O(\CONTROL/FSM5/RegDst_mux000022_497 )
  );
  LUT3 #(
    .INIT ( 8'hBD ))
  \CONTROL/FSM2/RegDst_mux000022_SW0  (
    .I0(\CONTROL/FSM2/next_state [2]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .O(N417)
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \CONTROL/FSM2/RegDst_mux000022  (
    .I0(\CONTROL/FSM2/next_state [0]),
    .I1(\CONTROL/FSM2/RegDst_195 ),
    .I2(\CONTROL/FSM2/next_state [4]),
    .I3(N417),
    .O(\CONTROL/FSM2/RegDst_mux000022_197 )
  );
  LUT3 #(
    .INIT ( 8'hBD ))
  \CONTROL/FSM4/RegDst_mux000022_SW0  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/FSM4/next_state [3]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .O(N419)
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \CONTROL/FSM5/ALUOp_mux0000<1>38  (
    .I0(\CONTROL/FSM5/ALUOp [0]),
    .I1(\CONTROL/FSM5/ALUOp_mux0000<1>29_487 ),
    .I2(N421),
    .I3(\CONTROL/FSM5/next_state [1]),
    .O(\CONTROL/FSM5/ALUOp_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \CONTROL/FSM2/ALUOp_mux0000<1>38  (
    .I0(\CONTROL/FSM2/ALUOp [0]),
    .I1(\CONTROL/FSM2/ALUOp_mux0000<1>29_187 ),
    .I2(N423),
    .I3(\CONTROL/FSM2/next_state [1]),
    .O(\CONTROL/FSM2/ALUOp_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFB8F ))
  \CONTROL/FSM4/next_state_mux0000<1>39_SW0  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/FSM4/state [0]),
    .I3(\CONTROL/FSM4/state [1]),
    .O(N425)
  );
  LUT4 #(
    .INIT ( 16'hFB8F ))
  \CONTROL/FSM3/next_state_mux0000<1>39_SW0  (
    .I0(\CONTROL/FSM3/state [3]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/FSM3/state [0]),
    .I3(\CONTROL/FSM3/state [1]),
    .O(N427)
  );
  LUT4 #(
    .INIT ( 16'hFBEF ))
  \CONTROL/FSM4/MemtoReg_mux0000_SW1  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [0]),
    .I2(\CONTROL/FSM4/next_state [3]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hFD8D ))
  \CONTROL/FSM3/ALU_SrcB_or0002_SW0  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/N121 ),
    .I2(\CONTROL/FSM3/next_state [3]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N47)
  );
  LUT4 #(
    .INIT ( 16'hFFB9 ))
  \CONTROL/FSM5/ALUOp_mux0000<1>29  (
    .I0(\CONTROL/FSM5/next_state [1]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/N1511 ),
    .O(\CONTROL/FSM5/ALUOp_mux0000<1>29_487 )
  );
  LUT4 #(
    .INIT ( 16'hFFB9 ))
  \CONTROL/FSM2/ALUOp_mux0000<1>29  (
    .I0(\CONTROL/FSM2/next_state [1]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/N1451 ),
    .O(\CONTROL/FSM2/ALUOp_mux0000<1>29_187 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/MemtoReg51  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/N127 ),
    .I2(N144),
    .I3(\CONTROL/ack1_755 ),
    .O(\CONTROL/N305 )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \CONTROL/FSM3/next_state_mux0000<1>65  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(N427),
    .I2(\CONTROL/FSM3/flush_en ),
    .I3(\CONTROL/N63 ),
    .O(\CONTROL/FSM3/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \CONTROL/FSM4/next_state_mux0000<1>65  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(N425),
    .I2(\CONTROL/FSM4/flush_en ),
    .I3(\CONTROL/N64 ),
    .O(\CONTROL/FSM4/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hFB8F ))
  \CONTROL/FSM5/next_state_mux0000<1>49_SW1  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [2]),
    .I2(\CONTROL/FSM5/state [0]),
    .I3(\CONTROL/FSM5/state [1]),
    .O(N443)
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM1/next_state_mux0000<0>53  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/FSM1/state [4]),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/FSM1/state [3]),
    .O(\CONTROL/FSM1/next_state_mux0000<0>53_149 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM3/next_state_mux0000<0>53  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/FSM3/state [4]),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(\CONTROL/FSM3/next_state_mux0000<0>53_344 )
  );
  LUT4 #(
    .INIT ( 16'hFFB8 ))
  \CONTROL/RegWrite45  (
    .I0(\CONTROL/FSM1/RegWrite_99 ),
    .I1(\CONTROL/ack1_755 ),
    .I2(N445),
    .I3(\CONTROL/RegWrite30_740 ),
    .O(\RegFile/R_0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \CONTROL/ackstate<3>22_SW0  (
    .I0(\CONTROL/N262 ),
    .I1(\CONTROL/ack5_761 ),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM5/state [3]),
    .O(N447)
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \CONTROL/ackstate<3>22  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/ackstate<3>8_766 ),
    .I3(N447),
    .O(ackstate_3_OBUF_1766)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \CONTROL/ackstate<2>22_SW0  (
    .I0(\CONTROL/N262 ),
    .I1(\CONTROL/ack5_761 ),
    .I2(\CONTROL/FSM1/state [2]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(N449)
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \CONTROL/ackstate<2>22  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/state [2]),
    .I2(\CONTROL/ackstate<2>8_765 ),
    .I3(N449),
    .O(ackstate_2_OBUF_1765)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \CONTROL/ackstate<1>22_SW0  (
    .I0(\CONTROL/N262 ),
    .I1(\CONTROL/ack5_761 ),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/FSM5/state [1]),
    .O(N451)
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \CONTROL/ackstate<1>22  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/ackstate<1>8_764 ),
    .I3(N451),
    .O(ackstate_1_OBUF_1764)
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \CONTROL/ackstate<0>22_SW0  (
    .I0(\CONTROL/N262 ),
    .I1(\CONTROL/ack5_761 ),
    .I2(\CONTROL/FSM1/state [0]),
    .I3(\CONTROL/FSM5/state [0]),
    .O(N453)
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \CONTROL/ackstate<0>22  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/ackstate<0>8_763 ),
    .I3(N453),
    .O(ackstate_0_OBUF_1763)
  );
  LUT3 #(
    .INIT ( 8'hBD ))
  \CONTROL/FSM5/ALU_SrcB_mux0000<0>14_SW0  (
    .I0(\CONTROL/FSM5/next_state [1]),
    .I1(\CONTROL/FSM5/next_state [0]),
    .I2(\CONTROL/FSM5/next_state [3]),
    .O(N433)
  );
  LUT3 #(
    .INIT ( 8'hBD ))
  \CONTROL/FSM2/ALU_SrcB_mux0000<0>14_SW0  (
    .I0(\CONTROL/FSM2/next_state [1]),
    .I1(\CONTROL/FSM2/next_state [0]),
    .I2(\CONTROL/FSM2/next_state [3]),
    .O(N435)
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \CONTROL/RegDst45_SW0  (
    .I0(\CONTROL/FSM5/RegDst_495 ),
    .I1(\CONTROL/N262 ),
    .I2(\CONTROL/ack5_761 ),
    .I3(N363),
    .O(N455)
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \CONTROL/RegDst45  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/RegDst_97 ),
    .I2(\CONTROL/RegDst30_738 ),
    .I3(N455),
    .O(RegDst_OBUF_1653)
  );
  LUT4 #(
    .INIT ( 16'h0046 ))
  \CONTROL/FSM5/ALUOp_mux0000<1>38_SW0  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N421)
  );
  LUT4 #(
    .INIT ( 16'h0046 ))
  \CONTROL/FSM2/ALUOp_mux0000<1>38_SW0  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N423)
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \CONTROL/FSM3/ALU_SrcB_or0002_SW2  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/N121 ),
    .I2(\CONTROL/FSM3/next_state [3]),
    .I3(\CONTROL/FSM3/next_state [2]),
    .O(N457)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \CONTROL/FSM3/ALU_SrcB_or0002  (
    .I0(\CONTROL/FSM3/next_state [4]),
    .I1(\CONTROL/FSM3/next_state [0]),
    .I2(N47),
    .I3(N457),
    .O(\CONTROL/FSM3/ALU_SrcB_or0002_289 )
  );
  LUT4 #(
    .INIT ( 16'hBFFD ))
  \CONTROL/JmpOccur121_SW0  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [1]),
    .I3(\CONTROL/FSM5/next_state [0]),
    .O(N459)
  );
  LUT4 #(
    .INIT ( 16'hBFFD ))
  \CONTROL/JmpOccur97_SW0  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [3]),
    .I2(\CONTROL/FSM4/next_state [1]),
    .I3(\CONTROL/FSM4/next_state [0]),
    .O(N461)
  );
  LUT4 #(
    .INIT ( 16'hBFFD ))
  \CONTROL/JmpOccur162_SW0  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [1]),
    .I3(\CONTROL/FSM2/next_state [0]),
    .O(N463)
  );
  LUT4 #(
    .INIT ( 16'hFAC8 ))
  \CONTROL/JmpOccur184_SW0  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/FSM5/next_state [2]),
    .I2(N461),
    .I3(N459),
    .O(N465)
  );
  LUT4 #(
    .INIT ( 16'hDDDF ))
  \CONTROL/JmpOccur184  (
    .I0(N465),
    .I1(\CONTROL/JmpOccur67_644 ),
    .I2(\CONTROL/FSM2/next_state [2]),
    .I3(N463),
    .O(flush_OBUF_1994)
  );
  FDPE   \CONTROL/FSM1/state_0_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM1/state_0_1_170 )
  );
  FDPE   \CONTROL/FSM4/state_2_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state_2_1_472 )
  );
  FDPE   \CONTROL/FSM3/state_2_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [4]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state_2_1_366 )
  );
  FDCE   \CONTROL/FSM1/state_4_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM1/state_ClkEn_inv ),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(\CONTROL/FSM1/state_mux0000 [2]),
    .Q(\CONTROL/FSM1/state_4_1_175 )
  );
  FDPE   \CONTROL/FSM4/state_1_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state_1_1_470 )
  );
  FDPE   \CONTROL/FSM4/state_3_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM4/state_ClkEn_inv ),
    .D(\CONTROL/FSM4/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM4/state_3_1_474 )
  );
  FDPE   \CONTROL/FSM3/state_0_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state_0_1_362 )
  );
  FDPE   \CONTROL/FSM2/state_3_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state_3_1_273 )
  );
  FDPE   \CONTROL/FSM3/state_1_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state_1_1_364 )
  );
  FDPE   \CONTROL/FSM2/state_1_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [5]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state_1_1_270 )
  );
  FDPE   \CONTROL/FSM2/state_0_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM2/state_ClkEn_inv ),
    .D(\CONTROL/FSM2/state_mux0000 [6]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM2/state_0_1_268 )
  );
  FDPE   \CONTROL/FSM3/state_3_1  (
    .C(clk_BUFGP_1988),
    .CE(\CONTROL/FSM3/state_ClkEn_inv ),
    .D(\CONTROL/FSM3/state_mux0000 [3]),
    .PRE(\ALURESULT/rst_n_inv ),
    .Q(\CONTROL/FSM3/state_3_1_368 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_1988)
  );
  INV   \reg_out/rst_n_inv1_INV_0  (
    .I(rst_n_IBUF_2528),
    .O(\ALURESULT/rst_n_inv )
  );
  INV   \CONTROL/Mcount_BrSigEn_eqn_01_INV_0  (
    .I(\CONTROL/BrSigEn [0]),
    .O(\CONTROL/Mcount_BrSigEn_eqn_0 )
  );
  MUXF5   \PC_Generator/Mmux_next_PC48  (
    .I0(N467),
    .I1(N468),
    .S(alu_result_31_OBUF_1974),
    .O(next_PC_31_OBUF_2210)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  \PC_Generator/Mmux_next_PC48_F  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PC_Generator/next_PC_addsub0000 [31]),
    .I2(\PCReg/PC [31]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N467)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \PC_Generator/Mmux_next_PC48_G  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PCReg/PC [31]),
    .I2(\PC_Generator/next_PC_addsub0000 [31]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N468)
  );
  MUXF5   \PC_Generator/Mmux_next_PC46  (
    .I0(N469),
    .I1(N470),
    .S(alu_result_30_OBUF_1973),
    .O(next_PC_30_OBUF_2209)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  \PC_Generator/Mmux_next_PC46_F  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PC_Generator/next_PC_addsub0000 [30]),
    .I2(\PCReg/PC [30]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N469)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \PC_Generator/Mmux_next_PC46_G  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PCReg/PC [30]),
    .I2(\PC_Generator/next_PC_addsub0000 [30]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N470)
  );
  MUXF5   \PC_Generator/Mmux_next_PC42  (
    .I0(N471),
    .I1(N472),
    .S(alu_result_29_OBUF_1971),
    .O(next_PC_29_OBUF_2207)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  \PC_Generator/Mmux_next_PC42_F  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PC_Generator/next_PC_addsub0000 [29]),
    .I2(\PCReg/PC [29]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N471)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \PC_Generator/Mmux_next_PC42_G  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PCReg/PC [29]),
    .I2(\PC_Generator/next_PC_addsub0000 [29]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N472)
  );
  MUXF5   \PC_Generator/Mmux_next_PC40  (
    .I0(N473),
    .I1(N474),
    .S(alu_result_28_OBUF_1970),
    .O(next_PC_28_OBUF_2206)
  );
  LUT4 #(
    .INIT ( 16'h44E4 ))
  \PC_Generator/Mmux_next_PC40_F  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PC_Generator/next_PC_addsub0000 [28]),
    .I2(\PCReg/PC [28]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N473)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \PC_Generator/Mmux_next_PC40_G  (
    .I0(PC_Src_1_OBUF_1650),
    .I1(\PCReg/PC [28]),
    .I2(\PC_Generator/next_PC_addsub0000 [28]),
    .I3(PC_Src_0_OBUF_1649),
    .O(N474)
  );
  MUXF5   \CONTROL/PC_Src<0>1  (
    .I0(N475),
    .I1(N476),
    .S(\CONTROL/PC_En_Conflict1_716 ),
    .O(PC_Src_0_OBUF_1649)
  );
  LUT4 #(
    .INIT ( 16'h0014 ))
  \CONTROL/PC_Src<0>1_F  (
    .I0(\CONTROL/PC_En_Conflictstate<1>52_729 ),
    .I1(\CONTROL/PC_En_Conflictstate<3>52_732 ),
    .I2(\CONTROL/PC_En_Conflictstate [4]),
    .I3(N225),
    .O(N475)
  );
  LUT4 #(
    .INIT ( 16'h0014 ))
  \CONTROL/PC_Src<0>1_G  (
    .I0(\CONTROL/FSM1/state [1]),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/PC_En_Conflictstate [4]),
    .I3(N225),
    .O(N476)
  );
  MUXF5   \CONTROL/FSM3/MemtoReg_mux000043  (
    .I0(N477),
    .I1(N478),
    .S(\CONTROL/N320 ),
    .O(\CONTROL/FSM3/MemtoReg_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \CONTROL/FSM3/MemtoReg_mux000043_F  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [4]),
    .I2(\CONTROL/FSM3/next_state [1]),
    .I3(\CONTROL/FSM3/MemtoReg_290 ),
    .O(N477)
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \CONTROL/FSM3/MemtoReg_mux000043_G  (
    .I0(\CONTROL/N214 ),
    .I1(\CONTROL/FSM3/MemtoReg_290 ),
    .I2(\CONTROL/FSM3/next_state [4]),
    .I3(\CONTROL/FSM3/MemtoReg_mux000012_292 ),
    .O(N478)
  );
  MUXF5   \CONTROL/FSM4/fromWB_not0001  (
    .I0(N479),
    .I1(N480),
    .S(\CONTROL/FSM4/next_state [0]),
    .O(\CONTROL/FSM4/fromWB_not0001_437 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/FSM4/fromWB_not0001_F  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [4]),
    .I3(\CONTROL/FSM4/next_state [3]),
    .O(N479)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \CONTROL/FSM4/fromWB_not0001_G  (
    .I0(\CONTROL/N3 ),
    .I1(\CONTROL/N266 ),
    .I2(\CONTROL/FSM4/RegWrite_398 ),
    .O(N480)
  );
  MUXF5   \CONTROL/PC_En_Conflictstate<4>25  (
    .I0(N481),
    .I1(N482),
    .S(\CONTROL/PC_En_Conflict4_721 ),
    .O(\CONTROL/PC_En_Conflictstate<4>25_735 )
  );
  LUT4 #(
    .INIT ( 16'h0302 ))
  \CONTROL/PC_En_Conflictstate<4>25_F  (
    .I0(\CONTROL/FSM3/state [2]),
    .I1(\CONTROL/N116 ),
    .I2(\CONTROL/FSM5/state [0]),
    .I3(N167),
    .O(N481)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \CONTROL/PC_En_Conflictstate<4>25_G  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(N167),
    .O(N482)
  );
  MUXF5   \CONTROL/FSM4/ALU_SrcB_or0002  (
    .I0(N483),
    .I1(N484),
    .S(\CONTROL/FSM4/next_state [3]),
    .O(\CONTROL/FSM4/ALU_SrcB_or0002_389 )
  );
  LUT4 #(
    .INIT ( 16'hFFB9 ))
  \CONTROL/FSM4/ALU_SrcB_or0002_F  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [2]),
    .I3(\CONTROL/FSM4/next_state [0]),
    .O(N483)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CONTROL/FSM4/ALU_SrcB_or0002_G  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [2]),
    .O(N484)
  );
  MUXF5   \CONTROL/FSM5/ALUOp_mux0000<0>11  (
    .I0(N485),
    .I1(N486),
    .S(\CONTROL/FSM5/next_state [2]),
    .O(\CONTROL/FSM5/ALUOp_mux0000<0>11_485 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM5/ALUOp_mux0000<0>11_F  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [0]),
    .I2(\CONTROL/FSM5/next_state [4]),
    .I3(\CONTROL/FSM5/next_state [1]),
    .O(N485)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM5/ALUOp_mux0000<0>11_G  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/N239 ),
    .I2(\CONTROL/FSM5/next_state [1]),
    .O(N486)
  );
  MUXF5   \CONTROL/FSM2/ALUOp_mux0000<0>11  (
    .I0(N487),
    .I1(N488),
    .S(\CONTROL/FSM2/next_state [2]),
    .O(\CONTROL/FSM2/ALUOp_mux0000<0>11_185 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \CONTROL/FSM2/ALUOp_mux0000<0>11_F  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [0]),
    .I2(\CONTROL/FSM2/next_state [4]),
    .I3(\CONTROL/FSM2/next_state [1]),
    .O(N487)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM2/ALUOp_mux0000<0>11_G  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/N240 ),
    .I2(\CONTROL/FSM2/next_state [1]),
    .O(N488)
  );
  MUXF5   \CONTROL/FSM4/ALU_SrcB_mux0000<0>21  (
    .I0(N489),
    .I1(N490),
    .S(\CONTROL/FSM4/next_state [3]),
    .O(\CONTROL/FSM4/ALU_SrcB_mux0000<0>21_388 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/FSM4/ALU_SrcB_mux0000<0>21_F  (
    .I0(\CONTROL/FSM4/next_state [2]),
    .I1(\CONTROL/FSM4/ALUOp_mux0000<0>9 ),
    .I2(\CONTROL/FSM4/next_state [1]),
    .O(N489)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/ALU_SrcB_mux0000<0>21_G  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [0]),
    .I2(\CONTROL/FSM4/next_state [2]),
    .I3(\CONTROL/FSM4/next_state [1]),
    .O(N490)
  );
  MUXF5   \CONTROL/FSM4/ALUOp_mux0000<0>17  (
    .I0(N491),
    .I1(N492),
    .S(\CONTROL/FSM4/next_state [3]),
    .O(\CONTROL/FSM4/ALUOp_mux0000<0>17_379 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \CONTROL/FSM4/ALUOp_mux0000<0>17_F  (
    .I0(\CONTROL/FSM4/next_state [1]),
    .I1(\CONTROL/FSM4/next_state [2]),
    .I2(\CONTROL/FSM4/ALUOp_mux0000<0>9 ),
    .O(N491)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/ALUOp_mux0000<0>17_G  (
    .I0(\CONTROL/FSM4/next_state [4]),
    .I1(\CONTROL/FSM4/next_state [0]),
    .I2(\CONTROL/FSM4/next_state [2]),
    .I3(\CONTROL/FSM4/next_state [1]),
    .O(N492)
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<3>30  (
    .I0(N493),
    .I1(N494),
    .S(\CONTROL/FSM5/state [2]),
    .O(\CONTROL/FSM5/next_state_mux0000<3>30_554 )
  );
  LUT4 #(
    .INIT ( 16'h0C04 ))
  \CONTROL/FSM5/next_state_mux0000<3>30_F  (
    .I0(\CONTROL/FSM5/state [1]),
    .I1(\CONTROL/FSM5/state [3]),
    .I2(\CONTROL/FSM5/state [4]),
    .I3(\CONTROL/FSM5/state [0]),
    .O(N493)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/FSM5/next_state_mux0000<3>30_G  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM5/state [0]),
    .I2(\CONTROL/FSM5/next_state_mux0000<3>20_553 ),
    .O(N494)
  );
  MUXF5   \CONTROL/FSM5/ALU_SrcB_or0002  (
    .I0(N495),
    .I1(N496),
    .S(\CONTROL/FSM5/next_state [1]),
    .O(\CONTROL/FSM5/ALU_SrcB_or0002_492 )
  );
  LUT4 #(
    .INIT ( 16'hFFB9 ))
  \CONTROL/FSM5/ALU_SrcB_or0002_F  (
    .I0(\CONTROL/FSM5/next_state [4]),
    .I1(\CONTROL/FSM5/next_state [3]),
    .I2(\CONTROL/FSM5/next_state [0]),
    .I3(\CONTROL/FSM5/next_state [2]),
    .O(N495)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CONTROL/FSM5/ALU_SrcB_or0002_G  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(\CONTROL/FSM5/next_state [0]),
    .I2(\CONTROL/FSM5/next_state [4]),
    .O(N496)
  );
  MUXF5   \CONTROL/FSM2/ALU_SrcB_or0002  (
    .I0(N497),
    .I1(N498),
    .S(\CONTROL/FSM2/next_state [1]),
    .O(\CONTROL/FSM2/ALU_SrcB_or0002_192 )
  );
  LUT4 #(
    .INIT ( 16'hFFB9 ))
  \CONTROL/FSM2/ALU_SrcB_or0002_F  (
    .I0(\CONTROL/FSM2/next_state [4]),
    .I1(\CONTROL/FSM2/next_state [3]),
    .I2(\CONTROL/FSM2/next_state [0]),
    .I3(\CONTROL/FSM2/next_state [2]),
    .O(N497)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CONTROL/FSM2/ALU_SrcB_or0002_G  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(\CONTROL/FSM2/next_state [0]),
    .I2(\CONTROL/FSM2/next_state [4]),
    .O(N498)
  );
  MUXF5   \CONTROL/FSM3/next_state_mux0000<2>117  (
    .I0(N499),
    .I1(N500),
    .S(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/FSM3/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAA2 ))
  \CONTROL/FSM3/next_state_mux0000<2>117_F  (
    .I0(\CONTROL/FSM3/next_state_mux0000<2>76_348 ),
    .I1(flush_OBUF_1994),
    .I2(\CONTROL/FSM3/stage [2]),
    .I3(\CONTROL/FSM3/stage [1]),
    .O(N499)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM3/next_state_mux0000<2>117_G  (
    .I0(\CONTROL/FSM3/state [1]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/FSM3/state [2]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(N500)
  );
  MUXF5   \CONTROL/FSM1/next_state_mux0000<3>85  (
    .I0(N501),
    .I1(N502),
    .S(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/FSM1/next_state_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hAAA2 ))
  \CONTROL/FSM1/next_state_mux0000<3>85_F  (
    .I0(\CONTROL/FSM1/next_state_mux0000<3>48_157 ),
    .I1(flush_OBUF_1994),
    .I2(\CONTROL/FSM1/stage [2]),
    .I3(\CONTROL/FSM1/stage [1]),
    .O(N501)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM1/next_state_mux0000<3>85_G  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [2]),
    .I3(\CONTROL/FSM1/state [1]),
    .O(N502)
  );
  MUXF5   \CONTROL/FSM1/next_state_mux0000<2>117  (
    .I0(N503),
    .I1(N504),
    .S(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/FSM1/next_state_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAA2 ))
  \CONTROL/FSM1/next_state_mux0000<2>117_F  (
    .I0(\CONTROL/FSM1/next_state_mux0000<2>76_155 ),
    .I1(flush_OBUF_1994),
    .I2(\CONTROL/FSM1/stage [2]),
    .I3(\CONTROL/FSM1/stage [1]),
    .O(N503)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM1/next_state_mux0000<2>117_G  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [2]),
    .I3(\CONTROL/FSM1/state [1]),
    .O(N504)
  );
  MUXF5   \CONTROL/FSM5/fromWB_not0001  (
    .I0(N505),
    .I1(N506),
    .S(\CONTROL/FSM5/next_state [4]),
    .O(\CONTROL/FSM5/fromWB_not0001_537 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/FSM5/fromWB_not0001_F  (
    .I0(\CONTROL/FSM5/next_state [0]),
    .I1(\CONTROL/FSM5/next_state [1]),
    .I2(\CONTROL/FSM5/next_state [2]),
    .I3(\CONTROL/FSM5/next_state [3]),
    .O(N505)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM5/fromWB_not0001_G  (
    .I0(\CONTROL/FSM5/next_state [3]),
    .I1(N98),
    .I2(\CONTROL/N2 ),
    .O(N506)
  );
  MUXF5   \CONTROL/FSM2/fromWB_not0001  (
    .I0(N507),
    .I1(N508),
    .S(\CONTROL/FSM2/next_state [4]),
    .O(\CONTROL/FSM2/fromWB_not0001_237 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/FSM2/fromWB_not0001_F  (
    .I0(\CONTROL/FSM2/next_state [0]),
    .I1(\CONTROL/FSM2/next_state [1]),
    .I2(\CONTROL/FSM2/next_state [2]),
    .I3(\CONTROL/FSM2/next_state [3]),
    .O(N507)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM2/fromWB_not0001_G  (
    .I0(\CONTROL/FSM2/next_state [3]),
    .I1(N100),
    .I2(\CONTROL/N5 ),
    .O(N508)
  );
  MUXF5   \CONTROL/SelectA5_or0000  (
    .I0(N509),
    .I1(N510),
    .S(\CONTROL/stateofALU [0]),
    .O(\CONTROL/SelectA5_or0000_752 )
  );
  LUT4 #(
    .INIT ( 16'h0216 ))
  \CONTROL/SelectA5_or0000_F  (
    .I0(\CONTROL/stateofALU [1]),
    .I1(\CONTROL/stateofALU [3]),
    .I2(\CONTROL/stateofALU [4]),
    .I3(\CONTROL/stateofALU [2]),
    .O(N509)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/SelectA5_or0000_G  (
    .I0(\CONTROL/stateofALU [1]),
    .I1(\CONTROL/stateofALU [3]),
    .I2(\CONTROL/stateofALU [2]),
    .I3(\CONTROL/stateofALU [4]),
    .O(N510)
  );
  MUXF5   \RegDatainMux/reg_realdatain<9>1  (
    .I0(N511),
    .I1(N512),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_9_OBUF_2526)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<9>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [9]),
    .I2(M_doutb_9_OBUF_1076),
    .O(N511)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<9>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>105_578 ),
    .I2(\CONTROL/I10_cy<4>104_577 ),
    .I3(N292),
    .O(N512)
  );
  MUXF5   \RegDatainMux/reg_realdatain<8>1  (
    .I0(N513),
    .I1(N514),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_8_OBUF_2525)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<8>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [8]),
    .I2(M_doutb_8_OBUF_1075),
    .O(N513)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<8>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>95_640 ),
    .I2(\CONTROL/I10_cy<4>94_639 ),
    .I3(N232),
    .O(N514)
  );
  MUXF5   \RegDatainMux/reg_realdatain<7>1  (
    .I0(N515),
    .I1(N516),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_7_OBUF_2524)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<7>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [7]),
    .I2(M_doutb_7_OBUF_1074),
    .O(N515)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<7>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>85_638 ),
    .I2(\CONTROL/I10_cy<4>84_637 ),
    .I3(N234),
    .O(N516)
  );
  MUXF5   \RegDatainMux/reg_realdatain<6>1  (
    .I0(N517),
    .I1(N518),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_6_OBUF_2523)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<6>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [6]),
    .I2(M_doutb_6_OBUF_1073),
    .O(N517)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<6>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>75_636 ),
    .I2(\CONTROL/I10_cy<4>74_635 ),
    .I3(N236),
    .O(N518)
  );
  MUXF5   \RegDatainMux/reg_realdatain<5>1  (
    .I0(N519),
    .I1(N520),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_5_OBUF_2522)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<5>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [5]),
    .I2(M_doutb_5_OBUF_1072),
    .O(N519)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<5>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>65_634 ),
    .I2(\CONTROL/I10_cy<4>64_633 ),
    .I3(N238),
    .O(N520)
  );
  MUXF5   \RegDatainMux/reg_realdatain<4>1  (
    .I0(N521),
    .I1(N522),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_4_OBUF_2521)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<4>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [4]),
    .I2(M_doutb_4_OBUF_1071),
    .O(N521)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<4>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>55_632 ),
    .I2(\CONTROL/I10_cy<4>54_631 ),
    .I3(N240),
    .O(N522)
  );
  MUXF5   \RegDatainMux/reg_realdatain<3>1  (
    .I0(N523),
    .I1(N524),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_3_OBUF_2520)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<3>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [3]),
    .I2(M_doutb_3_OBUF_1070),
    .O(N523)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<3>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>45_630 ),
    .I2(\CONTROL/I10_cy<4>44_629 ),
    .I3(N246),
    .O(N524)
  );
  MUXF5   \RegDatainMux/reg_realdatain<31>1  (
    .I0(N525),
    .I1(N526),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_31_OBUF_2519)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<31>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [31]),
    .I2(M_doutb_31_OBUF_1069),
    .O(N525)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<31>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>435_628 ),
    .I2(\CONTROL/I10_cy<4>434_627 ),
    .I3(N242),
    .O(N526)
  );
  MUXF5   \RegDatainMux/reg_realdatain<30>1  (
    .I0(N527),
    .I1(N528),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_30_OBUF_2518)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<30>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [30]),
    .I2(M_doutb_30_OBUF_1068),
    .O(N527)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<30>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>415_626 ),
    .I2(\CONTROL/I10_cy<4>414_625 ),
    .I3(N244),
    .O(N528)
  );
  MUXF5   \RegDatainMux/reg_realdatain<2>1  (
    .I0(N529),
    .I1(N530),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_2_OBUF_2517)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<2>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [2]),
    .I2(M_doutb_2_OBUF_1067),
    .O(N529)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<2>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>35_618 ),
    .I2(\CONTROL/I10_cy<4>34_617 ),
    .I3(N258),
    .O(N530)
  );
  MUXF5   \RegDatainMux/reg_realdatain<29>1  (
    .I0(N531),
    .I1(N532),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_29_OBUF_2516)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<29>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [29]),
    .I2(M_doutb_29_OBUF_1066),
    .O(N531)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<29>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>395_624 ),
    .I2(\CONTROL/I10_cy<4>394_623 ),
    .I3(N248),
    .O(N532)
  );
  MUXF5   \RegDatainMux/reg_realdatain<28>1  (
    .I0(N533),
    .I1(N534),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_28_OBUF_2515)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<28>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [28]),
    .I2(M_doutb_28_OBUF_1065),
    .O(N533)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<28>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>375_622 ),
    .I2(\CONTROL/I10_cy<4>374_621 ),
    .I3(N250),
    .O(N534)
  );
  MUXF5   \RegDatainMux/reg_realdatain<27>1  (
    .I0(N535),
    .I1(N536),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_27_OBUF_2514)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<27>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [27]),
    .I2(M_doutb_27_OBUF_1064),
    .O(N535)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<27>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>355_620 ),
    .I2(\CONTROL/I10_cy<4>354_619 ),
    .I3(N252),
    .O(N536)
  );
  MUXF5   \RegDatainMux/reg_realdatain<26>1  (
    .I0(N537),
    .I1(N538),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_26_OBUF_2513)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<26>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [26]),
    .I2(M_doutb_26_OBUF_1063),
    .O(N537)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<26>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>335_616 ),
    .I2(\CONTROL/I10_cy<4>334_615 ),
    .I3(N254),
    .O(N538)
  );
  MUXF5   \RegDatainMux/reg_realdatain<25>1  (
    .I0(N539),
    .I1(N540),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_25_OBUF_2512)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<25>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [25]),
    .I2(M_doutb_25_OBUF_1062),
    .O(N539)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<25>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>315_614 ),
    .I2(\CONTROL/I10_cy<4>314_613 ),
    .I3(N256),
    .O(N540)
  );
  MUXF5   \RegDatainMux/reg_realdatain<24>1  (
    .I0(N541),
    .I1(N542),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_24_OBUF_2511)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<24>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [24]),
    .I2(M_doutb_24_OBUF_1061),
    .O(N541)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<24>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>295_612 ),
    .I2(\CONTROL/I10_cy<4>294_611 ),
    .I3(N260),
    .O(N542)
  );
  MUXF5   \RegDatainMux/reg_realdatain<23>1  (
    .I0(N543),
    .I1(N544),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_23_OBUF_2510)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<23>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [23]),
    .I2(M_doutb_23_OBUF_1060),
    .O(N543)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<23>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>275_610 ),
    .I2(\CONTROL/I10_cy<4>274_609 ),
    .I3(N262),
    .O(N544)
  );
  MUXF5   \RegDatainMux/reg_realdatain<22>1  (
    .I0(N545),
    .I1(N546),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_22_OBUF_2509)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<22>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [22]),
    .I2(M_doutb_22_OBUF_1059),
    .O(N545)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<22>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>255_608 ),
    .I2(\CONTROL/I10_cy<4>254_607 ),
    .I3(N264),
    .O(N546)
  );
  MUXF5   \RegDatainMux/reg_realdatain<21>1  (
    .I0(N547),
    .I1(N548),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_21_OBUF_2508)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<21>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [21]),
    .I2(M_doutb_21_OBUF_1058),
    .O(N547)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<21>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>235_604 ),
    .I2(\CONTROL/I10_cy<4>234_603 ),
    .I3(N266),
    .O(N548)
  );
  MUXF5   \RegDatainMux/reg_realdatain<20>1  (
    .I0(N549),
    .I1(N550),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_20_OBUF_2507)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<20>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [20]),
    .I2(M_doutb_20_OBUF_1057),
    .O(N549)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<20>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>215_602 ),
    .I2(\CONTROL/I10_cy<4>214_601 ),
    .I3(N268),
    .O(N550)
  );
  MUXF5   \RegDatainMux/reg_realdatain<1>1  (
    .I0(N551),
    .I1(N552),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_1_OBUF_2506)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<1>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [1]),
    .I2(M_doutb_1_OBUF_1056),
    .O(N551)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<1>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>25_606 ),
    .I2(\CONTROL/I10_cy<4>24_605 ),
    .I3(N272),
    .O(N552)
  );
  MUXF5   \RegDatainMux/reg_realdatain<19>1  (
    .I0(N553),
    .I1(N554),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_19_OBUF_2505)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<19>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [19]),
    .I2(M_doutb_19_OBUF_1055),
    .O(N553)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<19>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>205_600 ),
    .I2(\CONTROL/I10_cy<4>204_599 ),
    .I3(N270),
    .O(N554)
  );
  MUXF5   \RegDatainMux/reg_realdatain<18>1  (
    .I0(N555),
    .I1(N556),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_18_OBUF_2504)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<18>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [18]),
    .I2(M_doutb_18_OBUF_1054),
    .O(N555)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<18>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>195_598 ),
    .I2(\CONTROL/I10_cy<4>194_597 ),
    .I3(N274),
    .O(N556)
  );
  MUXF5   \RegDatainMux/reg_realdatain<17>1  (
    .I0(N557),
    .I1(N558),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_17_OBUF_2503)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<17>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [17]),
    .I2(M_doutb_17_OBUF_1053),
    .O(N557)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<17>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>185_596 ),
    .I2(\CONTROL/I10_cy<4>184_595 ),
    .I3(N276),
    .O(N558)
  );
  MUXF5   \RegDatainMux/reg_realdatain<16>1  (
    .I0(N559),
    .I1(N560),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_16_OBUF_2502)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<16>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [16]),
    .I2(M_doutb_16_OBUF_1052),
    .O(N559)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<16>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>175_594 ),
    .I2(\CONTROL/I10_cy<4>174_593 ),
    .I3(N278),
    .O(N560)
  );
  MUXF5   \RegDatainMux/reg_realdatain<15>1  (
    .I0(N561),
    .I1(N562),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_15_OBUF_2501)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<15>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [15]),
    .I2(M_doutb_15_OBUF_1051),
    .O(N561)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<15>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>165_592 ),
    .I2(\CONTROL/I10_cy<4>164_591 ),
    .I3(N280),
    .O(N562)
  );
  MUXF5   \RegDatainMux/reg_realdatain<14>1  (
    .I0(N563),
    .I1(N564),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_14_OBUF_2500)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<14>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [14]),
    .I2(M_doutb_14_OBUF_1050),
    .O(N563)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<14>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>155_590 ),
    .I2(\CONTROL/I10_cy<4>154_589 ),
    .I3(N282),
    .O(N564)
  );
  MUXF5   \RegDatainMux/reg_realdatain<13>1  (
    .I0(N565),
    .I1(N566),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_13_OBUF_2499)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<13>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [13]),
    .I2(M_doutb_13_OBUF_1049),
    .O(N565)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<13>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>145_587 ),
    .I2(\CONTROL/I10_cy<4>144_586 ),
    .I3(N284),
    .O(N566)
  );
  MUXF5   \RegDatainMux/reg_realdatain<12>1  (
    .I0(N567),
    .I1(N568),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_12_OBUF_2498)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<12>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [12]),
    .I2(M_doutb_12_OBUF_1048),
    .O(N567)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<12>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>135_584 ),
    .I2(\CONTROL/I10_cy<4>134_583 ),
    .I3(N286),
    .O(N568)
  );
  MUXF5   \RegDatainMux/reg_realdatain<11>1  (
    .I0(N569),
    .I1(N570),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_11_OBUF_2497)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<11>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [11]),
    .I2(M_doutb_11_OBUF_1047),
    .O(N569)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<11>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>125_582 ),
    .I2(\CONTROL/I10_cy<4>124_581 ),
    .I3(N288),
    .O(N570)
  );
  MUXF5   \RegDatainMux/reg_realdatain<10>1  (
    .I0(N571),
    .I1(N572),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_10_OBUF_2496)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<10>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [10]),
    .I2(M_doutb_10_OBUF_1046),
    .O(N571)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<10>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>115_580 ),
    .I2(\CONTROL/I10_cy<4>114_579 ),
    .I3(N290),
    .O(N572)
  );
  MUXF5   \RegDatainMux/reg_realdatain<0>1  (
    .I0(N573),
    .I1(N574),
    .S(fromWB_OBUF_1996),
    .O(reg_realdatain_0_OBUF_2495)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_realdatain<0>1_F  (
    .I0(MemtoReg_OBUF_1143),
    .I1(\ALURESULT/alu_out [0]),
    .I2(M_doutb_0_OBUF_1045),
    .O(N573)
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \RegDatainMux/reg_realdatain<0>1_G  (
    .I0(\CONTROL/N153 ),
    .I1(\CONTROL/I10_cy<4>15_588 ),
    .I2(\CONTROL/I10_cy<4>14_585 ),
    .I3(N294),
    .O(N574)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \CONTROL/FSM1/fromWB_mux00001  (
    .I0(\CONTROL/FSM1/next_state [3]),
    .I1(\CONTROL/FSM1/next_state [1]),
    .I2(\CONTROL/FSM1/next_state [0]),
    .I3(\CONTROL/FSM1/next_state [2]),
    .O(\CONTROL/FSM1/fromWB_mux00001_138 )
  );
  MUXF5   \CONTROL/FSM1/fromWB_mux0000_f5  (
    .I0(\CONTROL/FSM1/fromWB_mux00001_138 ),
    .I1(alu_op_1_OBUF_1885),
    .S(\CONTROL/FSM1/next_state [4]),
    .O(\CONTROL/FSM1/fromWB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFBD9 ))
  \CONTROL/FSM4/ALUOp_mux0000<1>212  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(\CONTROL/FSM4/ALUOp_mux0000<1>211 )
  );
  MUXF5   \CONTROL/FSM4/ALUOp_mux0000<1>21_f5  (
    .I0(\CONTROL/FSM4/ALUOp_mux0000<1>211 ),
    .I1(alu_op_1_OBUF_1885),
    .S(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/ALUOp_mux0000<1>21 )
  );
  LUT4 #(
    .INIT ( 16'hFFD5 ))
  \CONTROL/FSM4/ALUOp_mux0000<1>301  (
    .I0(\CONTROL/FSM4/next_state [0]),
    .I1(\CONTROL/FSM4/ALUOp_mux0000<1>21 ),
    .I2(\CONTROL/FSM4/ALUOp [0]),
    .I3(\CONTROL/N138 ),
    .O(\CONTROL/FSM4/ALUOp_mux0000<1>30 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \CONTROL/FSM4/ALUOp_mux0000<1>302  (
    .I0(\CONTROL/FSM4/ALUOp [0]),
    .I1(\CONTROL/FSM4/ALUOp_mux0000<1>21 ),
    .I2(\CONTROL/N138 ),
    .O(\CONTROL/FSM4/ALUOp_mux0000<1>301_385 )
  );
  MUXF5   \CONTROL/FSM4/ALUOp_mux0000<1>30_f5  (
    .I0(\CONTROL/FSM4/ALUOp_mux0000<1>301_385 ),
    .I1(\CONTROL/FSM4/ALUOp_mux0000<1>30 ),
    .S(\CONTROL/N266 ),
    .O(\CONTROL/FSM4/ALUOp_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM5/ALU_SrcB_mux0000<0>221  (
    .I0(\CONTROL/FSM5/ALU_SrcB [1]),
    .I1(\CONTROL/FSM5/ALU_SrcB_or0002_492 ),
    .O(\CONTROL/FSM5/ALU_SrcB_mux0000<0>22 )
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \CONTROL/FSM5/ALU_SrcB_mux0000<0>222  (
    .I0(\CONTROL/FSM5/next_state [2]),
    .I1(\CONTROL/FSM5/next_state [4]),
    .I2(\CONTROL/FSM5/ALU_SrcB [1]),
    .I3(\CONTROL/FSM5/ALU_SrcB_or0002_492 ),
    .O(\CONTROL/FSM5/ALU_SrcB_mux0000<0>221_491 )
  );
  MUXF5   \CONTROL/FSM5/ALU_SrcB_mux0000<0>22_f5  (
    .I0(\CONTROL/FSM5/ALU_SrcB_mux0000<0>221_491 ),
    .I1(\CONTROL/FSM5/ALU_SrcB_mux0000<0>22 ),
    .S(N433),
    .O(\CONTROL/FSM5/ALU_SrcB_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \CONTROL/FSM2/ALU_SrcB_mux0000<0>221  (
    .I0(\CONTROL/FSM2/ALU_SrcB [1]),
    .I1(\CONTROL/FSM2/ALU_SrcB_or0002_192 ),
    .O(\CONTROL/FSM2/ALU_SrcB_mux0000<0>22 )
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \CONTROL/FSM2/ALU_SrcB_mux0000<0>222  (
    .I0(\CONTROL/FSM2/next_state [2]),
    .I1(\CONTROL/FSM2/next_state [4]),
    .I2(\CONTROL/FSM2/ALU_SrcB [1]),
    .I3(\CONTROL/FSM2/ALU_SrcB_or0002_192 ),
    .O(\CONTROL/FSM2/ALU_SrcB_mux0000<0>221_191 )
  );
  MUXF5   \CONTROL/FSM2/ALU_SrcB_mux0000<0>22_f5  (
    .I0(\CONTROL/FSM2/ALU_SrcB_mux0000<0>221_191 ),
    .I1(\CONTROL/FSM2/ALU_SrcB_mux0000<0>22 ),
    .S(N435),
    .O(\CONTROL/FSM2/ALU_SrcB_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/FSM4/RegDst_mux0000361  (
    .I0(\CONTROL/FSM4/next_state [3]),
    .I1(\CONTROL/FSM4/next_state [1]),
    .I2(\CONTROL/FSM4/next_state [0]),
    .I3(\CONTROL/FSM4/next_state [2]),
    .O(\CONTROL/FSM4/RegDst_mux0000361_395 )
  );
  MUXF5   \CONTROL/FSM4/RegDst_mux000036_f5  (
    .I0(\CONTROL/FSM4/RegDst_mux0000361_395 ),
    .I1(BranchSig_OBUF_64),
    .S(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/RegDst_mux000036 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \CONTROL/FSM4/RegDst_mux0000371  (
    .I0(\CONTROL/FSM4/RegDst_392 ),
    .I1(\CONTROL/FSM4/RegDst_mux000036 ),
    .O(\CONTROL/FSM4/RegDst_mux000037 )
  );
  LUT4 #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/FSM4/RegDst_mux0000372  (
    .I0(\CONTROL/FSM4/RegDst_392 ),
    .I1(\CONTROL/FSM4/next_state [0]),
    .I2(\CONTROL/FSM4/RegDst_mux000036 ),
    .I3(\CONTROL/FSM4/next_state [4]),
    .O(\CONTROL/FSM4/RegDst_mux0000371_397 )
  );
  MUXF5   \CONTROL/FSM4/RegDst_mux000037_f5  (
    .I0(\CONTROL/FSM4/RegDst_mux0000371_397 ),
    .I1(\CONTROL/FSM4/RegDst_mux000037 ),
    .S(N419),
    .O(\CONTROL/FSM4/RegDst_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hFBD9 ))
  \CONTROL/FSM3/ALUOp_mux0000<1>181  (
    .I0(\CONTROL/FSM3/next_state [1]),
    .I1(\CONTROL/FSM3/next_state [3]),
    .I2(\CONTROL/FSM3/next_state [2]),
    .I3(\CONTROL/FSM3/next_state [0]),
    .O(\CONTROL/FSM3/ALUOp_mux0000<1>181_286 )
  );
  MUXF5   \CONTROL/FSM3/ALUOp_mux0000<1>18_f5  (
    .I0(\CONTROL/FSM3/ALUOp_mux0000<1>181_286 ),
    .I1(alu_op_1_OBUF_1885),
    .S(\CONTROL/FSM3/next_state [4]),
    .O(\CONTROL/FSM3/ALUOp_mux0000<1>18 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \CONTROL/FSM5/stage_mux0000<0>11  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/FSM5/state [2]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [1]),
    .O(\CONTROL/FSM5/stage_mux0000<0>1 )
  );
  MUXF5   \CONTROL/FSM5/stage_mux0000<0>1_f5  (
    .I0(alu_op_1_OBUF_1885),
    .I1(\CONTROL/FSM5/stage_mux0000<0>1 ),
    .S(\CONTROL/FSM5/state [4]),
    .O(\CONTROL/N2 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \CONTROL/FSM4/stage_mux0000<0>11  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [2]),
    .O(\CONTROL/FSM4/stage_mux0000<0>1 )
  );
  MUXF5   \CONTROL/FSM4/stage_mux0000<0>1_f5  (
    .I0(alu_op_1_OBUF_1885),
    .I1(\CONTROL/FSM4/stage_mux0000<0>1 ),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/N3 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \CONTROL/FSM3/stage_mux0000<0>11  (
    .I0(\CONTROL/FSM3/state [0]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/FSM3/state [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .O(\CONTROL/FSM3/stage_mux0000<0>1 )
  );
  MUXF5   \CONTROL/FSM3/stage_mux0000<0>1_f5  (
    .I0(alu_op_1_OBUF_1885),
    .I1(\CONTROL/FSM3/stage_mux0000<0>1 ),
    .S(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/N4 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \CONTROL/FSM2/stage_mux0000<0>11  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/FSM2/state [2]),
    .I2(\CONTROL/FSM2/state [1]),
    .I3(\CONTROL/FSM2/state [3]),
    .O(\CONTROL/FSM2/stage_mux0000<0>1 )
  );
  MUXF5   \CONTROL/FSM2/stage_mux0000<0>1_f5  (
    .I0(alu_op_1_OBUF_1885),
    .I1(\CONTROL/FSM2/stage_mux0000<0>1 ),
    .S(\CONTROL/FSM2/state [4]),
    .O(\CONTROL/N5 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \CONTROL/FSM1/stage_mux0000<0>11  (
    .I0(\CONTROL/FSM1/state [0]),
    .I1(\CONTROL/FSM1/state [2]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [1]),
    .O(\CONTROL/FSM1/stage_mux0000<0>1 )
  );
  MUXF5   \CONTROL/FSM1/stage_mux0000<0>1_f5  (
    .I0(alu_op_1_OBUF_1885),
    .I1(\CONTROL/FSM1/stage_mux0000<0>1 ),
    .S(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/N6 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \CONTROL/FSM4/next_state_mux0000<0>531  (
    .I0(\CONTROL/ack4 ),
    .I1(\CONTROL/FSM4/state [0]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [1]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>531_448 )
  );
  MUXF5   \CONTROL/FSM4/next_state_mux0000<0>53_f5  (
    .I0(BranchSig_OBUF_64),
    .I1(\CONTROL/FSM4/next_state_mux0000<0>531_448 ),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000<0>53 )
  );
  LUT4 #(
    .INIT ( 16'h069A ))
  \CONTROL/FSM4/next_state_mux0000<2>791  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM4/state [1]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [2]),
    .O(\CONTROL/FSM4/next_state_mux0000<2>791_455 )
  );
  MUXF5   \CONTROL/FSM4/next_state_mux0000<2>79_f5  (
    .I0(\CONTROL/FSM4/next_state_mux0000<2>791_455 ),
    .I1(BranchSig_OBUF_64),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/FSM4/next_state_mux0000<2>79 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \CONTROL/FSM4/next_state_mux0000<1>11  (
    .I0(\CONTROL/FSM4/flush_en ),
    .I1(\CONTROL/N144 ),
    .I2(\CONTROL/FSM4/state [2]),
    .O(\CONTROL/FSM4/next_state_mux0000<1>1 )
  );
  LUT4 #(
    .INIT ( 16'hFFD5 ))
  \CONTROL/FSM4/next_state_mux0000<1>12  (
    .I0(\CONTROL/ack4 ),
    .I1(\CONTROL/N144 ),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(\CONTROL/FSM4/flush_en ),
    .O(\CONTROL/FSM4/next_state_mux0000<1>11_452 )
  );
  MUXF5   \CONTROL/FSM4/next_state_mux0000<1>1_f5  (
    .I0(\CONTROL/FSM4/next_state_mux0000<1>11_452 ),
    .I1(\CONTROL/FSM4/next_state_mux0000<1>1 ),
    .S(\CONTROL/N3 ),
    .O(\CONTROL/N64 )
  );
  LUT4 #(
    .INIT ( 16'h069A ))
  \CONTROL/FSM5/next_state_mux0000<2>771  (
    .I0(\CONTROL/FSM5/state [0]),
    .I1(\CONTROL/FSM5/state [1]),
    .I2(\CONTROL/FSM5/state [3]),
    .I3(\CONTROL/FSM5/state [2]),
    .O(\CONTROL/FSM5/next_state_mux0000<2>771_551 )
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<2>77_f5  (
    .I0(\CONTROL/FSM5/next_state_mux0000<2>771_551 ),
    .I1(BranchSig_OBUF_64),
    .S(\CONTROL/FSM5/state [4]),
    .O(\CONTROL/FSM5/next_state_mux0000<2>77 )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \CONTROL/FSM5/next_state_mux0000<1>821  (
    .I0(\CONTROL/N322 ),
    .I1(\CONTROL/ack5_761 ),
    .I2(\CONTROL/FSM5/flush_en ),
    .O(\CONTROL/FSM5/next_state_mux0000<1>82 )
  );
  LUT4 #(
    .INIT ( 16'hB1F1 ))
  \CONTROL/FSM5/next_state_mux0000<1>822  (
    .I0(\CONTROL/FSM5/flush_en ),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(\CONTROL/N322 ),
    .I3(\CONTROL/ack5_761 ),
    .O(\CONTROL/FSM5/next_state_mux0000<1>821_548 )
  );
  MUXF5   \CONTROL/FSM5/next_state_mux0000<1>82_f5  (
    .I0(\CONTROL/FSM5/next_state_mux0000<1>821_548 ),
    .I1(\CONTROL/FSM5/next_state_mux0000<1>82 ),
    .S(N443),
    .O(\CONTROL/FSM5/next_state_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \CONTROL/JmpOccur121  (
    .I0(\CONTROL/FSM3/next_state [2]),
    .I1(\CONTROL/FSM3/next_state [0]),
    .I2(\CONTROL/FSM3/next_state [3]),
    .I3(\CONTROL/FSM3/next_state [1]),
    .O(\CONTROL/JmpOccur121_642 )
  );
  MUXF5   \CONTROL/JmpOccur12_f5  (
    .I0(\CONTROL/JmpOccur121_642 ),
    .I1(BranchSig_OBUF_64),
    .S(\CONTROL/FSM3/next_state [4]),
    .O(\CONTROL/JmpOccur12 )
  );
  LUT4 #(
    .INIT ( 16'hBA82 ))
  \CONTROL/ack4361  (
    .I0(\CONTROL/FSM4/state [2]),
    .I1(\CONTROL/FSM4/state [0]),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/FSM4/state [3]),
    .O(\CONTROL/ack4361_760 )
  );
  MUXF5   \CONTROL/ack436_f5  (
    .I0(\CONTROL/ack4361_760 ),
    .I1(BranchSig_OBUF_64),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/ack436 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/ALUOp_or000041  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/FSM4/state [3]),
    .I3(\CONTROL/FSM4/state [0]),
    .O(\CONTROL/ALUOp_or00004 )
  );
  LUT4 #(
    .INIT ( 16'h0246 ))
  \CONTROL/ALUOp_or000042  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM4/state [3]),
    .I2(\CONTROL/FSM4/state [0]),
    .I3(\CONTROL/FSM4/state [2]),
    .O(\CONTROL/ALUOp_or000041_73 )
  );
  MUXF5   \CONTROL/ALUOp_or00004_f5  (
    .I0(\CONTROL/ALUOp_or000041_73 ),
    .I1(\CONTROL/ALUOp_or00004 ),
    .S(\CONTROL/FSM4/state [4]),
    .O(\CONTROL/N105 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \CONTROL/ALUOp_or000031  (
    .I0(\CONTROL/FSM3/state [1]),
    .I1(\CONTROL/FSM3/state [2]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [0]),
    .O(\CONTROL/ALUOp_or00003 )
  );
  LUT4 #(
    .INIT ( 16'h0246 ))
  \CONTROL/ALUOp_or000032  (
    .I0(\CONTROL/FSM3/state [1]),
    .I1(\CONTROL/FSM3/state [3]),
    .I2(\CONTROL/FSM3/state [0]),
    .I3(\CONTROL/FSM3/state [2]),
    .O(\CONTROL/ALUOp_or000031_71 )
  );
  MUXF5   \CONTROL/ALUOp_or00003_f5  (
    .I0(\CONTROL/ALUOp_or000031_71 ),
    .I1(\CONTROL/ALUOp_or00003 ),
    .S(\CONTROL/FSM3/state [4]),
    .O(\CONTROL/N99 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE231  (
    .I0(alu_result_24_OBUF_1966),
    .I1(alu_result_16_OBUF_1957),
    .I2(alu_result_1_OBUF_1961),
    .I3(alu_result_0_OBUF_1950),
    .O(\myALU/ALU_POSITIVE231_2069 )
  );
  MUXF5   \myALU/ALU_POSITIVE23_f5  (
    .I0(\myALU/ALU_POSITIVE231_2069 ),
    .I1(alu_op_1_OBUF_1885),
    .S(alu_result_8_OBUF_1980),
    .O(\myALU/ALU_POSITIVE23 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \CONTROL/SelectA5_cmp_eq000089_SW11  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/FSM1/state [3]),
    .I3(\CONTROL/FSM1/state [1]),
    .O(\CONTROL/SelectA5_cmp_eq000089_SW1 )
  );
  MUXF5   \CONTROL/SelectA5_cmp_eq000089_SW1_f5  (
    .I0(\CONTROL/SelectA5_cmp_eq000089_SW1 ),
    .I1(alu_op_1_OBUF_1885),
    .S(\CONTROL/FSM1/state [4]),
    .O(N349)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CONTROL/MemtoReg231  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM2/MemtoReg_193 ),
    .I2(\CONTROL/FSM1/MemtoReg_95 ),
    .O(\CONTROL/MemtoReg231_655 )
  );
  LUT4 #(
    .INIT ( 16'hD888 ))
  \CONTROL/MemtoReg232  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/FSM1/MemtoReg_95 ),
    .I2(\CONTROL/ack3_757 ),
    .I3(\CONTROL/FSM3/MemtoReg_290 ),
    .O(\CONTROL/MemtoReg232_656 )
  );
  MUXF5   \CONTROL/MemtoReg23_f5  (
    .I0(\CONTROL/MemtoReg232_656 ),
    .I1(\CONTROL/MemtoReg231_655 ),
    .S(\CONTROL/ack2_756 ),
    .O(\CONTROL/MemtoReg23 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \CONTROL/PC_En_Conflictstate<4>8411  (
    .I0(\CONTROL/PC_En_Conflict1_716 ),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/PC_En_Conflictstate<4>841 )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \CONTROL/PC_En_Conflictstate<4>8412  (
    .I0(\CONTROL/PC_En_Conflict1_716 ),
    .I1(\CONTROL/PC_En_Conflictstate<4>25_735 ),
    .I2(\CONTROL/PC_En_Conflictstate<4>2_734 ),
    .I3(\CONTROL/FSM1/state [4]),
    .O(\CONTROL/PC_En_Conflictstate<4>8411_737 )
  );
  MUXF5   \CONTROL/PC_En_Conflictstate<4>841_f5  (
    .I0(\CONTROL/PC_En_Conflictstate<4>8411_737 ),
    .I1(\CONTROL/PC_En_Conflictstate<4>841 ),
    .S(\CONTROL/PC_En_Conflict2_719 ),
    .O(\CONTROL/PC_En_Conflictstate [4])
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM3/stage_mux0000<0>31  (
    .I0(\CONTROL/FSM3/flush_en ),
    .I1(\CONTROL/ack3_757 ),
    .I2(\CONTROL/N4 ),
    .LO(N575),
    .O(\CONTROL/N297 )
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM4/stage_mux0000<0>31  (
    .I0(\CONTROL/FSM4/flush_en ),
    .I1(\CONTROL/ack4 ),
    .I2(\CONTROL/N3 ),
    .LO(N576),
    .O(\CONTROL/N298 )
  );
  LUT3_D #(
    .INIT ( 8'h04 ))
  \CONTROL/FSM5/stage_mux0000<0>31  (
    .I0(\CONTROL/FSM5/flush_en ),
    .I1(\CONTROL/N2 ),
    .I2(\CONTROL/ack5_761 ),
    .LO(N577),
    .O(\CONTROL/N299 )
  );
  LUT4_L #(
    .INIT ( 16'hB3FF ))
  \CONTROL/fromWB_SW0  (
    .I0(\CONTROL/FSM2/fromWB_235 ),
    .I1(\CONTROL/N11 ),
    .I2(\CONTROL/ack2_756 ),
    .I3(\CONTROL/N51 ),
    .LO(N138)
  );
  LUT4_D #(
    .INIT ( 16'h0100 ))
  \CONTROL/MemtoReg21  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/ack2_756 ),
    .I2(\CONTROL/ack3_757 ),
    .I3(\CONTROL/ack4 ),
    .LO(N578),
    .O(\CONTROL/N133 )
  );
  LUT3_L #(
    .INIT ( 8'hA8 ))
  \CONTROL/ALUOp_or000013  (
    .I0(\CONTROL/N99 ),
    .I1(\CONTROL/FSM3/ALUOp [0]),
    .I2(\CONTROL/FSM3/ALUOp [1]),
    .LO(\CONTROL/ALUOp_or000013_68 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \CONTROL/I10_cy<2>1141  (
    .I0(\CONTROL/FSM5/fromWB_535 ),
    .I1(\CONTROL/N51 ),
    .I2(\CONTROL/N1051 ),
    .I3(\CONTROL/ack51 ),
    .LO(N579),
    .O(\CONTROL/N132 )
  );
  LUT4_D #(
    .INIT ( 16'h1000 ))
  \CONTROL/ack5  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(N142),
    .I2(\CONTROL/N127 ),
    .I3(\CONTROL/N262 ),
    .LO(N580),
    .O(\CONTROL/ack5_761 )
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \CONTROL/DMemVisit11  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM4/state_3_1_474 ),
    .I2(\CONTROL/FSM4/state_1_1_470 ),
    .I3(\CONTROL/FSM4/state [4]),
    .LO(N581),
    .O(\CONTROL/N144 )
  );
  LUT4_D #(
    .INIT ( 16'h475D ))
  \CONTROL/ack2_SW0  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [0]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [1]),
    .LO(N582),
    .O(N144)
  );
  LUT4_D #(
    .INIT ( 16'h0010 ))
  \CONTROL/ack3  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(N146),
    .I2(\CONTROL/N127 ),
    .I3(\CONTROL/ack2_756 ),
    .LO(N583),
    .O(\CONTROL/ack3_757 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \CONTROL/ack1  (
    .I0(\CONTROL/JmpSig_645 ),
    .I1(\CONTROL/FSM1/state [4]),
    .I2(N148),
    .I3(DMemVisit_OBUF_805),
    .LO(N584),
    .O(\CONTROL/ack1_755 )
  );
  LUT4_D #(
    .INIT ( 16'h0008 ))
  \CONTROL/ack481  (
    .I0(\CONTROL/N127 ),
    .I1(\CONTROL/ack436 ),
    .I2(\CONTROL/ack2_756 ),
    .I3(\CONTROL/ack3_757 ),
    .LO(N585),
    .O(\CONTROL/ack4 )
  );
  LUT2_L #(
    .INIT ( 4'h4 ))
  \CONTROL/DMemVisit14  (
    .I0(\CONTROL/FSM1/state_4_1_175 ),
    .I1(\CONTROL/FSM1/state_0_1_170 ),
    .LO(\CONTROL/DMemVisit14_85 )
  );
  LUT4_L #(
    .INIT ( 16'hBFFD ))
  \CONTROL/PC_En_Conflict1_SW0  (
    .I0(\CONTROL/FSM1/state [4]),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/FSM1/state [0]),
    .LO(N150)
  );
  LUT4_L #(
    .INIT ( 16'hBFFD ))
  \CONTROL/PC_En_Conflict2_SW0  (
    .I0(\CONTROL/FSM2/state [4]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [0]),
    .LO(N152)
  );
  LUT3_D #(
    .INIT ( 8'h40 ))
  \CONTROL/stateofFOUR_cmp_eq00011  (
    .I0(\CONTROL/FSM2/stage [1]),
    .I1(\CONTROL/FSM2/stage [0]),
    .I2(\CONTROL/FSM2/stage [2]),
    .LO(N586),
    .O(\CONTROL/stateofFOUR_cmp_eq0001 )
  );
  LUT3_D #(
    .INIT ( 8'h40 ))
  \CONTROL/stateofFOUR_cmp_eq00001  (
    .I0(\CONTROL/FSM1/stage [1]),
    .I1(\CONTROL/FSM1/stage [0]),
    .I2(\CONTROL/FSM1/stage [2]),
    .LO(N587),
    .O(\CONTROL/stateofFOUR_cmp_eq0000 )
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \CONTROL/ALU_SrcB<0>2_SW1  (
    .I0(\CONTROL/FSM1/state [3]),
    .I1(\CONTROL/FSM1/state [2]),
    .I2(\CONTROL/FSM1/state [1]),
    .I3(\CONTROL/FSM1/state [0]),
    .LO(N155)
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \CONTROL/ALUOp_or00002_SW1  (
    .I0(\CONTROL/FSM2/state [2]),
    .I1(\CONTROL/FSM2/state [1]),
    .I2(\CONTROL/FSM2/state [3]),
    .I3(\CONTROL/FSM2/state [0]),
    .LO(N162)
  );
  LUT4_L #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/ALUOp_or00005_SW1  (
    .I0(\CONTROL/N116 ),
    .I1(\CONTROL/FSM5/state [4]),
    .I2(\CONTROL/FSM5/state [0]),
    .I3(\CONTROL/FSM5/state [3]),
    .LO(N165)
  );
  LUT4_D #(
    .INIT ( 16'hBFFD ))
  \CONTROL/PC_En_Conflict3_SW0  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(\CONTROL/FSM3/state [1]),
    .I2(\CONTROL/FSM3/state [3]),
    .I3(\CONTROL/FSM3/state [0]),
    .LO(N588),
    .O(N167)
  );
  LUT3_D #(
    .INIT ( 8'h40 ))
  \CONTROL/stateofFOUR_cmp_eq00021  (
    .I0(\CONTROL/FSM3/stage [1]),
    .I1(\CONTROL/FSM3/stage [0]),
    .I2(\CONTROL/FSM3/stage [2]),
    .LO(N589),
    .O(\CONTROL/stateofFOUR_cmp_eq0002 )
  );
  LUT4_L #(
    .INIT ( 16'h0004 ))
  \CONTROL/SelectA5_cmp_eq000045  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [2]),
    .I2(\CONTROL/FSM5/state [0]),
    .I3(\CONTROL/FSM5/state [1]),
    .LO(\CONTROL/SelectA5_cmp_eq000045_749 )
  );
  LUT3_D #(
    .INIT ( 8'h10 ))
  \CONTROL/FSM5/next_state_mux0000<3>21  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM5/state [2]),
    .I2(\CONTROL/FSM5/state [3]),
    .LO(N590),
    .O(\CONTROL/N145 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFD ))
  \CONTROL/FSM5/next_state_mux0000<0>31  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(\CONTROL/FSM5/state [3]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/FSM5/state [2]),
    .LO(N591),
    .O(\CONTROL/N116 )
  );
  LUT4_D #(
    .INIT ( 16'hBFFD ))
  \CONTROL/PC_En_Conflict4_SW0  (
    .I0(\CONTROL/FSM4/state [4]),
    .I1(\CONTROL/FSM4/state [3]),
    .I2(\CONTROL/FSM4/state [1]),
    .I3(\CONTROL/FSM4/state [0]),
    .LO(N592),
    .O(N169)
  );
  LUT4_L #(
    .INIT ( 16'h0E04 ))
  \CONTROL/PC_En_Conflictstate<0>20  (
    .I0(\CONTROL/PC_En_Conflict4_721 ),
    .I1(\CONTROL/PC_En_Conflictstate<0>4 ),
    .I2(\CONTROL/PC_En_Conflict3_720 ),
    .I3(\CONTROL/FSM4/state [0]),
    .LO(\CONTROL/PC_En_Conflictstate<0>20_723 )
  );
  LUT4_L #(
    .INIT ( 16'hFE54 ))
  \CONTROL/PC_En_Conflictstate<3>31  (
    .I0(\CONTROL/PC_En_Conflict3_720 ),
    .I1(\CONTROL/PC_En_Conflictstate<3>3_730 ),
    .I2(\CONTROL/PC_En_Conflictstate<1>11 ),
    .I3(\CONTROL/FSM3/state [3]),
    .LO(\CONTROL/PC_En_Conflictstate<3>31_731 )
  );
  LUT4_L #(
    .INIT ( 16'hFE54 ))
  \CONTROL/PC_En_Conflictstate<1>31  (
    .I0(\CONTROL/PC_En_Conflict3_720 ),
    .I1(\CONTROL/PC_En_Conflictstate<1>3_727 ),
    .I2(\CONTROL/PC_En_Conflictstate<1>11 ),
    .I3(\CONTROL/FSM3/state [1]),
    .LO(\CONTROL/PC_En_Conflictstate<1>31_728 )
  );
  LUT4_L #(
    .INIT ( 16'hFCEA ))
  \CONTROL/ALU_SrcA17  (
    .I0(\CONTROL/stateofALU [0]),
    .I1(\CONTROL/stateofALU [1]),
    .I2(\CONTROL/stateofALU [4]),
    .I3(\CONTROL/stateofALU [3]),
    .LO(\CONTROL/ALU_SrcA17_74 )
  );
  LUT4_L #(
    .INIT ( 16'hF888 ))
  \CONTROL/ALU_SrcB<0>15  (
    .I0(\CONTROL/FSM4/ALU_SrcB [1]),
    .I1(\CONTROL/N105 ),
    .I2(\CONTROL/FSM1/ALU_SrcB [1]),
    .I3(\CONTROL/N107 ),
    .LO(\CONTROL/ALU_SrcB<0>15_77 )
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \CONTROL/ALU_SrcB<0>3  (
    .I0(\CONTROL/stateofALU [3]),
    .I1(\CONTROL/stateofALU [0]),
    .I2(N176),
    .LO(N593),
    .O(\CONTROL/N302 )
  );
  LUT3_D #(
    .INIT ( 8'h04 ))
  \CONTROL/stateofTHREE_cmp_eq00011  (
    .I0(\CONTROL/FSM2/stage [0]),
    .I1(\CONTROL/FSM2/stage [2]),
    .I2(\CONTROL/FSM2/stage [1]),
    .LO(N594),
    .O(\CONTROL/stateofTHREE_cmp_eq0001 )
  );
  LUT3_D #(
    .INIT ( 8'h04 ))
  \CONTROL/stateofTHREE_cmp_eq00001  (
    .I0(\CONTROL/FSM1/stage [0]),
    .I1(\CONTROL/FSM1/stage [2]),
    .I2(\CONTROL/FSM1/stage [1]),
    .LO(N595),
    .O(\CONTROL/stateofTHREE_cmp_eq0000 )
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \CONTROL/WaitForMem11_SW0  (
    .I0(\CONTROL/stateofTHREE_cmp_eq0003 ),
    .I1(\CONTROL/stateofTHREE_cmp_eq0002 ),
    .I2(\CONTROL/stateofTHREE_cmp_eq0001 ),
    .I3(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .LO(N178)
  );
  LUT4_D #(
    .INIT ( 16'hECA0 ))
  \CONTROL/stateofTHREE<4>15  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(\CONTROL/N155 ),
    .I3(\CONTROL/N307 ),
    .LO(N596),
    .O(\CONTROL/stateofTHREE<4>15_799 )
  );
  LUT4_D #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofTHREE<0>15  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/FSM3/state [0]),
    .I2(\CONTROL/N155 ),
    .I3(\CONTROL/N307 ),
    .LO(N597),
    .O(\CONTROL/stateofTHREE<0>15_792 )
  );
  LUT3_D #(
    .INIT ( 8'h20 ))
  \CONTROL/stateofALU_cmp_eq00001  (
    .I0(\CONTROL/FSM1/stage [0]),
    .I1(\CONTROL/FSM1/stage [2]),
    .I2(\CONTROL/FSM1/stage [1]),
    .LO(N598),
    .O(\CONTROL/stateofALU_cmp_eq0000 )
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \CONTROL/rsofALU<0>2_SW0  (
    .I0(\CONTROL/stateofALU_cmp_eq0003 ),
    .I1(\CONTROL/stateofALU_cmp_eq0002 ),
    .I2(\CONTROL/stateofALU_cmp_eq0001 ),
    .I3(\CONTROL/stateofALU_cmp_eq0000 ),
    .LO(N195)
  );
  LUT4_D #(
    .INIT ( 16'hFEFC ))
  \CONTROL/stateofALU<2>36  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/stateofALU<2>23_776 ),
    .I2(N209),
    .I3(\CONTROL/N108 ),
    .LO(N599),
    .O(\CONTROL/stateofALU [2])
  );
  LUT4_L #(
    .INIT ( 16'hEDFF ))
  \CONTROL/DMemVisit179_SW0  (
    .I0(\CONTROL/FSM5/state [2]),
    .I1(\CONTROL/FSM5/state [3]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/FSM5/state [0]),
    .LO(N215)
  );
  LUT4_D #(
    .INIT ( 16'hECA0 ))
  \CONTROL/stateofTHREE<4>8_SW0  (
    .I0(\CONTROL/FSM1/state [4]),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .I3(\CONTROL/N135 ),
    .LO(N600),
    .O(N217)
  );
  LUT4_L #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofTHREE<3>8_SW0  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .I3(\CONTROL/N135 ),
    .LO(N219)
  );
  LUT4_D #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofTHREE<0>8_SW0  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .I3(\CONTROL/N135 ),
    .LO(N601),
    .O(N221)
  );
  LUT4_L #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/WaitForMem18_SW0  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .I3(\CONTROL/N135 ),
    .LO(N223)
  );
  LUT4_D #(
    .INIT ( 16'h0054 ))
  \CONTROL/ack521  (
    .I0(\CONTROL/JmpSig_645 ),
    .I1(\CONTROL/FSM1/state [4]),
    .I2(N148),
    .I3(DMemVisit_OBUF_805),
    .LO(N602),
    .O(\CONTROL/N127 )
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \CONTROL/stateofALU<3>7  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(\CONTROL/FSM3/stage [1]),
    .I3(\CONTROL/FSM3/state [3]),
    .LO(\CONTROL/stateofALU<3>7_780 )
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \CONTROL/stateofALU<0>7  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(\CONTROL/FSM3/stage [1]),
    .I3(\CONTROL/FSM3/state [0]),
    .LO(\CONTROL/stateofALU<0>7_771 )
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \CONTROL/stateofALU<1>7  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(\CONTROL/FSM3/stage [1]),
    .I3(\CONTROL/FSM3/state [1]),
    .LO(\CONTROL/stateofALU<1>7_774 )
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  \CONTROL/stateofALU<4>7  (
    .I0(\CONTROL/FSM3/stage [0]),
    .I1(\CONTROL/FSM3/stage [2]),
    .I2(\CONTROL/FSM3/stage [1]),
    .I3(\CONTROL/FSM3/state [4]),
    .LO(\CONTROL/stateofALU<4>7_783 )
  );
  LUT4_L #(
    .INIT ( 16'h4000 ))
  \CONTROL/stateofALU<2>7  (
    .I0(\CONTROL/FSM3/stage [2]),
    .I1(\CONTROL/FSM3/stage [1]),
    .I2(\CONTROL/FSM3/stage [0]),
    .I3(\CONTROL/FSM3/state [2]),
    .LO(\CONTROL/stateofALU<2>7_777 )
  );
  LUT4_L #(
    .INIT ( 16'h4C00 ))
  \CONTROL/I10_cy<4>114_SW0  (
    .I0(\CONTROL/FSM4/fromWB_435 ),
    .I1(\CONTROL/N153 ),
    .I2(\CONTROL/ack4 ),
    .I3(\CONTROL/N51 ),
    .LO(N140)
  );
  LUT4_L #(
    .INIT ( 16'hDFFF ))
  \CONTROL/PC_En_Conflictstate<3>11_SW0  (
    .I0(\CONTROL/FSM5/state [3]),
    .I1(\CONTROL/FSM5/state [2]),
    .I2(\CONTROL/FSM5/state [1]),
    .I3(\CONTROL/FSM5/state [0]),
    .LO(N230)
  );
  LUT4_D #(
    .INIT ( 16'h0004 ))
  \CONTROL/WaitForMem151  (
    .I0(\CONTROL/FSM2/stage [0]),
    .I1(\CONTROL/FSM2/stage [2]),
    .I2(\CONTROL/FSM2/stage [1]),
    .I3(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .LO(N603),
    .O(\CONTROL/N307 )
  );
  LUT3_L #(
    .INIT ( 8'hF1 ))
  \CONTROL/SelectA2_cmp_eq0000_SW0  (
    .I0(\CONTROL/WaitForMem18_754 ),
    .I1(\CONTROL/WaitForMem115_753 ),
    .I2(\CONTROL/stateofTHREE[2] ),
    .LO(N174)
  );
  LUT4_L #(
    .INIT ( 16'h0537 ))
  \CONTROL/WaitForMem31_SW0  (
    .I0(\CONTROL/stateofTHREE<0>15_792 ),
    .I1(\CONTROL/WaitForMem115_753 ),
    .I2(\CONTROL/stateofTHREE<0>8_793 ),
    .I3(\CONTROL/WaitForMem18_754 ),
    .LO(N296)
  );
  LUT4_L #(
    .INIT ( 16'hECA0 ))
  \CONTROL/stateofTHREE<2>18_SW0  (
    .I0(\CONTROL/FSM1/state [2]),
    .I1(\CONTROL/FSM4/state [2]),
    .I2(\CONTROL/stateofTHREE_cmp_eq0000 ),
    .I3(\CONTROL/N135 ),
    .LO(N199)
  );
  LUT4_L #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofALU<3>36_SW0  (
    .I0(\CONTROL/FSM4/state [3]),
    .I1(\CONTROL/FSM1/state [3]),
    .I2(\CONTROL/stateofALU_cmp_eq0000 ),
    .I3(\CONTROL/N134 ),
    .LO(N201)
  );
  LUT4_L #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofALU<0>36_SW0  (
    .I0(\CONTROL/FSM4/state [0]),
    .I1(\CONTROL/FSM1/state [0]),
    .I2(\CONTROL/stateofALU_cmp_eq0000 ),
    .I3(\CONTROL/N134 ),
    .LO(N203)
  );
  LUT4_L #(
    .INIT ( 16'hEAC0 ))
  \CONTROL/stateofALU<1>36_SW0  (
    .I0(\CONTROL/FSM4/state [1]),
    .I1(\CONTROL/FSM1/state [1]),
    .I2(\CONTROL/stateofALU_cmp_eq0000 ),
    .I3(\CONTROL/N134 ),
    .LO(N205)
  );
  LUT4_L #(
    .INIT ( 16'hECA0 ))
  \CONTROL/stateofALU<4>36_SW0  (
    .I0(\CONTROL/FSM1/state [4]),
    .I1(\CONTROL/FSM4/state [4]),
    .I2(\CONTROL/stateofALU_cmp_eq0000 ),
    .I3(\CONTROL/N134 ),
    .LO(N207)
  );
  LUT4_L #(
    .INIT ( 16'h0357 ))
  \CONTROL/DMemVisit102  (
    .I0(\CONTROL/FSM3/state [4]),
    .I1(\CONTROL/FSM2/state [4]),
    .I2(N213),
    .I3(N344),
    .LO(\CONTROL/DMemVisit102_84 )
  );
  LUT4_L #(
    .INIT ( 16'h4000 ))
  \CONTROL/SelectA5_cmp_eq0000132  (
    .I0(N353),
    .I1(\CONTROL/SelectA5_cmp_eq0000121_744 ),
    .I2(\CONTROL/FSM4/state [2]),
    .I3(\CONTROL/stateofFOUR_cmp_eq0003 ),
    .LO(\CONTROL/SelectA5_cmp_eq0000132_745 )
  );
  LUT4_L #(
    .INIT ( 16'h0004 ))
  \CONTROL/SelectA5_cmp_eq0000188  (
    .I0(\CONTROL/FSM2/state [0]),
    .I1(\CONTROL/FSM2/state [2]),
    .I2(\CONTROL/FSM2/state [1]),
    .I3(N377),
    .LO(\CONTROL/SelectA5_cmp_eq0000188_747 )
  );
  LUT4_L #(
    .INIT ( 16'hFAF8 ))
  \CONTROL/ALUOp_or000030  (
    .I0(\CONTROL/N107 ),
    .I1(\CONTROL/FSM1/ALUOp [0]),
    .I2(N379),
    .I3(\CONTROL/FSM1/ALUOp [1]),
    .LO(\CONTROL/ALUOp_or000030_70 )
  );
  LUT4_D #(
    .INIT ( 16'h40C0 ))
  \CONTROL/I10_cy<4>1121  (
    .I0(\CONTROL/ack1_755 ),
    .I1(\CONTROL/ack2_756 ),
    .I2(\CONTROL/FSM2/fromWB_235 ),
    .I3(\CONTROL/FSM1/fromWB_136 ),
    .LO(N604),
    .O(\CONTROL/N112 )
  );
  LUT4_L #(
    .INIT ( 16'hECCC ))
  \CONTROL/RegWrite45_SW0  (
    .I0(\CONTROL/FSM5/RegWrite_498 ),
    .I1(\CONTROL/RegWrite12_739 ),
    .I2(\CONTROL/N262 ),
    .I3(\CONTROL/ack5_761 ),
    .LO(N445)
  );
  LUT4_D #(
    .INIT ( 16'h1000 ))
  \CONTROL/ack5_1  (
    .I0(\CONTROL/FSM5/state [4]),
    .I1(N142),
    .I2(\CONTROL/N127 ),
    .I3(\CONTROL/N262 ),
    .LO(N605),
    .O(\CONTROL/ack51 )
  );
  LUT4_D #(
    .INIT ( 16'h5F4C ))
  \CONTROL/ALU_SrcA69_1  (
    .I0(\CONTROL/SelectA5_cmp_eq0000 ),
    .I1(\CONTROL/ALU_SrcA30_75 ),
    .I2(\CONTROL/SelectA5_or0000_752 ),
    .I3(N211),
    .LO(N606),
    .O(\CONTROL/ALU_SrcA69_76 )
  );
  LUT4_D #(
    .INIT ( 16'hFFEC ))
  \CONTROL/ALU_SrcB<0>39_1  (
    .I0(\CONTROL/SelectA5_cmp_eq0000 ),
    .I1(\CONTROL/ALU_SrcB<0>17_78 ),
    .I2(\CONTROL/N302 ),
    .I3(SelectB_OBUF_1691),
    .LO(N607),
    .O(\CONTROL/ALU_SrcB<0>39_79 )
  );
  FDC   \CONTROL/en0_1  (
    .C(clk_BUFGP_1988),
    .CLR(\ALURESULT/rst_n_inv ),
    .D(alu_op_1_OBUF_1885),
    .Q(\CONTROL/en0_1_768 )
  );
  Memory   myMemory (
    .clka(clk_BUFGP_1988),
    .wea({BranchSig_OBUF_64}),
    .addra({Mem_addr_8_OBUF_1140, Mem_addr_7_OBUF_1139, Mem_addr_6_OBUF_1138, Mem_addr_5_OBUF_1137, Mem_addr_4_OBUF_1136, Mem_addr_3_OBUF_1135, 
Mem_addr_2_OBUF_1132}),
    .douta({M_doutb_31_OBUF_1069, M_doutb_30_OBUF_1068, M_doutb_29_OBUF_1066, M_doutb_28_OBUF_1065, M_doutb_27_OBUF_1064, M_doutb_26_OBUF_1063, 
M_doutb_25_OBUF_1062, M_doutb_24_OBUF_1061, M_doutb_23_OBUF_1060, M_doutb_22_OBUF_1059, M_doutb_21_OBUF_1058, M_doutb_20_OBUF_1057, 
M_doutb_19_OBUF_1055, M_doutb_18_OBUF_1054, M_doutb_17_OBUF_1053, M_doutb_16_OBUF_1052, M_doutb_15_OBUF_1051, M_doutb_14_OBUF_1050, 
M_doutb_13_OBUF_1049, M_doutb_12_OBUF_1048, M_doutb_11_OBUF_1047, M_doutb_10_OBUF_1046, M_doutb_9_OBUF_1076, M_doutb_8_OBUF_1075, M_doutb_7_OBUF_1074
, M_doutb_6_OBUF_1073, M_doutb_5_OBUF_1072, M_doutb_4_OBUF_1071, M_doutb_3_OBUF_1070, M_doutb_2_OBUF_1067, M_doutb_1_OBUF_1056, M_doutb_0_OBUF_1045}),
    .dina({\reg_out/r2_dout [31], \reg_out/r2_dout [30], \reg_out/r2_dout [29], \reg_out/r2_dout [28], \reg_out/r2_dout [27], \reg_out/r2_dout [26], 
\reg_out/r2_dout [25], \reg_out/r2_dout [24], \reg_out/r2_dout [23], \reg_out/r2_dout [22], \reg_out/r2_dout [21], \reg_out/r2_dout [20], 
\reg_out/r2_dout [19], \reg_out/r2_dout [18], \reg_out/r2_dout [17], \reg_out/r2_dout [16], \reg_out/r2_dout [15], \reg_out/r2_dout [14], 
\reg_out/r2_dout [13], \reg_out/r2_dout [12], \reg_out/r2_dout [11], \reg_out/r2_dout [10], \reg_out/r2_dout [9], \reg_out/r2_dout [8], 
\reg_out/r2_dout [7], \reg_out/r2_dout [6], \reg_out/r2_dout [5], \reg_out/r2_dout [4], \reg_out/r2_dout [3], \reg_out/r2_dout [2], 
\reg_out/r2_dout [1], \reg_out/r2_dout [0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
