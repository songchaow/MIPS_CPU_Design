////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.70d
//  \   \         Application: netgen
//  /   /         Filename: top_translate.v
// /___/   /\     Timestamp: Sun May 07 21:23:00 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim top.ngd top_translate.v 
// Device	: 3s500efg320-5
// Input file	: top.ngd
// Output file	: D:\ISE Project\COD-Labs\Lab06_Multicycle_CPU\netgen\translate\top_translate.v
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
  clk, rst_n, ALU_ZERO, Branch_gz, Branch_ne, Jump, PCWrite, ALU_POSITIVE, MemRead, Branch, IRWrite, RegDst, ALUSrcA, RegWrite, MemWrite, MemtoReg, 
IorD, funct, PC_Src, state, ALUOp, sext_Immed, Immed, alu_op, r3_addr_mux, PC, instruction, alu_a, alu_b, alu_out, r1_dout, Jump_addr, ALUSrcB, 
reg_datain, r1_addr, post_PC, r2_dout, PC_Branch, M_doutb, r2_addr, opcode, next_state
);
  input clk;
  input rst_n;
  output ALU_ZERO;
  output Branch_gz;
  output Branch_ne;
  output Jump;
  output PCWrite;
  output ALU_POSITIVE;
  output MemRead;
  output Branch;
  output IRWrite;
  output RegDst;
  output ALUSrcA;
  output RegWrite;
  output MemWrite;
  output MemtoReg;
  output IorD;
  output [5 : 0] funct;
  output [1 : 0] PC_Src;
  output [6 : 0] state;
  output [1 : 0] ALUOp;
  output [31 : 0] sext_Immed;
  output [15 : 0] Immed;
  output [4 : 0] alu_op;
  output [4 : 0] r3_addr_mux;
  output [31 : 0] PC;
  output [31 : 0] instruction;
  output [31 : 0] alu_a;
  output [31 : 0] alu_b;
  output [31 : 0] alu_out;
  output [31 : 0] r1_dout;
  output [25 : 0] Jump_addr;
  output [1 : 0] ALUSrcB;
  output [31 : 0] reg_datain;
  output [4 : 0] r1_addr;
  output [31 : 0] post_PC;
  output [31 : 0] r2_dout;
  output [31 : 0] PC_Branch;
  output [31 : 0] M_doutb;
  output [4 : 0] r2_addr;
  output [5 : 0] opcode;
  output [6 : 0] next_state;
  wire ALU_POSITIVE_OBUF_159;
  wire ALU_ZERO_OBUF_161;
  wire \FSM/ALUOp_0_1_166 ;
  wire \FSM/ALUOp_mux0000<0>1_169 ;
  wire \FSM/ALUOp_mux0000<0>2_170 ;
  wire \FSM/ALUSrcA_172 ;
  wire \FSM/ALUSrcA_mux0000 ;
  wire \FSM/ALUSrcA_mux00001_174 ;
  wire \FSM/ALUSrcA_mux00002_175 ;
  wire \FSM/ALUSrcB_Acst_inv ;
  wire \FSM/ALUSrcB_mux0000<0>1_180 ;
  wire \FSM/ALUSrcB_mux0000<0>2_181 ;
  wire \FSM/Branch_183 ;
  wire \FSM/Branch_mux0000 ;
  wire \FSM/Branch_mux00001_185 ;
  wire \FSM/Branch_mux00002_186 ;
  wire \FSM/IRWrite_187 ;
  wire \FSM/IRWrite_mux0000 ;
  wire \FSM/IRWrite_mux00001_189 ;
  wire \FSM/IRWrite_mux00002_190 ;
  wire \FSM/IorD_191 ;
  wire \FSM/IorD_mux0000 ;
  wire \FSM/IorD_mux00001_193 ;
  wire \FSM/IorD_mux00002_194 ;
  wire \FSM/MemtoReg_195 ;
  wire \FSM/MemtoReg_mux0000 ;
  wire \FSM/MemtoReg_mux00001_197 ;
  wire \FSM/MemtoReg_mux00002_198 ;
  wire \FSM/N12 ;
  wire \FSM/N2 ;
  wire \FSM/N3 ;
  wire \FSM/PCWrite_202 ;
  wire \FSM/PCWrite_mux0000 ;
  wire \FSM/PCWrite_mux000047 ;
  wire \FSM/PCWrite_mux0000471_205 ;
  wire \FSM/PC_Src_mux0000<0>1 ;
  wire \FSM/PC_Src_mux0000<0>11_210 ;
  wire \FSM/PC_Src_mux0000<1>1_212 ;
  wire \FSM/PC_Src_mux0000<1>2_213 ;
  wire \FSM/RegDst_214 ;
  wire \FSM/RegDst_mux0000 ;
  wire \FSM/RegDst_mux00001_216 ;
  wire \FSM/RegDst_mux00002_217 ;
  wire \FSM/RegWrite_218 ;
  wire \FSM/RegWrite_mux0000 ;
  wire \FSM/RegWrite_mux00001_220 ;
  wire \FSM/RegWrite_mux00002_221 ;
  wire \FSM/next_state_0_1_223 ;
  wire \FSM/next_state_1_1_225 ;
  wire \FSM/next_state_2_1_227 ;
  wire \FSM/next_state_3_1_229 ;
  wire \FSM/next_state_not0001 ;
  wire \FSM/state_0_1_236 ;
  wire \FSM/state_1_1_238 ;
  wire \FSM/state_2_1_240 ;
  wire \FSM/state_3_1_242 ;
  wire M_doutb_0_OBUF_351;
  wire M_doutb_10_OBUF_352;
  wire M_doutb_11_OBUF_353;
  wire M_doutb_12_OBUF_354;
  wire M_doutb_13_OBUF_355;
  wire M_doutb_14_OBUF_356;
  wire M_doutb_15_OBUF_357;
  wire M_doutb_16_OBUF_358;
  wire M_doutb_17_OBUF_359;
  wire M_doutb_18_OBUF_360;
  wire M_doutb_19_OBUF_361;
  wire M_doutb_1_OBUF_362;
  wire M_doutb_20_OBUF_363;
  wire M_doutb_21_OBUF_364;
  wire M_doutb_22_OBUF_365;
  wire M_doutb_23_OBUF_366;
  wire M_doutb_24_OBUF_367;
  wire M_doutb_25_OBUF_368;
  wire M_doutb_26_OBUF_369;
  wire M_doutb_27_OBUF_370;
  wire M_doutb_28_OBUF_371;
  wire M_doutb_29_OBUF_372;
  wire M_doutb_2_OBUF_373;
  wire M_doutb_30_OBUF_374;
  wire M_doutb_31_OBUF_375;
  wire M_doutb_3_OBUF_376;
  wire M_doutb_4_OBUF_377;
  wire M_doutb_5_OBUF_378;
  wire M_doutb_6_OBUF_379;
  wire M_doutb_7_OBUF_380;
  wire M_doutb_8_OBUF_381;
  wire M_doutb_9_OBUF_382;
  wire PC_en;
  wire \RegFile/R_0_0_426 ;
  wire alu_op_1_OBUF_497;
  wire alu_op_2_OBUF_498;
  wire alu_out_0_OBUF_531;
  wire clk_BUFGP;
  wire \myALU/ALU_POSITIVE18_572 ;
  wire \myALU/ALU_POSITIVE2_573 ;
  wire \myALU/ALU_POSITIVE23_574 ;
  wire \myALU/ALU_POSITIVE33_575 ;
  wire \myALU/ALU_POSITIVE46_576 ;
  wire \myALU/ALU_POSITIVE51_577 ;
  wire \myALU/ALU_POSITIVE63_578 ;
  wire \myALU/ALU_POSITIVE68_579 ;
  wire \myALU/ALU_POSITIVE7_580 ;
  wire \myALU/ALU_POSITIVE78_581 ;
  wire \myALU/Maddsub_alu_out_addsub0000_lut[0] ;
  wire \myALU/Maddsub_alu_out_addsub0000_lut[10] ;
  wire \myALU/alu_out_mux00002 ;
  wire \myALU/alu_out_mux000021_695 ;
  wire \myALU/alu_out_mux0000210_696 ;
  wire \myALU/alu_out_mux0000211_697 ;
  wire \myALU/alu_out_mux0000212_698 ;
  wire \myALU/alu_out_mux0000213_699 ;
  wire \myALU/alu_out_mux0000214_700 ;
  wire \myALU/alu_out_mux0000215_701 ;
  wire \myALU/alu_out_mux0000216_702 ;
  wire \myALU/alu_out_mux0000217_703 ;
  wire \myALU/alu_out_mux0000218_704 ;
  wire \myALU/alu_out_mux0000219_705 ;
  wire \myALU/alu_out_mux000022_706 ;
  wire \myALU/alu_out_mux0000220_707 ;
  wire \myALU/alu_out_mux0000221_708 ;
  wire \myALU/alu_out_mux0000222_709 ;
  wire \myALU/alu_out_mux0000223_710 ;
  wire \myALU/alu_out_mux0000224_711 ;
  wire \myALU/alu_out_mux0000225_712 ;
  wire \myALU/alu_out_mux0000226_713 ;
  wire \myALU/alu_out_mux0000227_714 ;
  wire \myALU/alu_out_mux0000228_715 ;
  wire \myALU/alu_out_mux0000229_716 ;
  wire \myALU/alu_out_mux000023_717 ;
  wire \myALU/alu_out_mux0000230_718 ;
  wire \myALU/alu_out_mux000024_719 ;
  wire \myALU/alu_out_mux000025_720 ;
  wire \myALU/alu_out_mux000026_721 ;
  wire \myALU/alu_out_mux000027_722 ;
  wire \myALU/alu_out_mux000028_723 ;
  wire \myALU/alu_out_mux000029_724 ;
  wire next_PC;
  wire reg_datain_0_OBUF_882;
  wire reg_datain_10_OBUF_883;
  wire reg_datain_11_OBUF_884;
  wire reg_datain_12_OBUF_885;
  wire reg_datain_13_OBUF_886;
  wire reg_datain_14_OBUF_887;
  wire reg_datain_15_OBUF_888;
  wire reg_datain_16_OBUF_889;
  wire reg_datain_17_OBUF_890;
  wire reg_datain_18_OBUF_891;
  wire reg_datain_19_OBUF_892;
  wire reg_datain_1_OBUF_893;
  wire reg_datain_20_OBUF_894;
  wire reg_datain_21_OBUF_895;
  wire reg_datain_22_OBUF_896;
  wire reg_datain_23_OBUF_897;
  wire reg_datain_24_OBUF_898;
  wire reg_datain_25_OBUF_899;
  wire reg_datain_26_OBUF_900;
  wire reg_datain_27_OBUF_901;
  wire reg_datain_28_OBUF_902;
  wire reg_datain_29_OBUF_903;
  wire reg_datain_2_OBUF_904;
  wire reg_datain_30_OBUF_905;
  wire reg_datain_31_OBUF_906;
  wire reg_datain_3_OBUF_907;
  wire reg_datain_4_OBUF_908;
  wire reg_datain_5_OBUF_909;
  wire reg_datain_6_OBUF_910;
  wire reg_datain_7_OBUF_911;
  wire reg_datain_8_OBUF_912;
  wire reg_datain_9_OBUF_913;
  wire rst_n_IBUF_916;
  wire \clk_BUFGP/IBUFG_2 ;
  wire \myMemory/BU2/N1 ;
  wire GND;
  wire VCC;
  wire \NLW_myMemory/GND_O_UNCONNECTED ;
  wire \NLW_myMemory/VCC_O_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[31]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[30]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[29]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[28]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[23]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[22]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[21]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[20]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[15]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[14]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[13]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[12]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[7]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[6]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[5]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[4]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[3]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[2]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[1]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[0]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[31]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[30]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[29]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[28]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[23]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[22]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[21]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[20]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[15]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[14]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[13]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[12]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[7]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[6]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[5]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[4]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[3]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[2]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[1]_UNCONNECTED ;
  wire \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[0]_UNCONNECTED ;
  wire [1 : 0] \FSM/ALUOp ;
  wire [1 : 0] \FSM/ALUOp_mux0000 ;
  wire [1 : 0] \FSM/ALUSrcB ;
  wire [1 : 0] \FSM/ALUSrcB_mux0000 ;
  wire [1 : 0] \FSM/PC_Src ;
  wire [1 : 0] \FSM/PC_Src_mux0000 ;
  wire [3 : 0] \FSM/next_state ;
  wire [3 : 0] \FSM/next_state_mux0000 ;
  wire [3 : 0] \FSM/state ;
  wire [31 : 0] \InstrData/data ;
  wire [0 : 0] Mem_addr;
  wire [0 : 0] \PCReg/PC ;
  wire [0 : 0] \RegFile/R<1> ;
  wire [6 : 0] \myALU/ALU_ZERO_wg_cy ;
  wire [7 : 0] \myALU/ALU_ZERO_wg_lut ;
  wire [30 : 0] \myALU/Maddsub_alu_out_addsub0000_cy ;
  wire [31 : 0] \myALU/alu_out ;
  wire [31 : 0] \myALU/alu_out_addsub0000 ;
  wire [31 : 0] \myALU/alu_out_mux0001 ;
  wire [0 : 0] \reg_out/r2_dout ;
  wire [0 : 0] \myMemory/BU2/doutb ;
  X_ZERO   XST_GND (
    .O(\RegFile/R<1> [0])
  );
  X_ONE   XST_VCC (
    .O(alu_op_1_OBUF_497)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PCReg/PC_0  (
    .CLK(clk_BUFGP),
    .CE(PC_en),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(next_PC),
    .O(\PCReg/PC [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_out/r2_dout_0  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\RegFile/R_0_0_426 ),
    .O(\reg_out/r2_dout [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_31  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_31_OBUF_375),
    .O(\InstrData/data [31]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_30  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_30_OBUF_374),
    .O(\InstrData/data [30]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_29  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_29_OBUF_372),
    .O(\InstrData/data [29]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_28  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_28_OBUF_371),
    .O(\InstrData/data [28]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_27  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_27_OBUF_370),
    .O(\InstrData/data [27]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_26  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_26_OBUF_369),
    .O(\InstrData/data [26]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_25  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_25_OBUF_368),
    .O(\InstrData/data [25]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_24  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_24_OBUF_367),
    .O(\InstrData/data [24]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_23  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_23_OBUF_366),
    .O(\InstrData/data [23]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_22  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_22_OBUF_365),
    .O(\InstrData/data [22]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_21  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_21_OBUF_364),
    .O(\InstrData/data [21]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_20  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_20_OBUF_363),
    .O(\InstrData/data [20]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_19  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_19_OBUF_361),
    .O(\InstrData/data [19]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_18  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_18_OBUF_360),
    .O(\InstrData/data [18]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_17  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_17_OBUF_359),
    .O(\InstrData/data [17]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_16  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_16_OBUF_358),
    .O(\InstrData/data [16]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_15  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_15_OBUF_357),
    .O(\InstrData/data [15]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_14  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_14_OBUF_356),
    .O(\InstrData/data [14]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_13  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_13_OBUF_355),
    .O(\InstrData/data [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_12  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_12_OBUF_354),
    .O(\InstrData/data [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_11  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_11_OBUF_353),
    .O(\InstrData/data [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_10  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_10_OBUF_352),
    .O(\InstrData/data [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_9  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_9_OBUF_382),
    .O(\InstrData/data [9]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_8  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_8_OBUF_381),
    .O(\InstrData/data [8]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_7  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_7_OBUF_380),
    .O(\InstrData/data [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_6  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_6_OBUF_379),
    .O(\InstrData/data [6]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_5  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_5_OBUF_378),
    .O(\InstrData/data [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_4  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_4_OBUF_377),
    .O(\InstrData/data [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_3  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_3_OBUF_376),
    .O(\InstrData/data [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_2  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_2_OBUF_373),
    .O(\InstrData/data [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_1_OBUF_362),
    .O(\InstrData/data [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \InstrData/data_0  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(M_doutb_0_OBUF_351),
    .O(\InstrData/data [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RegFile/R_0_0  (
    .CLK(clk_BUFGP),
    .CE(\FSM/RegWrite_218 ),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(reg_datain_0_OBUF_882),
    .O(\RegFile/R_0_0_426 ),
    .SET(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_31  (
    .I(\myALU/alu_out_mux0001 [31]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [31]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_30  (
    .I(\myALU/alu_out_mux0001 [30]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [30]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_29  (
    .I(\myALU/alu_out_mux0001 [29]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [29]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_28  (
    .I(\myALU/alu_out_mux0001 [28]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [28]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_27  (
    .I(\myALU/alu_out_mux0001 [27]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [27]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_26  (
    .I(\myALU/alu_out_mux0001 [26]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [26]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_25  (
    .I(\myALU/alu_out_mux0001 [25]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [25]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_24  (
    .I(\myALU/alu_out_mux0001 [24]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [24]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_23  (
    .I(\myALU/alu_out_mux0001 [23]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [23]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_22  (
    .I(\myALU/alu_out_mux0001 [22]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [22]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_21  (
    .I(\myALU/alu_out_mux0001 [21]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [21]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_20  (
    .I(\myALU/alu_out_mux0001 [20]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [20]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_19  (
    .I(\myALU/alu_out_mux0001 [19]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [19]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_18  (
    .I(\myALU/alu_out_mux0001 [18]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [18]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_17  (
    .I(\myALU/alu_out_mux0001 [17]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [17]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_16  (
    .I(\myALU/alu_out_mux0001 [16]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [16]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_15  (
    .I(\myALU/alu_out_mux0001 [15]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [15]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_14  (
    .I(\myALU/alu_out_mux0001 [14]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [14]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_13  (
    .I(\myALU/alu_out_mux0001 [13]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [13]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_12  (
    .I(\myALU/alu_out_mux0001 [12]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [12]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_11  (
    .I(\myALU/alu_out_mux0001 [11]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [11]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_10  (
    .I(\myALU/alu_out_mux0001 [10]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [10]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_9  (
    .I(\myALU/alu_out_mux0001 [9]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [9]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_8  (
    .I(\myALU/alu_out_mux0001 [8]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [8]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_7  (
    .I(\myALU/alu_out_mux0001 [7]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [7]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_6  (
    .I(\myALU/alu_out_mux0001 [6]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [6]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_5  (
    .I(\myALU/alu_out_mux0001 [5]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [5]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_4  (
    .I(\myALU/alu_out_mux0001 [4]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [4]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_3  (
    .I(\myALU/alu_out_mux0001 [3]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [3]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_2  (
    .I(\myALU/alu_out_mux0001 [2]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [2]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_1  (
    .I(\myALU/alu_out_mux0001 [1]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [1]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \myALU/alu_out_0  (
    .I(\myALU/alu_out_mux0001 [0]),
    .CLK(alu_op_1_OBUF_497),
    .O(\myALU/alu_out [0]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<31>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [30]),
    .I1(\myALU/alu_out_mux0000230_718 ),
    .O(\myALU/alu_out_addsub0000 [31])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<30>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [29]),
    .I1(\myALU/alu_out_mux00002 ),
    .O(\myALU/alu_out_addsub0000 [30])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<30>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [29]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux00002 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [30])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<29>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [28]),
    .I1(\myALU/alu_out_mux000021_695 ),
    .O(\myALU/alu_out_addsub0000 [29])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<29>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [28]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000021_695 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [29])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<28>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [27]),
    .I1(\myALU/alu_out_mux000022_706 ),
    .O(\myALU/alu_out_addsub0000 [28])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<28>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [27]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000022_706 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [28])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<27>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [26]),
    .I1(\myALU/alu_out_mux000023_717 ),
    .O(\myALU/alu_out_addsub0000 [27])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<27>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [26]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000023_717 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [27])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<26>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [25]),
    .I1(\myALU/alu_out_mux000024_719 ),
    .O(\myALU/alu_out_addsub0000 [26])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<26>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [25]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000024_719 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [26])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<25>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [24]),
    .I1(\myALU/alu_out_mux000025_720 ),
    .O(\myALU/alu_out_addsub0000 [25])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<25>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [24]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000025_720 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [25])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<24>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [23]),
    .I1(\myALU/alu_out_mux000026_721 ),
    .O(\myALU/alu_out_addsub0000 [24])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<24>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [23]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000026_721 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [24])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<23>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [22]),
    .I1(\myALU/alu_out_mux000027_722 ),
    .O(\myALU/alu_out_addsub0000 [23])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<23>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [22]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000027_722 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [23])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<22>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [21]),
    .I1(\myALU/alu_out_mux000028_723 ),
    .O(\myALU/alu_out_addsub0000 [22])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<22>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [21]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000028_723 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [22])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<21>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [20]),
    .I1(\myALU/alu_out_mux000029_724 ),
    .O(\myALU/alu_out_addsub0000 [21])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<21>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [20]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux000029_724 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [21])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<20>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [19]),
    .I1(\myALU/alu_out_mux0000210_696 ),
    .O(\myALU/alu_out_addsub0000 [20])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<20>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [19]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000210_696 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [20])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<19>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [18]),
    .I1(\myALU/alu_out_mux0000211_697 ),
    .O(\myALU/alu_out_addsub0000 [19])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<19>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [18]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000211_697 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [19])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<18>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [17]),
    .I1(\myALU/alu_out_mux0000212_698 ),
    .O(\myALU/alu_out_addsub0000 [18])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<18>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [17]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000212_698 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [18])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<17>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [16]),
    .I1(\myALU/alu_out_mux0000213_699 ),
    .O(\myALU/alu_out_addsub0000 [17])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<17>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [16]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000213_699 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [17])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<16>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [15]),
    .I1(\myALU/alu_out_mux0000214_700 ),
    .O(\myALU/alu_out_addsub0000 [16])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<16>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [15]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000214_700 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [16])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<15>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [14]),
    .I1(\myALU/alu_out_mux0000215_701 ),
    .O(\myALU/alu_out_addsub0000 [15])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<15>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [14]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000215_701 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [15])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<14>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [13]),
    .I1(\myALU/alu_out_mux0000216_702 ),
    .O(\myALU/alu_out_addsub0000 [14])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<14>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [13]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000216_702 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [14])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<13>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [12]),
    .I1(\myALU/alu_out_mux0000217_703 ),
    .O(\myALU/alu_out_addsub0000 [13])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<13>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [12]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000217_703 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [13])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<12>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [11]),
    .I1(\myALU/alu_out_mux0000218_704 ),
    .O(\myALU/alu_out_addsub0000 [12])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<12>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [11]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000218_704 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [12])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<11>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [10]),
    .I1(\myALU/alu_out_mux0000219_705 ),
    .O(\myALU/alu_out_addsub0000 [11])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<11>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [10]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000219_705 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [11])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<10>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [9]),
    .I1(\myALU/alu_out_mux0000220_707 ),
    .O(\myALU/alu_out_addsub0000 [10])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<10>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [9]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000220_707 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [10])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<9>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [8]),
    .I1(\myALU/alu_out_mux0000221_708 ),
    .O(\myALU/alu_out_addsub0000 [9])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<9>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [8]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000221_708 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [9])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<8>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [7]),
    .I1(\myALU/alu_out_mux0000222_709 ),
    .O(\myALU/alu_out_addsub0000 [8])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<8>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [7]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000222_709 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [8])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<7>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [6]),
    .I1(\myALU/alu_out_mux0000223_710 ),
    .O(\myALU/alu_out_addsub0000 [7])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<7>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [6]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000223_710 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [7])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<6>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [5]),
    .I1(\myALU/alu_out_mux0000224_711 ),
    .O(\myALU/alu_out_addsub0000 [6])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<6>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [5]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000224_711 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [6])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<5>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [4]),
    .I1(\myALU/alu_out_mux0000225_712 ),
    .O(\myALU/alu_out_addsub0000 [5])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<5>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [4]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000225_712 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [5])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<4>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [3]),
    .I1(\myALU/alu_out_mux0000226_713 ),
    .O(\myALU/alu_out_addsub0000 [4])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<4>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [3]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000226_713 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [4])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<3>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [2]),
    .I1(\myALU/alu_out_mux0000227_714 ),
    .O(\myALU/alu_out_addsub0000 [3])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<3>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [2]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000227_714 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [3])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<2>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [1]),
    .I1(\myALU/alu_out_mux0000228_715 ),
    .O(\myALU/alu_out_addsub0000 [2])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<2>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [1]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000228_715 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [2])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<1>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_cy [0]),
    .I1(\myALU/alu_out_mux0000229_716 ),
    .O(\myALU/alu_out_addsub0000 [1])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<1>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_cy [0]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/alu_out_mux0000229_716 ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [1])
  );
  X_XOR2   \myALU/Maddsub_alu_out_addsub0000_xor<0>  (
    .I0(\myALU/Maddsub_alu_out_addsub0000_lut[10] ),
    .I1(\myALU/Maddsub_alu_out_addsub0000_lut[0] ),
    .O(\myALU/alu_out_addsub0000 [0])
  );
  X_MUX2   \myALU/Maddsub_alu_out_addsub0000_cy<0>  (
    .IB(\myALU/Maddsub_alu_out_addsub0000_lut[10] ),
    .IA(\PCReg/PC [0]),
    .SEL(\myALU/Maddsub_alu_out_addsub0000_lut[0] ),
    .O(\myALU/Maddsub_alu_out_addsub0000_cy [0])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/ALUSrcB_0  (
    .CLK(clk_BUFGP),
    .I(\FSM/ALUSrcB_mux0000 [1]),
    .SET(\FSM/ALUSrcB_Acst_inv ),
    .O(\FSM/ALUSrcB [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/ALUSrcB_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/ALUSrcB_mux0000 [0]),
    .O(\FSM/ALUSrcB [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_3  (
    .I(\FSM/next_state_mux0000 [3]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state [3]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_2  (
    .I(\FSM/next_state_mux0000 [2]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state [2]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_1  (
    .I(\FSM/next_state_mux0000 [1]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state [1]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_0  (
    .I(\FSM/next_state_mux0000 [0]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state [0]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_3  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [3]),
    .O(\FSM/state [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_2  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [2]),
    .O(\FSM/state [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [1]),
    .O(\FSM/state [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_0  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [0]),
    .O(\FSM/state [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/MemtoReg  (
    .CLK(clk_BUFGP),
    .CE(rst_n_IBUF_916),
    .I(\FSM/MemtoReg_mux0000 ),
    .O(\FSM/MemtoReg_195 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/RegDst  (
    .CLK(clk_BUFGP),
    .CE(rst_n_IBUF_916),
    .I(\FSM/RegDst_mux0000 ),
    .O(\FSM/RegDst_214 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/PCWrite  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/PCWrite_mux0000 ),
    .O(\FSM/PCWrite_202 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/IorD  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/IorD_mux0000 ),
    .O(\FSM/IorD_191 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/IRWrite  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/IRWrite_mux0000 ),
    .O(\FSM/IRWrite_187 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/ALUOp_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/ALUOp_mux0000 [0]),
    .O(\FSM/ALUOp [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/ALUOp_0  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/ALUOp_mux0000 [1]),
    .O(\FSM/ALUOp [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/PC_Src_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/PC_Src_mux0000 [0]),
    .O(\FSM/PC_Src [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/PC_Src_0  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/PC_Src_mux0000 [1]),
    .O(\FSM/PC_Src [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/ALUSrcA  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/ALUSrcA_mux0000 ),
    .O(\FSM/ALUSrcA_172 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/Branch  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/Branch_mux0000 ),
    .O(\FSM/Branch_183 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/RegWrite  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/RegWrite_mux0000 ),
    .O(\FSM/RegWrite_218 ),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<0>  (
    .ADR0(\myALU/alu_out [21]),
    .ADR1(\myALU/alu_out [22]),
    .ADR2(\myALU/alu_out [23]),
    .ADR3(\myALU/alu_out [24]),
    .O(\myALU/ALU_ZERO_wg_lut [0])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<0>  (
    .IB(alu_op_1_OBUF_497),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [0]),
    .O(\myALU/ALU_ZERO_wg_cy [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<1>  (
    .ADR0(\myALU/alu_out [18]),
    .ADR1(\myALU/alu_out [19]),
    .ADR2(\myALU/alu_out [20]),
    .ADR3(\myALU/alu_out [25]),
    .O(\myALU/ALU_ZERO_wg_lut [1])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<1>  (
    .IB(\myALU/ALU_ZERO_wg_cy [0]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [1]),
    .O(\myALU/ALU_ZERO_wg_cy [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<2>  (
    .ADR0(\myALU/alu_out [15]),
    .ADR1(\myALU/alu_out [16]),
    .ADR2(\myALU/alu_out [17]),
    .ADR3(\myALU/alu_out [26]),
    .O(\myALU/ALU_ZERO_wg_lut [2])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<2>  (
    .IB(\myALU/ALU_ZERO_wg_cy [1]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [2]),
    .O(\myALU/ALU_ZERO_wg_cy [2])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<3>  (
    .ADR0(\myALU/alu_out [12]),
    .ADR1(\myALU/alu_out [13]),
    .ADR2(\myALU/alu_out [14]),
    .ADR3(\myALU/alu_out [27]),
    .O(\myALU/ALU_ZERO_wg_lut [3])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<3>  (
    .IB(\myALU/ALU_ZERO_wg_cy [2]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [3]),
    .O(\myALU/ALU_ZERO_wg_cy [3])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<4>  (
    .ADR0(\myALU/alu_out [9]),
    .ADR1(\myALU/alu_out [10]),
    .ADR2(\myALU/alu_out [11]),
    .ADR3(\myALU/alu_out [28]),
    .O(\myALU/ALU_ZERO_wg_lut [4])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<4>  (
    .IB(\myALU/ALU_ZERO_wg_cy [3]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [4]),
    .O(\myALU/ALU_ZERO_wg_cy [4])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<5>  (
    .ADR0(\myALU/alu_out [6]),
    .ADR1(\myALU/alu_out [7]),
    .ADR2(\myALU/alu_out [8]),
    .ADR3(\myALU/alu_out [29]),
    .O(\myALU/ALU_ZERO_wg_lut [5])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<5>  (
    .IB(\myALU/ALU_ZERO_wg_cy [4]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [5]),
    .O(\myALU/ALU_ZERO_wg_cy [5])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<6>  (
    .ADR0(\myALU/alu_out [3]),
    .ADR1(\myALU/alu_out [4]),
    .ADR2(\myALU/alu_out [5]),
    .ADR3(\myALU/alu_out [30]),
    .O(\myALU/ALU_ZERO_wg_lut [6])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<6>  (
    .IB(\myALU/ALU_ZERO_wg_cy [5]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [6]),
    .O(\myALU/ALU_ZERO_wg_cy [6])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \myALU/ALU_ZERO_wg_lut<7>  (
    .ADR0(\myALU/alu_out [0]),
    .ADR1(\myALU/alu_out [1]),
    .ADR2(\myALU/alu_out [2]),
    .ADR3(\myALU/alu_out [31]),
    .O(\myALU/ALU_ZERO_wg_lut [7])
  );
  X_MUX2   \myALU/ALU_ZERO_wg_cy<7>  (
    .IB(\myALU/ALU_ZERO_wg_cy [6]),
    .IA(\RegFile/R<1> [0]),
    .SEL(\myALU/ALU_ZERO_wg_lut [7]),
    .O(ALU_ZERO_OBUF_161)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFD ))
  \FSM/next_state_not00011  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [3]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/next_state_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h082C ))
  \FSM/next_state_mux0000<3>1  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/state [3]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [1]),
    .O(\FSM/next_state_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0464 ))
  \FSM/next_state_mux0000<1>1  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [0]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [3]),
    .O(\FSM/next_state_mux0000 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<9>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [9]),
    .O(reg_datain_9_OBUF_913)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<8>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [8]),
    .O(reg_datain_8_OBUF_912)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<7>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [7]),
    .O(reg_datain_7_OBUF_911)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<6>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [6]),
    .O(reg_datain_6_OBUF_910)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<5>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [5]),
    .O(reg_datain_5_OBUF_909)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<4>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [4]),
    .O(reg_datain_4_OBUF_908)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<3>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [3]),
    .O(reg_datain_3_OBUF_907)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<31>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [31]),
    .O(reg_datain_31_OBUF_906)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<30>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [30]),
    .O(reg_datain_30_OBUF_905)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<2>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [2]),
    .O(reg_datain_2_OBUF_904)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<29>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [29]),
    .O(reg_datain_29_OBUF_903)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<28>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [28]),
    .O(reg_datain_28_OBUF_902)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<27>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [27]),
    .O(reg_datain_27_OBUF_901)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<26>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [26]),
    .O(reg_datain_26_OBUF_900)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<25>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [25]),
    .O(reg_datain_25_OBUF_899)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<24>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [24]),
    .O(reg_datain_24_OBUF_898)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<23>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [23]),
    .O(reg_datain_23_OBUF_897)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<22>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [22]),
    .O(reg_datain_22_OBUF_896)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<21>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [21]),
    .O(reg_datain_21_OBUF_895)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<20>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [20]),
    .O(reg_datain_20_OBUF_894)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<1>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [1]),
    .O(reg_datain_1_OBUF_893)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<19>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [19]),
    .O(reg_datain_19_OBUF_892)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<18>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [18]),
    .O(reg_datain_18_OBUF_891)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<17>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [17]),
    .O(reg_datain_17_OBUF_890)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<16>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [16]),
    .O(reg_datain_16_OBUF_889)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<15>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [15]),
    .O(reg_datain_15_OBUF_888)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<14>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [14]),
    .O(reg_datain_14_OBUF_887)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<13>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [13]),
    .O(reg_datain_13_OBUF_886)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<12>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [12]),
    .O(reg_datain_12_OBUF_885)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<11>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [11]),
    .O(reg_datain_11_OBUF_884)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \RegDatainMux/reg_datain<10>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [10]),
    .O(reg_datain_10_OBUF_883)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \AluControl/Mmux_post_ALUOp31  (
    .ADR0(\FSM/ALUOp [0]),
    .ADR1(\FSM/ALUOp [1]),
    .O(alu_op_2_OBUF_498)
  );
  X_LUT4 #(
    .INIT ( 16'hA08A ))
  \PC_Generator/Mmux_next_PC21  (
    .ADR0(\myALU/alu_out [0]),
    .ADR1(rst_n_IBUF_916),
    .ADR2(\FSM/PC_Src [0]),
    .ADR3(\FSM/PC_Src [1]),
    .O(next_PC)
  );
  X_LUT3 #(
    .INIT ( 8'hEC ))
  \PC_Enable/PCEn1  (
    .ADR0(\FSM/Branch_183 ),
    .ADR1(\FSM/PCWrite_202 ),
    .ADR2(ALU_ZERO_OBUF_161),
    .O(PC_en)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \ALURESULT/alu_out<0>1  (
    .ADR0(rst_n_IBUF_916),
    .ADR1(\myALU/alu_out [0]),
    .O(alu_out_0_OBUF_531)
  );
  X_LUT4 #(
    .INIT ( 16'hF111 ))
  \FSM/ALUSrcB_mux0000<1>1  (
    .ADR0(\FSM/state [3]),
    .ADR1(\FSM/N12 ),
    .ADR2(\FSM/ALUSrcB [0]),
    .ADR3(\FSM/N2 ),
    .O(\FSM/ALUSrcB_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFDA8 ))
  \FSM/ALUOp_mux0000<1>11  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [0]),
    .ADR2(\FSM/state [3]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/N2 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \myALU/ALU_POSITIVE2  (
    .ADR0(\myALU/alu_out [22]),
    .ADR1(\myALU/alu_out [10]),
    .ADR2(\myALU/alu_out [9]),
    .O(\myALU/ALU_POSITIVE2_573 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE7  (
    .ADR0(\myALU/alu_out [12]),
    .ADR1(\myALU/alu_out [13]),
    .ADR2(\myALU/alu_out [14]),
    .ADR3(\myALU/alu_out [0]),
    .O(\myALU/ALU_POSITIVE7_580 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE18  (
    .ADR0(\myALU/alu_out [16]),
    .ADR1(\myALU/alu_out [17]),
    .ADR2(\myALU/alu_out [18]),
    .ADR3(\myALU/alu_out [19]),
    .O(\myALU/ALU_POSITIVE18_572 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE23  (
    .ADR0(\myALU/alu_out [1]),
    .ADR1(\myALU/alu_out [20]),
    .ADR2(\myALU/alu_out [21]),
    .ADR3(\myALU/alu_out [11]),
    .O(\myALU/ALU_POSITIVE23_574 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE33  (
    .ADR0(\myALU/ALU_POSITIVE2_573 ),
    .ADR1(\myALU/ALU_POSITIVE7_580 ),
    .ADR2(\myALU/ALU_POSITIVE18_572 ),
    .ADR3(\myALU/ALU_POSITIVE23_574 ),
    .O(\myALU/ALU_POSITIVE33_575 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE46  (
    .ADR0(\myALU/alu_out [23]),
    .ADR1(\myALU/alu_out [24]),
    .ADR2(\myALU/alu_out [25]),
    .ADR3(\myALU/alu_out [26]),
    .O(\myALU/ALU_POSITIVE46_576 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE51  (
    .ADR0(\myALU/alu_out [27]),
    .ADR1(\myALU/alu_out [28]),
    .ADR2(\myALU/alu_out [29]),
    .ADR3(\myALU/alu_out [2]),
    .O(\myALU/ALU_POSITIVE51_577 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE63  (
    .ADR0(\myALU/alu_out [30]),
    .ADR1(\myALU/alu_out [3]),
    .ADR2(\myALU/alu_out [4]),
    .ADR3(\myALU/alu_out [5]),
    .O(\myALU/ALU_POSITIVE63_578 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE68  (
    .ADR0(\myALU/alu_out [6]),
    .ADR1(\myALU/alu_out [7]),
    .ADR2(\myALU/alu_out [8]),
    .ADR3(\myALU/alu_out [15]),
    .O(\myALU/ALU_POSITIVE68_579 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \myALU/ALU_POSITIVE78  (
    .ADR0(\myALU/ALU_POSITIVE46_576 ),
    .ADR1(\myALU/ALU_POSITIVE51_577 ),
    .ADR2(\myALU/ALU_POSITIVE63_578 ),
    .ADR3(\myALU/ALU_POSITIVE68_579 ),
    .O(\myALU/ALU_POSITIVE78_581 )
  );
  X_LUT3 #(
    .INIT ( 8'h32 ))
  \myALU/ALU_POSITIVE101  (
    .ADR0(\myALU/ALU_POSITIVE78_581 ),
    .ADR1(\myALU/alu_out [31]),
    .ADR2(\myALU/ALU_POSITIVE33_575 ),
    .O(ALU_POSITIVE_OBUF_159)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \FSM/RegDst_mux000011  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [2]),
    .O(\FSM/N12 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \FSM/ALUOp_mux0000<1>1  (
    .ADR0(\FSM/ALUOp [0]),
    .ADR1(\FSM/N2 ),
    .ADR2(\FSM/N3 ),
    .O(\FSM/ALUOp_mux0000 [1])
  );
  X_BUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_916)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \FSM/next_state_mux0000<2>11  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [3]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/N3 )
  );
  X_LUT3 #(
    .INIT ( 8'hB8 ))
  \myALU/alu_out_mux0001<0>  (
    .ADR0(\PCReg/PC [0]),
    .ADR1(\FSM/ALUOp [1]),
    .ADR2(\myALU/alu_out_addsub0000 [0]),
    .O(\myALU/alu_out_mux0001 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h069A ))
  \FSM/next_state_mux0000<2>  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [3]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/next_state_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hD888 ))
  \MemAddr/Mem_addr<0>1  (
    .ADR0(\FSM/IorD_191 ),
    .ADR1(\PCReg/PC [0]),
    .ADR2(rst_n_IBUF_916),
    .ADR3(\myALU/alu_out [0]),
    .O(Mem_addr[0])
  );
  X_LUT4 #(
    .INIT ( 16'hD888 ))
  \RegDatainMux/reg_datain<0>1  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\InstrData/data [0]),
    .ADR2(rst_n_IBUF_916),
    .ADR3(\myALU/alu_out [0]),
    .O(reg_datain_0_OBUF_882)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000232  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut[10] )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000021  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux00002 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000022  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000021_695 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000023  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000022_706 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000024  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000023_717 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000025  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000024_719 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000026  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000025_720 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000027  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000026_721 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000028  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000027_722 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux000029  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000028_723 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000210  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux000029_724 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000211  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000210_696 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000212  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000211_697 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000213  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000212_698 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000214  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000213_699 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000215  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000214_700 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000216  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000215_701 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000217  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000216_702 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000218  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000217_703 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000219  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000218_704 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000220  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000219_705 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000221  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000220_707 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000222  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000221_708 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000223  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000222_709 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000224  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000223_710 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000225  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000224_711 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000226  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000225_712 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000227  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000226_713 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000228  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000227_714 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000229  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000228_715 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000230  (
    .ADR0(\FSM/ALUOp_0_1_166 ),
    .ADR1(\FSM/ALUOp [1]),
    .O(\myALU/alu_out_mux0000229_716 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \myALU/alu_out_mux0000231  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/ALUOp [0]),
    .O(\myALU/alu_out_mux0000230_718 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<9>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [9]),
    .O(\myALU/alu_out_mux0001 [9])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<8>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [8]),
    .O(\myALU/alu_out_mux0001 [8])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<7>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [7]),
    .O(\myALU/alu_out_mux0001 [7])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<6>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [6]),
    .O(\myALU/alu_out_mux0001 [6])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<5>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [5]),
    .O(\myALU/alu_out_mux0001 [5])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<4>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [4]),
    .O(\myALU/alu_out_mux0001 [4])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<3>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [3]),
    .O(\myALU/alu_out_mux0001 [3])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<31>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [31]),
    .O(\myALU/alu_out_mux0001 [31])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<30>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [30]),
    .O(\myALU/alu_out_mux0001 [30])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<2>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [2]),
    .O(\myALU/alu_out_mux0001 [2])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<29>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [29]),
    .O(\myALU/alu_out_mux0001 [29])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<28>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [28]),
    .O(\myALU/alu_out_mux0001 [28])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<27>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [27]),
    .O(\myALU/alu_out_mux0001 [27])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<26>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [26]),
    .O(\myALU/alu_out_mux0001 [26])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<25>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [25]),
    .O(\myALU/alu_out_mux0001 [25])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<24>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [24]),
    .O(\myALU/alu_out_mux0001 [24])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<23>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [23]),
    .O(\myALU/alu_out_mux0001 [23])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<22>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [22]),
    .O(\myALU/alu_out_mux0001 [22])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<21>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [21]),
    .O(\myALU/alu_out_mux0001 [21])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<20>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [20]),
    .O(\myALU/alu_out_mux0001 [20])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<1>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [1]),
    .O(\myALU/alu_out_mux0001 [1])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<19>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [19]),
    .O(\myALU/alu_out_mux0001 [19])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<18>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [18]),
    .O(\myALU/alu_out_mux0001 [18])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<17>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [17]),
    .O(\myALU/alu_out_mux0001 [17])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<16>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [16]),
    .O(\myALU/alu_out_mux0001 [16])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<15>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [15]),
    .O(\myALU/alu_out_mux0001 [15])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<14>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [14]),
    .O(\myALU/alu_out_mux0001 [14])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<13>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [13]),
    .O(\myALU/alu_out_mux0001 [13])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<12>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [12]),
    .O(\myALU/alu_out_mux0001 [12])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<11>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [11]),
    .O(\myALU/alu_out_mux0001 [11])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \myALU/alu_out_mux0001<10>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\myALU/alu_out_addsub0000 [10]),
    .O(\myALU/alu_out_mux0001 [10])
  );
  X_LUT4 #(
    .INIT ( 16'h2009 ))
  \FSM/next_state_mux0000<0>  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/state [3]),
    .O(\FSM/next_state_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9996 ))
  \myALU/Maddsub_alu_out_addsub0000_lut<0>  (
    .ADR0(\reg_out/r2_dout [0]),
    .ADR1(\PCReg/PC [0]),
    .ADR2(\FSM/ALUOp_0_1_166 ),
    .ADR3(\FSM/ALUOp [1]),
    .O(\myALU/Maddsub_alu_out_addsub0000_lut[0] )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/ALUOp_0_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/ALUOp_mux0000 [1]),
    .O(\FSM/ALUOp_0_1_166 ),
    .CE(VCC),
    .SET(GND)
  );
  X_INV   \RegFile/rst_n_inv321_INV_0  (
    .I(rst_n_IBUF_916),
    .O(\FSM/ALUSrcB_Acst_inv )
  );
  X_LUT4 #(
    .INIT ( 16'hFF20 ))
  \FSM/PC_Src_mux0000<0>11  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [3]),
    .ADR3(\FSM/PC_Src [1]),
    .O(\FSM/PC_Src_mux0000<0>1 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \FSM/PC_Src_mux0000<0>12  (
    .ADR0(\FSM/PC_Src [1]),
    .ADR1(\FSM/N12 ),
    .O(\FSM/PC_Src_mux0000<0>11_210 )
  );
  X_MUX2   \FSM/PC_Src_mux0000<0>1_f5  (
    .IA(\FSM/PC_Src_mux0000<0>11_210 ),
    .IB(\FSM/PC_Src_mux0000<0>1 ),
    .SEL(\FSM/state [0]),
    .O(\FSM/PC_Src_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \FSM/ALUSrcA_mux00001  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/ALUSrcA_172 ),
    .O(\FSM/ALUSrcA_mux00001_174 )
  );
  X_LUT4 #(
    .INIT ( 16'hC8EA ))
  \FSM/ALUSrcA_mux00002  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/ALUSrcA_172 ),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/ALUSrcA_mux00002_175 )
  );
  X_MUX2   \FSM/ALUSrcA_mux0000_f5  (
    .IA(\FSM/ALUSrcA_mux00002_175 ),
    .IB(\FSM/ALUSrcA_mux00001_174 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/ALUSrcA_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hA2 ))
  \FSM/IorD_mux00001  (
    .ADR0(\FSM/IorD_191 ),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [0]),
    .O(\FSM/IorD_mux00001_193 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF28 ))
  \FSM/IorD_mux00002  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [1]),
    .ADR3(\FSM/IorD_191 ),
    .O(\FSM/IorD_mux00002_194 )
  );
  X_MUX2   \FSM/IorD_mux0000_f5  (
    .IA(\FSM/IorD_mux00002_194 ),
    .IB(\FSM/IorD_mux00001_193 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/IorD_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \FSM/ALUOp_mux0000<0>1  (
    .ADR0(\FSM/ALUOp [1]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [2]),
    .O(\FSM/ALUOp_mux0000<0>1_169 )
  );
  X_LUT4 #(
    .INIT ( 16'hEA08 ))
  \FSM/ALUOp_mux0000<0>2  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/ALUOp [1]),
    .O(\FSM/ALUOp_mux0000<0>2_170 )
  );
  X_MUX2   \FSM/ALUOp_mux0000<0>_f5  (
    .IA(\FSM/ALUOp_mux0000<0>2_170 ),
    .IB(\FSM/ALUOp_mux0000<0>1_169 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/ALUOp_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hAAA2 ))
  \FSM/RegDst_mux00001  (
    .ADR0(\FSM/RegDst_214 ),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/RegDst_mux00001_216 )
  );
  X_LUT4 #(
    .INIT ( 16'hFD80 ))
  \FSM/RegDst_mux00002  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/RegDst_214 ),
    .O(\FSM/RegDst_mux00002_217 )
  );
  X_MUX2   \FSM/RegDst_mux0000_f5  (
    .IA(\FSM/RegDst_mux00002_217 ),
    .IB(\FSM/RegDst_mux00001_216 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/RegDst_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAA2 ))
  \FSM/MemtoReg_mux00001  (
    .ADR0(\FSM/MemtoReg_195 ),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/MemtoReg_mux00001_197 )
  );
  X_LUT4 #(
    .INIT ( 16'h4CCE ))
  \FSM/MemtoReg_mux00002  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/MemtoReg_195 ),
    .ADR2(\FSM/state [1]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/MemtoReg_mux00002_198 )
  );
  X_MUX2   \FSM/MemtoReg_mux0000_f5  (
    .IA(\FSM/MemtoReg_mux00002_198 ),
    .IB(\FSM/MemtoReg_mux00001_197 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/MemtoReg_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFE10 ))
  \FSM/ALUSrcB_mux0000<0>1  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/ALUSrcB [1]),
    .O(\FSM/ALUSrcB_mux0000<0>1_180 )
  );
  X_LUT4 #(
    .INIT ( 16'h8DCA ))
  \FSM/ALUSrcB_mux0000<0>2  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/ALUSrcB [1]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [1]),
    .O(\FSM/ALUSrcB_mux0000<0>2_181 )
  );
  X_MUX2   \FSM/ALUSrcB_mux0000<0>_f5  (
    .IA(\FSM/ALUSrcB_mux0000<0>2_181 ),
    .IB(\FSM/ALUSrcB_mux0000<0>1_180 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/ALUSrcB_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFF02 ))
  \FSM/RegWrite_mux00001  (
    .ADR0(\FSM/state [1]),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/RegWrite_218 ),
    .O(\FSM/RegWrite_mux00001_220 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAB8 ))
  \FSM/RegWrite_mux00002  (
    .ADR0(\FSM/RegWrite_218 ),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/RegWrite_mux00002_221 )
  );
  X_MUX2   \FSM/RegWrite_mux0000_f5  (
    .IA(\FSM/RegWrite_mux00002_221 ),
    .IB(\FSM/RegWrite_mux00001_220 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/RegWrite_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hA8AB ))
  \FSM/Branch_mux00001  (
    .ADR0(\FSM/Branch_183 ),
    .ADR1(\FSM/state [0]),
    .ADR2(\FSM/state [1]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/Branch_mux00001_185 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \FSM/Branch_mux00002  (
    .ADR0(\FSM/Branch_183 ),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [1]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/Branch_mux00002_186 )
  );
  X_MUX2   \FSM/Branch_mux0000_f5  (
    .IA(\FSM/Branch_mux00002_186 ),
    .IB(\FSM/Branch_mux00001_185 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/Branch_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hAE ))
  \FSM/IRWrite_mux00001  (
    .ADR0(\FSM/IRWrite_187 ),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [0]),
    .O(\FSM/IRWrite_mux00001_189 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAA2 ))
  \FSM/IRWrite_mux00002  (
    .ADR0(\FSM/IRWrite_187 ),
    .ADR1(\FSM/state [0]),
    .ADR2(\FSM/state [1]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/IRWrite_mux00002_190 )
  );
  X_MUX2   \FSM/IRWrite_mux0000_f5  (
    .IA(\FSM/IRWrite_mux00002_190 ),
    .IB(\FSM/IRWrite_mux00001_189 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/IRWrite_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hAE2A ))
  \FSM/PCWrite_mux0000471  (
    .ADR0(\FSM/PCWrite_202 ),
    .ADR1(\FSM/state [0]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [1]),
    .O(\FSM/PCWrite_mux000047 )
  );
  X_LUT4 #(
    .INIT ( 16'hA8AB ))
  \FSM/PCWrite_mux0000472  (
    .ADR0(\FSM/PCWrite_202 ),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [1]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/PCWrite_mux0000471_205 )
  );
  X_MUX2   \FSM/PCWrite_mux000047_f5  (
    .IA(\FSM/PCWrite_mux0000471_205 ),
    .IB(\FSM/PCWrite_mux000047 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/PCWrite_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA2B ))
  \FSM/PC_Src_mux0000<1>1  (
    .ADR0(\FSM/PC_Src [0]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/PC_Src_mux0000<1>1_212 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAA8 ))
  \FSM/PC_Src_mux0000<1>2  (
    .ADR0(\FSM/PC_Src [0]),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/state [1]),
    .O(\FSM/PC_Src_mux0000<1>2_213 )
  );
  X_MUX2   \FSM/PC_Src_mux0000<1>_f5  (
    .IA(\FSM/PC_Src_mux0000<1>2_213 ),
    .IB(\FSM/PC_Src_mux0000<1>1_212 ),
    .SEL(\FSM/state [3]),
    .O(\FSM/PC_Src_mux0000 [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_3_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [3]),
    .O(\FSM/state_3_1_242 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_2_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [2]),
    .O(\FSM/state_2_1_240 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_1_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [1]),
    .O(\FSM/state_1_1_238 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/state_0_1  (
    .CLK(clk_BUFGP),
    .RST(\FSM/ALUSrcB_Acst_inv ),
    .I(\FSM/next_state [0]),
    .O(\FSM/state_0_1_236 ),
    .CE(VCC),
    .SET(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_3_1  (
    .I(\FSM/next_state_mux0000 [3]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_3_1_229 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_2_1  (
    .I(\FSM/next_state_mux0000 [2]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_2_1_227 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_1_1  (
    .I(\FSM/next_state_mux0000 [1]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_1_1_225 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_0_1  (
    .I(\FSM/next_state_mux0000 [0]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_0_1_223 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_OPAD   \ALUOp<0>  (
    .PAD(ALUOp[0])
  );
  X_OPAD   \ALUOp<1>  (
    .PAD(ALUOp[1])
  );
  X_OPAD   ALUSrcA_781 (
    .PAD(ALUSrcA)
  );
  X_OPAD   \ALUSrcB<0>  (
    .PAD(ALUSrcB[0])
  );
  X_OPAD   \ALUSrcB<1>  (
    .PAD(ALUSrcB[1])
  );
  X_OPAD   ALU_POSITIVE_784 (
    .PAD(ALU_POSITIVE)
  );
  X_OPAD   ALU_ZERO_785 (
    .PAD(ALU_ZERO)
  );
  X_OPAD   Branch_786 (
    .PAD(Branch)
  );
  X_OPAD   Branch_gz_787 (
    .PAD(Branch_gz)
  );
  X_OPAD   Branch_ne_788 (
    .PAD(Branch_ne)
  );
  X_OPAD   IRWrite_789 (
    .PAD(IRWrite)
  );
  X_OPAD   \Immed<0>  (
    .PAD(Immed[0])
  );
  X_OPAD   \Immed<10>  (
    .PAD(Immed[10])
  );
  X_OPAD   \Immed<11>  (
    .PAD(Immed[11])
  );
  X_OPAD   \Immed<12>  (
    .PAD(Immed[12])
  );
  X_OPAD   \Immed<13>  (
    .PAD(Immed[13])
  );
  X_OPAD   \Immed<14>  (
    .PAD(Immed[14])
  );
  X_OPAD   \Immed<15>  (
    .PAD(Immed[15])
  );
  X_OPAD   \Immed<1>  (
    .PAD(Immed[1])
  );
  X_OPAD   \Immed<2>  (
    .PAD(Immed[2])
  );
  X_OPAD   \Immed<3>  (
    .PAD(Immed[3])
  );
  X_OPAD   \Immed<4>  (
    .PAD(Immed[4])
  );
  X_OPAD   \Immed<5>  (
    .PAD(Immed[5])
  );
  X_OPAD   \Immed<6>  (
    .PAD(Immed[6])
  );
  X_OPAD   \Immed<7>  (
    .PAD(Immed[7])
  );
  X_OPAD   \Immed<8>  (
    .PAD(Immed[8])
  );
  X_OPAD   \Immed<9>  (
    .PAD(Immed[9])
  );
  X_OPAD   IorD_806 (
    .PAD(IorD)
  );
  X_OPAD   \Jump_addr<0>  (
    .PAD(Jump_addr[0])
  );
  X_OPAD   \Jump_addr<10>  (
    .PAD(Jump_addr[10])
  );
  X_OPAD   \Jump_addr<11>  (
    .PAD(Jump_addr[11])
  );
  X_OPAD   \Jump_addr<12>  (
    .PAD(Jump_addr[12])
  );
  X_OPAD   \Jump_addr<13>  (
    .PAD(Jump_addr[13])
  );
  X_OPAD   \Jump_addr<14>  (
    .PAD(Jump_addr[14])
  );
  X_OPAD   \Jump_addr<15>  (
    .PAD(Jump_addr[15])
  );
  X_OPAD   \Jump_addr<16>  (
    .PAD(Jump_addr[16])
  );
  X_OPAD   \Jump_addr<17>  (
    .PAD(Jump_addr[17])
  );
  X_OPAD   \Jump_addr<18>  (
    .PAD(Jump_addr[18])
  );
  X_OPAD   \Jump_addr<19>  (
    .PAD(Jump_addr[19])
  );
  X_OPAD   \Jump_addr<1>  (
    .PAD(Jump_addr[1])
  );
  X_OPAD   \Jump_addr<20>  (
    .PAD(Jump_addr[20])
  );
  X_OPAD   \Jump_addr<21>  (
    .PAD(Jump_addr[21])
  );
  X_OPAD   \Jump_addr<22>  (
    .PAD(Jump_addr[22])
  );
  X_OPAD   \Jump_addr<23>  (
    .PAD(Jump_addr[23])
  );
  X_OPAD   \Jump_addr<24>  (
    .PAD(Jump_addr[24])
  );
  X_OPAD   \Jump_addr<25>  (
    .PAD(Jump_addr[25])
  );
  X_OPAD   \Jump_addr<2>  (
    .PAD(Jump_addr[2])
  );
  X_OPAD   \Jump_addr<3>  (
    .PAD(Jump_addr[3])
  );
  X_OPAD   \Jump_addr<4>  (
    .PAD(Jump_addr[4])
  );
  X_OPAD   \Jump_addr<5>  (
    .PAD(Jump_addr[5])
  );
  X_OPAD   \Jump_addr<6>  (
    .PAD(Jump_addr[6])
  );
  X_OPAD   \Jump_addr<7>  (
    .PAD(Jump_addr[7])
  );
  X_OPAD   \Jump_addr<8>  (
    .PAD(Jump_addr[8])
  );
  X_OPAD   \Jump_addr<9>  (
    .PAD(Jump_addr[9])
  );
  X_OPAD   \M_doutb<0>  (
    .PAD(M_doutb[0])
  );
  X_OPAD   \M_doutb<10>  (
    .PAD(M_doutb[10])
  );
  X_OPAD   \M_doutb<11>  (
    .PAD(M_doutb[11])
  );
  X_OPAD   \M_doutb<12>  (
    .PAD(M_doutb[12])
  );
  X_OPAD   \M_doutb<13>  (
    .PAD(M_doutb[13])
  );
  X_OPAD   \M_doutb<14>  (
    .PAD(M_doutb[14])
  );
  X_OPAD   \M_doutb<15>  (
    .PAD(M_doutb[15])
  );
  X_OPAD   \M_doutb<16>  (
    .PAD(M_doutb[16])
  );
  X_OPAD   \M_doutb<17>  (
    .PAD(M_doutb[17])
  );
  X_OPAD   \M_doutb<18>  (
    .PAD(M_doutb[18])
  );
  X_OPAD   \M_doutb<19>  (
    .PAD(M_doutb[19])
  );
  X_OPAD   \M_doutb<1>  (
    .PAD(M_doutb[1])
  );
  X_OPAD   \M_doutb<20>  (
    .PAD(M_doutb[20])
  );
  X_OPAD   \M_doutb<21>  (
    .PAD(M_doutb[21])
  );
  X_OPAD   \M_doutb<22>  (
    .PAD(M_doutb[22])
  );
  X_OPAD   \M_doutb<23>  (
    .PAD(M_doutb[23])
  );
  X_OPAD   \M_doutb<24>  (
    .PAD(M_doutb[24])
  );
  X_OPAD   \M_doutb<25>  (
    .PAD(M_doutb[25])
  );
  X_OPAD   \M_doutb<26>  (
    .PAD(M_doutb[26])
  );
  X_OPAD   \M_doutb<27>  (
    .PAD(M_doutb[27])
  );
  X_OPAD   \M_doutb<28>  (
    .PAD(M_doutb[28])
  );
  X_OPAD   \M_doutb<29>  (
    .PAD(M_doutb[29])
  );
  X_OPAD   \M_doutb<2>  (
    .PAD(M_doutb[2])
  );
  X_OPAD   \M_doutb<30>  (
    .PAD(M_doutb[30])
  );
  X_OPAD   \M_doutb<31>  (
    .PAD(M_doutb[31])
  );
  X_OPAD   \M_doutb<3>  (
    .PAD(M_doutb[3])
  );
  X_OPAD   \M_doutb<4>  (
    .PAD(M_doutb[4])
  );
  X_OPAD   \M_doutb<5>  (
    .PAD(M_doutb[5])
  );
  X_OPAD   \M_doutb<6>  (
    .PAD(M_doutb[6])
  );
  X_OPAD   \M_doutb<7>  (
    .PAD(M_doutb[7])
  );
  X_OPAD   \M_doutb<8>  (
    .PAD(M_doutb[8])
  );
  X_OPAD   \M_doutb<9>  (
    .PAD(M_doutb[9])
  );
  X_OPAD   MemRead_865 (
    .PAD(MemRead)
  );
  X_OPAD   MemWrite_866 (
    .PAD(MemWrite)
  );
  X_OPAD   MemtoReg_867 (
    .PAD(MemtoReg)
  );
  X_OPAD   \PC<0>  (
    .PAD(PC[0])
  );
  X_OPAD   \PC<10>  (
    .PAD(PC[10])
  );
  X_OPAD   \PC<11>  (
    .PAD(PC[11])
  );
  X_OPAD   \PC<12>  (
    .PAD(PC[12])
  );
  X_OPAD   \PC<13>  (
    .PAD(PC[13])
  );
  X_OPAD   \PC<14>  (
    .PAD(PC[14])
  );
  X_OPAD   \PC<15>  (
    .PAD(PC[15])
  );
  X_OPAD   \PC<16>  (
    .PAD(PC[16])
  );
  X_OPAD   \PC<17>  (
    .PAD(PC[17])
  );
  X_OPAD   \PC<18>  (
    .PAD(PC[18])
  );
  X_OPAD   \PC<19>  (
    .PAD(PC[19])
  );
  X_OPAD   \PC<1>  (
    .PAD(PC[1])
  );
  X_OPAD   \PC<20>  (
    .PAD(PC[20])
  );
  X_OPAD   \PC<21>  (
    .PAD(PC[21])
  );
  X_OPAD   \PC<22>  (
    .PAD(PC[22])
  );
  X_OPAD   \PC<23>  (
    .PAD(PC[23])
  );
  X_OPAD   \PC<24>  (
    .PAD(PC[24])
  );
  X_OPAD   \PC<25>  (
    .PAD(PC[25])
  );
  X_OPAD   \PC<26>  (
    .PAD(PC[26])
  );
  X_OPAD   \PC<27>  (
    .PAD(PC[27])
  );
  X_OPAD   \PC<28>  (
    .PAD(PC[28])
  );
  X_OPAD   \PC<29>  (
    .PAD(PC[29])
  );
  X_OPAD   \PC<2>  (
    .PAD(PC[2])
  );
  X_OPAD   \PC<30>  (
    .PAD(PC[30])
  );
  X_OPAD   \PC<31>  (
    .PAD(PC[31])
  );
  X_OPAD   \PC<3>  (
    .PAD(PC[3])
  );
  X_OPAD   \PC<4>  (
    .PAD(PC[4])
  );
  X_OPAD   \PC<5>  (
    .PAD(PC[5])
  );
  X_OPAD   \PC<6>  (
    .PAD(PC[6])
  );
  X_OPAD   \PC<7>  (
    .PAD(PC[7])
  );
  X_OPAD   \PC<8>  (
    .PAD(PC[8])
  );
  X_OPAD   \PC<9>  (
    .PAD(PC[9])
  );
  X_OPAD   PCWrite_900 (
    .PAD(PCWrite)
  );
  X_OPAD   \PC_Src<0>  (
    .PAD(PC_Src[0])
  );
  X_OPAD   \PC_Src<1>  (
    .PAD(PC_Src[1])
  );
  X_OPAD   RegDst_903 (
    .PAD(RegDst)
  );
  X_OPAD   RegWrite_904 (
    .PAD(RegWrite)
  );
  X_OPAD   \alu_a<0>  (
    .PAD(alu_a[0])
  );
  X_OPAD   \alu_a<10>  (
    .PAD(alu_a[10])
  );
  X_OPAD   \alu_a<11>  (
    .PAD(alu_a[11])
  );
  X_OPAD   \alu_a<12>  (
    .PAD(alu_a[12])
  );
  X_OPAD   \alu_a<13>  (
    .PAD(alu_a[13])
  );
  X_OPAD   \alu_a<14>  (
    .PAD(alu_a[14])
  );
  X_OPAD   \alu_a<15>  (
    .PAD(alu_a[15])
  );
  X_OPAD   \alu_a<16>  (
    .PAD(alu_a[16])
  );
  X_OPAD   \alu_a<17>  (
    .PAD(alu_a[17])
  );
  X_OPAD   \alu_a<18>  (
    .PAD(alu_a[18])
  );
  X_OPAD   \alu_a<19>  (
    .PAD(alu_a[19])
  );
  X_OPAD   \alu_a<1>  (
    .PAD(alu_a[1])
  );
  X_OPAD   \alu_a<20>  (
    .PAD(alu_a[20])
  );
  X_OPAD   \alu_a<21>  (
    .PAD(alu_a[21])
  );
  X_OPAD   \alu_a<22>  (
    .PAD(alu_a[22])
  );
  X_OPAD   \alu_a<23>  (
    .PAD(alu_a[23])
  );
  X_OPAD   \alu_a<24>  (
    .PAD(alu_a[24])
  );
  X_OPAD   \alu_a<25>  (
    .PAD(alu_a[25])
  );
  X_OPAD   \alu_a<26>  (
    .PAD(alu_a[26])
  );
  X_OPAD   \alu_a<27>  (
    .PAD(alu_a[27])
  );
  X_OPAD   \alu_a<28>  (
    .PAD(alu_a[28])
  );
  X_OPAD   \alu_a<29>  (
    .PAD(alu_a[29])
  );
  X_OPAD   \alu_a<2>  (
    .PAD(alu_a[2])
  );
  X_OPAD   \alu_a<30>  (
    .PAD(alu_a[30])
  );
  X_OPAD   \alu_a<31>  (
    .PAD(alu_a[31])
  );
  X_OPAD   \alu_a<3>  (
    .PAD(alu_a[3])
  );
  X_OPAD   \alu_a<4>  (
    .PAD(alu_a[4])
  );
  X_OPAD   \alu_a<5>  (
    .PAD(alu_a[5])
  );
  X_OPAD   \alu_a<6>  (
    .PAD(alu_a[6])
  );
  X_OPAD   \alu_a<7>  (
    .PAD(alu_a[7])
  );
  X_OPAD   \alu_a<8>  (
    .PAD(alu_a[8])
  );
  X_OPAD   \alu_a<9>  (
    .PAD(alu_a[9])
  );
  X_OPAD   \alu_b<0>  (
    .PAD(alu_b[0])
  );
  X_OPAD   \alu_b<10>  (
    .PAD(alu_b[10])
  );
  X_OPAD   \alu_b<11>  (
    .PAD(alu_b[11])
  );
  X_OPAD   \alu_b<12>  (
    .PAD(alu_b[12])
  );
  X_OPAD   \alu_b<13>  (
    .PAD(alu_b[13])
  );
  X_OPAD   \alu_b<14>  (
    .PAD(alu_b[14])
  );
  X_OPAD   \alu_b<15>  (
    .PAD(alu_b[15])
  );
  X_OPAD   \alu_b<16>  (
    .PAD(alu_b[16])
  );
  X_OPAD   \alu_b<17>  (
    .PAD(alu_b[17])
  );
  X_OPAD   \alu_b<18>  (
    .PAD(alu_b[18])
  );
  X_OPAD   \alu_b<19>  (
    .PAD(alu_b[19])
  );
  X_OPAD   \alu_b<1>  (
    .PAD(alu_b[1])
  );
  X_OPAD   \alu_b<20>  (
    .PAD(alu_b[20])
  );
  X_OPAD   \alu_b<21>  (
    .PAD(alu_b[21])
  );
  X_OPAD   \alu_b<22>  (
    .PAD(alu_b[22])
  );
  X_OPAD   \alu_b<23>  (
    .PAD(alu_b[23])
  );
  X_OPAD   \alu_b<24>  (
    .PAD(alu_b[24])
  );
  X_OPAD   \alu_b<25>  (
    .PAD(alu_b[25])
  );
  X_OPAD   \alu_b<26>  (
    .PAD(alu_b[26])
  );
  X_OPAD   \alu_b<27>  (
    .PAD(alu_b[27])
  );
  X_OPAD   \alu_b<28>  (
    .PAD(alu_b[28])
  );
  X_OPAD   \alu_b<29>  (
    .PAD(alu_b[29])
  );
  X_OPAD   \alu_b<2>  (
    .PAD(alu_b[2])
  );
  X_OPAD   \alu_b<30>  (
    .PAD(alu_b[30])
  );
  X_OPAD   \alu_b<31>  (
    .PAD(alu_b[31])
  );
  X_OPAD   \alu_b<3>  (
    .PAD(alu_b[3])
  );
  X_OPAD   \alu_b<4>  (
    .PAD(alu_b[4])
  );
  X_OPAD   \alu_b<5>  (
    .PAD(alu_b[5])
  );
  X_OPAD   \alu_b<6>  (
    .PAD(alu_b[6])
  );
  X_OPAD   \alu_b<7>  (
    .PAD(alu_b[7])
  );
  X_OPAD   \alu_b<8>  (
    .PAD(alu_b[8])
  );
  X_OPAD   \alu_b<9>  (
    .PAD(alu_b[9])
  );
  X_OPAD   \alu_op<0>  (
    .PAD(alu_op[0])
  );
  X_OPAD   \alu_op<1>  (
    .PAD(alu_op[1])
  );
  X_OPAD   \alu_op<2>  (
    .PAD(alu_op[2])
  );
  X_OPAD   \alu_op<3>  (
    .PAD(alu_op[3])
  );
  X_OPAD   \alu_op<4>  (
    .PAD(alu_op[4])
  );
  X_OPAD   \alu_out<0>  (
    .PAD(alu_out[0])
  );
  X_OPAD   \alu_out<10>  (
    .PAD(alu_out[10])
  );
  X_OPAD   \alu_out<11>  (
    .PAD(alu_out[11])
  );
  X_OPAD   \alu_out<12>  (
    .PAD(alu_out[12])
  );
  X_OPAD   \alu_out<13>  (
    .PAD(alu_out[13])
  );
  X_OPAD   \alu_out<14>  (
    .PAD(alu_out[14])
  );
  X_OPAD   \alu_out<15>  (
    .PAD(alu_out[15])
  );
  X_OPAD   \alu_out<16>  (
    .PAD(alu_out[16])
  );
  X_OPAD   \alu_out<17>  (
    .PAD(alu_out[17])
  );
  X_OPAD   \alu_out<18>  (
    .PAD(alu_out[18])
  );
  X_OPAD   \alu_out<19>  (
    .PAD(alu_out[19])
  );
  X_OPAD   \alu_out<1>  (
    .PAD(alu_out[1])
  );
  X_OPAD   \alu_out<20>  (
    .PAD(alu_out[20])
  );
  X_OPAD   \alu_out<21>  (
    .PAD(alu_out[21])
  );
  X_OPAD   \alu_out<22>  (
    .PAD(alu_out[22])
  );
  X_OPAD   \alu_out<23>  (
    .PAD(alu_out[23])
  );
  X_OPAD   \alu_out<24>  (
    .PAD(alu_out[24])
  );
  X_OPAD   \alu_out<25>  (
    .PAD(alu_out[25])
  );
  X_OPAD   \alu_out<26>  (
    .PAD(alu_out[26])
  );
  X_OPAD   \alu_out<27>  (
    .PAD(alu_out[27])
  );
  X_OPAD   \alu_out<28>  (
    .PAD(alu_out[28])
  );
  X_OPAD   \alu_out<29>  (
    .PAD(alu_out[29])
  );
  X_OPAD   \alu_out<2>  (
    .PAD(alu_out[2])
  );
  X_OPAD   \alu_out<30>  (
    .PAD(alu_out[30])
  );
  X_OPAD   \alu_out<31>  (
    .PAD(alu_out[31])
  );
  X_OPAD   \alu_out<3>  (
    .PAD(alu_out[3])
  );
  X_OPAD   \alu_out<4>  (
    .PAD(alu_out[4])
  );
  X_OPAD   \alu_out<5>  (
    .PAD(alu_out[5])
  );
  X_OPAD   \alu_out<6>  (
    .PAD(alu_out[6])
  );
  X_OPAD   \alu_out<7>  (
    .PAD(alu_out[7])
  );
  X_OPAD   \alu_out<8>  (
    .PAD(alu_out[8])
  );
  X_OPAD   \alu_out<9>  (
    .PAD(alu_out[9])
  );
  X_IPAD   clk_1006 (
    .PAD(clk)
  );
  X_OPAD   \funct<0>  (
    .PAD(funct[0])
  );
  X_OPAD   \funct<1>  (
    .PAD(funct[1])
  );
  X_OPAD   \funct<2>  (
    .PAD(funct[2])
  );
  X_OPAD   \funct<3>  (
    .PAD(funct[3])
  );
  X_OPAD   \funct<4>  (
    .PAD(funct[4])
  );
  X_OPAD   \funct<5>  (
    .PAD(funct[5])
  );
  X_OPAD   \instruction<0>  (
    .PAD(instruction[0])
  );
  X_OPAD   \instruction<10>  (
    .PAD(instruction[10])
  );
  X_OPAD   \instruction<11>  (
    .PAD(instruction[11])
  );
  X_OPAD   \instruction<12>  (
    .PAD(instruction[12])
  );
  X_OPAD   \instruction<13>  (
    .PAD(instruction[13])
  );
  X_OPAD   \instruction<14>  (
    .PAD(instruction[14])
  );
  X_OPAD   \instruction<15>  (
    .PAD(instruction[15])
  );
  X_OPAD   \instruction<16>  (
    .PAD(instruction[16])
  );
  X_OPAD   \instruction<17>  (
    .PAD(instruction[17])
  );
  X_OPAD   \instruction<18>  (
    .PAD(instruction[18])
  );
  X_OPAD   \instruction<19>  (
    .PAD(instruction[19])
  );
  X_OPAD   \instruction<1>  (
    .PAD(instruction[1])
  );
  X_OPAD   \instruction<20>  (
    .PAD(instruction[20])
  );
  X_OPAD   \instruction<21>  (
    .PAD(instruction[21])
  );
  X_OPAD   \instruction<22>  (
    .PAD(instruction[22])
  );
  X_OPAD   \instruction<23>  (
    .PAD(instruction[23])
  );
  X_OPAD   \instruction<24>  (
    .PAD(instruction[24])
  );
  X_OPAD   \instruction<25>  (
    .PAD(instruction[25])
  );
  X_OPAD   \instruction<26>  (
    .PAD(instruction[26])
  );
  X_OPAD   \instruction<27>  (
    .PAD(instruction[27])
  );
  X_OPAD   \instruction<28>  (
    .PAD(instruction[28])
  );
  X_OPAD   \instruction<29>  (
    .PAD(instruction[29])
  );
  X_OPAD   \instruction<2>  (
    .PAD(instruction[2])
  );
  X_OPAD   \instruction<30>  (
    .PAD(instruction[30])
  );
  X_OPAD   \instruction<31>  (
    .PAD(instruction[31])
  );
  X_OPAD   \instruction<3>  (
    .PAD(instruction[3])
  );
  X_OPAD   \instruction<4>  (
    .PAD(instruction[4])
  );
  X_OPAD   \instruction<5>  (
    .PAD(instruction[5])
  );
  X_OPAD   \instruction<6>  (
    .PAD(instruction[6])
  );
  X_OPAD   \instruction<7>  (
    .PAD(instruction[7])
  );
  X_OPAD   \instruction<8>  (
    .PAD(instruction[8])
  );
  X_OPAD   \instruction<9>  (
    .PAD(instruction[9])
  );
  X_OPAD   \next_state<0>  (
    .PAD(next_state[0])
  );
  X_OPAD   \next_state<1>  (
    .PAD(next_state[1])
  );
  X_OPAD   \next_state<2>  (
    .PAD(next_state[2])
  );
  X_OPAD   \next_state<3>  (
    .PAD(next_state[3])
  );
  X_OPAD   \next_state<4>  (
    .PAD(next_state[4])
  );
  X_OPAD   \next_state<5>  (
    .PAD(next_state[5])
  );
  X_OPAD   \next_state<6>  (
    .PAD(next_state[6])
  );
  X_OPAD   \opcode<0>  (
    .PAD(opcode[0])
  );
  X_OPAD   \opcode<1>  (
    .PAD(opcode[1])
  );
  X_OPAD   \opcode<2>  (
    .PAD(opcode[2])
  );
  X_OPAD   \opcode<3>  (
    .PAD(opcode[3])
  );
  X_OPAD   \opcode<4>  (
    .PAD(opcode[4])
  );
  X_OPAD   \opcode<5>  (
    .PAD(opcode[5])
  );
  X_OPAD   \r1_addr<0>  (
    .PAD(r1_addr[0])
  );
  X_OPAD   \r1_addr<1>  (
    .PAD(r1_addr[1])
  );
  X_OPAD   \r1_addr<2>  (
    .PAD(r1_addr[2])
  );
  X_OPAD   \r1_addr<3>  (
    .PAD(r1_addr[3])
  );
  X_OPAD   \r1_addr<4>  (
    .PAD(r1_addr[4])
  );
  X_OPAD   \r1_dout<0>  (
    .PAD(r1_dout[0])
  );
  X_OPAD   \r1_dout<10>  (
    .PAD(r1_dout[10])
  );
  X_OPAD   \r1_dout<11>  (
    .PAD(r1_dout[11])
  );
  X_OPAD   \r1_dout<12>  (
    .PAD(r1_dout[12])
  );
  X_OPAD   \r1_dout<13>  (
    .PAD(r1_dout[13])
  );
  X_OPAD   \r1_dout<14>  (
    .PAD(r1_dout[14])
  );
  X_OPAD   \r1_dout<15>  (
    .PAD(r1_dout[15])
  );
  X_OPAD   \r1_dout<16>  (
    .PAD(r1_dout[16])
  );
  X_OPAD   \r1_dout<17>  (
    .PAD(r1_dout[17])
  );
  X_OPAD   \r1_dout<18>  (
    .PAD(r1_dout[18])
  );
  X_OPAD   \r1_dout<19>  (
    .PAD(r1_dout[19])
  );
  X_OPAD   \r1_dout<1>  (
    .PAD(r1_dout[1])
  );
  X_OPAD   \r1_dout<20>  (
    .PAD(r1_dout[20])
  );
  X_OPAD   \r1_dout<21>  (
    .PAD(r1_dout[21])
  );
  X_OPAD   \r1_dout<22>  (
    .PAD(r1_dout[22])
  );
  X_OPAD   \r1_dout<23>  (
    .PAD(r1_dout[23])
  );
  X_OPAD   \r1_dout<24>  (
    .PAD(r1_dout[24])
  );
  X_OPAD   \r1_dout<25>  (
    .PAD(r1_dout[25])
  );
  X_OPAD   \r1_dout<26>  (
    .PAD(r1_dout[26])
  );
  X_OPAD   \r1_dout<27>  (
    .PAD(r1_dout[27])
  );
  X_OPAD   \r1_dout<28>  (
    .PAD(r1_dout[28])
  );
  X_OPAD   \r1_dout<29>  (
    .PAD(r1_dout[29])
  );
  X_OPAD   \r1_dout<2>  (
    .PAD(r1_dout[2])
  );
  X_OPAD   \r1_dout<30>  (
    .PAD(r1_dout[30])
  );
  X_OPAD   \r1_dout<31>  (
    .PAD(r1_dout[31])
  );
  X_OPAD   \r1_dout<3>  (
    .PAD(r1_dout[3])
  );
  X_OPAD   \r1_dout<4>  (
    .PAD(r1_dout[4])
  );
  X_OPAD   \r1_dout<5>  (
    .PAD(r1_dout[5])
  );
  X_OPAD   \r1_dout<6>  (
    .PAD(r1_dout[6])
  );
  X_OPAD   \r1_dout<7>  (
    .PAD(r1_dout[7])
  );
  X_OPAD   \r1_dout<8>  (
    .PAD(r1_dout[8])
  );
  X_OPAD   \r1_dout<9>  (
    .PAD(r1_dout[9])
  );
  X_OPAD   \r2_addr<0>  (
    .PAD(r2_addr[0])
  );
  X_OPAD   \r2_addr<1>  (
    .PAD(r2_addr[1])
  );
  X_OPAD   \r2_addr<2>  (
    .PAD(r2_addr[2])
  );
  X_OPAD   \r2_addr<3>  (
    .PAD(r2_addr[3])
  );
  X_OPAD   \r2_addr<4>  (
    .PAD(r2_addr[4])
  );
  X_OPAD   \r2_dout<0>  (
    .PAD(r2_dout[0])
  );
  X_OPAD   \r2_dout<10>  (
    .PAD(r2_dout[10])
  );
  X_OPAD   \r2_dout<11>  (
    .PAD(r2_dout[11])
  );
  X_OPAD   \r2_dout<12>  (
    .PAD(r2_dout[12])
  );
  X_OPAD   \r2_dout<13>  (
    .PAD(r2_dout[13])
  );
  X_OPAD   \r2_dout<14>  (
    .PAD(r2_dout[14])
  );
  X_OPAD   \r2_dout<15>  (
    .PAD(r2_dout[15])
  );
  X_OPAD   \r2_dout<16>  (
    .PAD(r2_dout[16])
  );
  X_OPAD   \r2_dout<17>  (
    .PAD(r2_dout[17])
  );
  X_OPAD   \r2_dout<18>  (
    .PAD(r2_dout[18])
  );
  X_OPAD   \r2_dout<19>  (
    .PAD(r2_dout[19])
  );
  X_OPAD   \r2_dout<1>  (
    .PAD(r2_dout[1])
  );
  X_OPAD   \r2_dout<20>  (
    .PAD(r2_dout[20])
  );
  X_OPAD   \r2_dout<21>  (
    .PAD(r2_dout[21])
  );
  X_OPAD   \r2_dout<22>  (
    .PAD(r2_dout[22])
  );
  X_OPAD   \r2_dout<23>  (
    .PAD(r2_dout[23])
  );
  X_OPAD   \r2_dout<24>  (
    .PAD(r2_dout[24])
  );
  X_OPAD   \r2_dout<25>  (
    .PAD(r2_dout[25])
  );
  X_OPAD   \r2_dout<26>  (
    .PAD(r2_dout[26])
  );
  X_OPAD   \r2_dout<27>  (
    .PAD(r2_dout[27])
  );
  X_OPAD   \r2_dout<28>  (
    .PAD(r2_dout[28])
  );
  X_OPAD   \r2_dout<29>  (
    .PAD(r2_dout[29])
  );
  X_OPAD   \r2_dout<2>  (
    .PAD(r2_dout[2])
  );
  X_OPAD   \r2_dout<30>  (
    .PAD(r2_dout[30])
  );
  X_OPAD   \r2_dout<31>  (
    .PAD(r2_dout[31])
  );
  X_OPAD   \r2_dout<3>  (
    .PAD(r2_dout[3])
  );
  X_OPAD   \r2_dout<4>  (
    .PAD(r2_dout[4])
  );
  X_OPAD   \r2_dout<5>  (
    .PAD(r2_dout[5])
  );
  X_OPAD   \r2_dout<6>  (
    .PAD(r2_dout[6])
  );
  X_OPAD   \r2_dout<7>  (
    .PAD(r2_dout[7])
  );
  X_OPAD   \r2_dout<8>  (
    .PAD(r2_dout[8])
  );
  X_OPAD   \r2_dout<9>  (
    .PAD(r2_dout[9])
  );
  X_OPAD   \r3_addr_mux<0>  (
    .PAD(r3_addr_mux[0])
  );
  X_OPAD   \r3_addr_mux<1>  (
    .PAD(r3_addr_mux[1])
  );
  X_OPAD   \r3_addr_mux<2>  (
    .PAD(r3_addr_mux[2])
  );
  X_OPAD   \r3_addr_mux<3>  (
    .PAD(r3_addr_mux[3])
  );
  X_OPAD   \r3_addr_mux<4>  (
    .PAD(r3_addr_mux[4])
  );
  X_OPAD   \reg_datain<0>  (
    .PAD(reg_datain[0])
  );
  X_OPAD   \reg_datain<10>  (
    .PAD(reg_datain[10])
  );
  X_OPAD   \reg_datain<11>  (
    .PAD(reg_datain[11])
  );
  X_OPAD   \reg_datain<12>  (
    .PAD(reg_datain[12])
  );
  X_OPAD   \reg_datain<13>  (
    .PAD(reg_datain[13])
  );
  X_OPAD   \reg_datain<14>  (
    .PAD(reg_datain[14])
  );
  X_OPAD   \reg_datain<15>  (
    .PAD(reg_datain[15])
  );
  X_OPAD   \reg_datain<16>  (
    .PAD(reg_datain[16])
  );
  X_OPAD   \reg_datain<17>  (
    .PAD(reg_datain[17])
  );
  X_OPAD   \reg_datain<18>  (
    .PAD(reg_datain[18])
  );
  X_OPAD   \reg_datain<19>  (
    .PAD(reg_datain[19])
  );
  X_OPAD   \reg_datain<1>  (
    .PAD(reg_datain[1])
  );
  X_OPAD   \reg_datain<20>  (
    .PAD(reg_datain[20])
  );
  X_OPAD   \reg_datain<21>  (
    .PAD(reg_datain[21])
  );
  X_OPAD   \reg_datain<22>  (
    .PAD(reg_datain[22])
  );
  X_OPAD   \reg_datain<23>  (
    .PAD(reg_datain[23])
  );
  X_OPAD   \reg_datain<24>  (
    .PAD(reg_datain[24])
  );
  X_OPAD   \reg_datain<25>  (
    .PAD(reg_datain[25])
  );
  X_OPAD   \reg_datain<26>  (
    .PAD(reg_datain[26])
  );
  X_OPAD   \reg_datain<27>  (
    .PAD(reg_datain[27])
  );
  X_OPAD   \reg_datain<28>  (
    .PAD(reg_datain[28])
  );
  X_OPAD   \reg_datain<29>  (
    .PAD(reg_datain[29])
  );
  X_OPAD   \reg_datain<2>  (
    .PAD(reg_datain[2])
  );
  X_OPAD   \reg_datain<30>  (
    .PAD(reg_datain[30])
  );
  X_OPAD   \reg_datain<31>  (
    .PAD(reg_datain[31])
  );
  X_OPAD   \reg_datain<3>  (
    .PAD(reg_datain[3])
  );
  X_OPAD   \reg_datain<4>  (
    .PAD(reg_datain[4])
  );
  X_OPAD   \reg_datain<5>  (
    .PAD(reg_datain[5])
  );
  X_OPAD   \reg_datain<6>  (
    .PAD(reg_datain[6])
  );
  X_OPAD   \reg_datain<7>  (
    .PAD(reg_datain[7])
  );
  X_OPAD   \reg_datain<8>  (
    .PAD(reg_datain[8])
  );
  X_OPAD   \reg_datain<9>  (
    .PAD(reg_datain[9])
  );
  X_IPAD   rst_n_1169 (
    .PAD(rst_n)
  );
  X_OPAD   \sext_Immed<0>  (
    .PAD(sext_Immed[0])
  );
  X_OPAD   \sext_Immed<10>  (
    .PAD(sext_Immed[10])
  );
  X_OPAD   \sext_Immed<11>  (
    .PAD(sext_Immed[11])
  );
  X_OPAD   \sext_Immed<12>  (
    .PAD(sext_Immed[12])
  );
  X_OPAD   \sext_Immed<13>  (
    .PAD(sext_Immed[13])
  );
  X_OPAD   \sext_Immed<14>  (
    .PAD(sext_Immed[14])
  );
  X_OPAD   \sext_Immed<15>  (
    .PAD(sext_Immed[15])
  );
  X_OPAD   \sext_Immed<16>  (
    .PAD(sext_Immed[16])
  );
  X_OPAD   \sext_Immed<17>  (
    .PAD(sext_Immed[17])
  );
  X_OPAD   \sext_Immed<18>  (
    .PAD(sext_Immed[18])
  );
  X_OPAD   \sext_Immed<19>  (
    .PAD(sext_Immed[19])
  );
  X_OPAD   \sext_Immed<1>  (
    .PAD(sext_Immed[1])
  );
  X_OPAD   \sext_Immed<20>  (
    .PAD(sext_Immed[20])
  );
  X_OPAD   \sext_Immed<21>  (
    .PAD(sext_Immed[21])
  );
  X_OPAD   \sext_Immed<22>  (
    .PAD(sext_Immed[22])
  );
  X_OPAD   \sext_Immed<23>  (
    .PAD(sext_Immed[23])
  );
  X_OPAD   \sext_Immed<24>  (
    .PAD(sext_Immed[24])
  );
  X_OPAD   \sext_Immed<25>  (
    .PAD(sext_Immed[25])
  );
  X_OPAD   \sext_Immed<26>  (
    .PAD(sext_Immed[26])
  );
  X_OPAD   \sext_Immed<27>  (
    .PAD(sext_Immed[27])
  );
  X_OPAD   \sext_Immed<28>  (
    .PAD(sext_Immed[28])
  );
  X_OPAD   \sext_Immed<29>  (
    .PAD(sext_Immed[29])
  );
  X_OPAD   \sext_Immed<2>  (
    .PAD(sext_Immed[2])
  );
  X_OPAD   \sext_Immed<30>  (
    .PAD(sext_Immed[30])
  );
  X_OPAD   \sext_Immed<31>  (
    .PAD(sext_Immed[31])
  );
  X_OPAD   \sext_Immed<3>  (
    .PAD(sext_Immed[3])
  );
  X_OPAD   \sext_Immed<4>  (
    .PAD(sext_Immed[4])
  );
  X_OPAD   \sext_Immed<5>  (
    .PAD(sext_Immed[5])
  );
  X_OPAD   \sext_Immed<6>  (
    .PAD(sext_Immed[6])
  );
  X_OPAD   \sext_Immed<7>  (
    .PAD(sext_Immed[7])
  );
  X_OPAD   \sext_Immed<8>  (
    .PAD(sext_Immed[8])
  );
  X_OPAD   \sext_Immed<9>  (
    .PAD(sext_Immed[9])
  );
  X_OPAD   \state<0>  (
    .PAD(state[0])
  );
  X_OPAD   \state<1>  (
    .PAD(state[1])
  );
  X_OPAD   \state<2>  (
    .PAD(state[2])
  );
  X_OPAD   \state<3>  (
    .PAD(state[3])
  );
  X_OPAD   \state<4>  (
    .PAD(state[4])
  );
  X_OPAD   \state<5>  (
    .PAD(state[5])
  );
  X_OPAD   \state<6>  (
    .PAD(state[6])
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_ZERO   \myMemory/GND  (
    .O(\NLW_myMemory/GND_O_UNCONNECTED )
  );
  X_ONE   \myMemory/VCC  (
    .O(\NLW_myMemory/VCC_O_UNCONNECTED )
  );
  X_RAMB16_S36_S36 #(
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .SRVAL_A ( 36'h000000000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0200000B00010504080D0A0D000000000200000D000105000200000800010000 ),
    .INIT_01 ( 256'h0A0D000B00000000080D080C000000040200000C00010504080D060B00000000 ),
    .INIT_02 ( 256'h080D000C00000004080D000B0000000002010A090F0F0F0E0A0D000C00000004 ),
    .INIT_03 ( 256'h020102090F0F0F0F02010008000000040A0D000A000000080001060C05000200 ),
    .INIT_04 ( 256'h000000000000000000000000000000000008000000000101010D02000F0F0F09 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000300000000000000030000000000000104 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .SRVAL_B ( 36'h000000000 ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  \myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram  (
    .CLKA(clk_BUFGP),
    .CLKB(clk_BUFGP),
    .ENA(\myMemory/BU2/N1 ),
    .ENB(\myMemory/BU2/N1 ),
    .SSRA(\myMemory/BU2/doutb [0]),
    .SSRB(\myMemory/BU2/doutb [0]),
    .WEA(\RegFile/R<1> [0]),
    .WEB(\RegFile/R<1> [0]),
    .ADDRA({\RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], Mem_addr[0], \RegFile/R<1> [0], 
\RegFile/R<1> [0], \myMemory/BU2/doutb [0]}),
    .ADDRB({\RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], Mem_addr[0], \RegFile/R<1> [0], 
\RegFile/R<1> [0], \myMemory/BU2/N1 }),
    .DIA({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \RegFile/R<1> [0], \RegFile/R<1> [0], 
\RegFile/R<1> [0], \RegFile/R<1> [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], 
\RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0]
, \myMemory/BU2/doutb [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \myMemory/BU2/doutb [0], 
\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0]
}),
    .DIB({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \RegFile/R<1> [0], \RegFile/R<1> [0], 
\RegFile/R<1> [0], \RegFile/R<1> [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], 
\RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0]
, \myMemory/BU2/doutb [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \myMemory/BU2/doutb [0], 
\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0], \RegFile/R<1> [0]
}),
    .DIPA({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0]}),
    .DIPB({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0]}),
    .DOA({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[31]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[30]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[29]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[28]_UNCONNECTED , M_doutb_15_OBUF_357, 
M_doutb_14_OBUF_356, M_doutb_13_OBUF_355, M_doutb_12_OBUF_354, 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[23]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[22]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[21]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[20]_UNCONNECTED , M_doutb_11_OBUF_353, 
M_doutb_10_OBUF_352, M_doutb_9_OBUF_382, M_doutb_8_OBUF_381, 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[15]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[14]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[13]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[12]_UNCONNECTED , M_doutb_7_OBUF_380, M_doutb_6_OBUF_379
, M_doutb_5_OBUF_378, M_doutb_4_OBUF_377, \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[7]_UNCONNECTED 
, \NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[6]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[5]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[4]_UNCONNECTED , M_doutb_3_OBUF_376, M_doutb_2_OBUF_373, 
M_doutb_1_OBUF_362, M_doutb_0_OBUF_351}),
    .DOPA({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[3]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[2]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[1]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[0]_UNCONNECTED }),
    .DOB({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[31]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[30]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[29]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[28]_UNCONNECTED , M_doutb_31_OBUF_375, 
M_doutb_30_OBUF_374, M_doutb_29_OBUF_372, M_doutb_28_OBUF_371, 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[23]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[22]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[21]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[20]_UNCONNECTED , M_doutb_27_OBUF_370, 
M_doutb_26_OBUF_369, M_doutb_25_OBUF_368, M_doutb_24_OBUF_367, 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[15]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[14]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[13]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[12]_UNCONNECTED , M_doutb_23_OBUF_366, 
M_doutb_22_OBUF_365, M_doutb_21_OBUF_364, M_doutb_20_OBUF_363, 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[7]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[6]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[5]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[4]_UNCONNECTED , M_doutb_19_OBUF_361, M_doutb_18_OBUF_360
, M_doutb_17_OBUF_359, M_doutb_16_OBUF_358}),
    .DOPB({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[3]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[2]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[1]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPB[0]_UNCONNECTED })
  );
  X_ONE   \myMemory/BU2/XST_VCC  (
    .O(\myMemory/BU2/N1 )
  );
  X_ZERO   \myMemory/BU2/XST_GND  (
    .O(\myMemory/BU2/doutb [0])
  );
  X_OBUF   ALUOp_0_OBUF (
    .I(\FSM/ALUOp [0]),
    .O(ALUOp[0])
  );
  X_OBUF   ALUOp_1_OBUF (
    .I(\FSM/ALUOp [1]),
    .O(ALUOp[1])
  );
  X_OBUF   ALUSrcA_OBUF (
    .I(\FSM/ALUSrcA_172 ),
    .O(ALUSrcA)
  );
  X_OBUF   ALUSrcB_0_OBUF (
    .I(\FSM/ALUSrcB [0]),
    .O(ALUSrcB[0])
  );
  X_OBUF   ALUSrcB_1_OBUF (
    .I(\FSM/ALUSrcB [1]),
    .O(ALUSrcB[1])
  );
  X_OBUF   ALU_POSITIVE_OBUF (
    .I(ALU_POSITIVE_OBUF_159),
    .O(ALU_POSITIVE)
  );
  X_OBUF   ALU_ZERO_OBUF (
    .I(ALU_ZERO_OBUF_161),
    .O(ALU_ZERO)
  );
  X_OBUF   Branch_OBUF (
    .I(\FSM/Branch_183 ),
    .O(Branch)
  );
  X_OBUF   Branch_gz_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Branch_gz)
  );
  X_OBUF   Branch_ne_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Branch_ne)
  );
  X_OBUF   IRWrite_OBUF (
    .I(\FSM/IRWrite_187 ),
    .O(IRWrite)
  );
  X_OBUF   Immed_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[0])
  );
  X_OBUF   Immed_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[10])
  );
  X_OBUF   Immed_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[11])
  );
  X_OBUF   Immed_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[12])
  );
  X_OBUF   Immed_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[13])
  );
  X_OBUF   Immed_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[14])
  );
  X_OBUF   Immed_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[15])
  );
  X_OBUF   Immed_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[1])
  );
  X_OBUF   Immed_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[2])
  );
  X_OBUF   Immed_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[3])
  );
  X_OBUF   Immed_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[4])
  );
  X_OBUF   Immed_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[5])
  );
  X_OBUF   Immed_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[6])
  );
  X_OBUF   Immed_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[7])
  );
  X_OBUF   Immed_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[8])
  );
  X_OBUF   Immed_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Immed[9])
  );
  X_OBUF   IorD_OBUF (
    .I(\FSM/IorD_191 ),
    .O(IorD)
  );
  X_OBUF   Jump_addr_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[0])
  );
  X_OBUF   Jump_addr_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[10])
  );
  X_OBUF   Jump_addr_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[11])
  );
  X_OBUF   Jump_addr_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[12])
  );
  X_OBUF   Jump_addr_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[13])
  );
  X_OBUF   Jump_addr_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[14])
  );
  X_OBUF   Jump_addr_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[15])
  );
  X_OBUF   Jump_addr_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[16])
  );
  X_OBUF   Jump_addr_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[17])
  );
  X_OBUF   Jump_addr_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[18])
  );
  X_OBUF   Jump_addr_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[19])
  );
  X_OBUF   Jump_addr_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[1])
  );
  X_OBUF   Jump_addr_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[20])
  );
  X_OBUF   Jump_addr_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[21])
  );
  X_OBUF   Jump_addr_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[22])
  );
  X_OBUF   Jump_addr_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[23])
  );
  X_OBUF   Jump_addr_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[24])
  );
  X_OBUF   Jump_addr_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[25])
  );
  X_OBUF   Jump_addr_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[2])
  );
  X_OBUF   Jump_addr_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[3])
  );
  X_OBUF   Jump_addr_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[4])
  );
  X_OBUF   Jump_addr_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[5])
  );
  X_OBUF   Jump_addr_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[6])
  );
  X_OBUF   Jump_addr_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[7])
  );
  X_OBUF   Jump_addr_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[8])
  );
  X_OBUF   Jump_addr_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(Jump_addr[9])
  );
  X_OBUF   M_doutb_0_OBUF (
    .I(M_doutb_0_OBUF_351),
    .O(M_doutb[0])
  );
  X_OBUF   M_doutb_10_OBUF (
    .I(M_doutb_10_OBUF_352),
    .O(M_doutb[10])
  );
  X_OBUF   M_doutb_11_OBUF (
    .I(M_doutb_11_OBUF_353),
    .O(M_doutb[11])
  );
  X_OBUF   M_doutb_12_OBUF (
    .I(M_doutb_12_OBUF_354),
    .O(M_doutb[12])
  );
  X_OBUF   M_doutb_13_OBUF (
    .I(M_doutb_13_OBUF_355),
    .O(M_doutb[13])
  );
  X_OBUF   M_doutb_14_OBUF (
    .I(M_doutb_14_OBUF_356),
    .O(M_doutb[14])
  );
  X_OBUF   M_doutb_15_OBUF (
    .I(M_doutb_15_OBUF_357),
    .O(M_doutb[15])
  );
  X_OBUF   M_doutb_16_OBUF (
    .I(M_doutb_16_OBUF_358),
    .O(M_doutb[16])
  );
  X_OBUF   M_doutb_17_OBUF (
    .I(M_doutb_17_OBUF_359),
    .O(M_doutb[17])
  );
  X_OBUF   M_doutb_18_OBUF (
    .I(M_doutb_18_OBUF_360),
    .O(M_doutb[18])
  );
  X_OBUF   M_doutb_19_OBUF (
    .I(M_doutb_19_OBUF_361),
    .O(M_doutb[19])
  );
  X_OBUF   M_doutb_1_OBUF (
    .I(M_doutb_1_OBUF_362),
    .O(M_doutb[1])
  );
  X_OBUF   M_doutb_20_OBUF (
    .I(M_doutb_20_OBUF_363),
    .O(M_doutb[20])
  );
  X_OBUF   M_doutb_21_OBUF (
    .I(M_doutb_21_OBUF_364),
    .O(M_doutb[21])
  );
  X_OBUF   M_doutb_22_OBUF (
    .I(M_doutb_22_OBUF_365),
    .O(M_doutb[22])
  );
  X_OBUF   M_doutb_23_OBUF (
    .I(M_doutb_23_OBUF_366),
    .O(M_doutb[23])
  );
  X_OBUF   M_doutb_24_OBUF (
    .I(M_doutb_24_OBUF_367),
    .O(M_doutb[24])
  );
  X_OBUF   M_doutb_25_OBUF (
    .I(M_doutb_25_OBUF_368),
    .O(M_doutb[25])
  );
  X_OBUF   M_doutb_26_OBUF (
    .I(M_doutb_26_OBUF_369),
    .O(M_doutb[26])
  );
  X_OBUF   M_doutb_27_OBUF (
    .I(M_doutb_27_OBUF_370),
    .O(M_doutb[27])
  );
  X_OBUF   M_doutb_28_OBUF (
    .I(M_doutb_28_OBUF_371),
    .O(M_doutb[28])
  );
  X_OBUF   M_doutb_29_OBUF (
    .I(M_doutb_29_OBUF_372),
    .O(M_doutb[29])
  );
  X_OBUF   M_doutb_2_OBUF (
    .I(M_doutb_2_OBUF_373),
    .O(M_doutb[2])
  );
  X_OBUF   M_doutb_30_OBUF (
    .I(M_doutb_30_OBUF_374),
    .O(M_doutb[30])
  );
  X_OBUF   M_doutb_31_OBUF (
    .I(M_doutb_31_OBUF_375),
    .O(M_doutb[31])
  );
  X_OBUF   M_doutb_3_OBUF (
    .I(M_doutb_3_OBUF_376),
    .O(M_doutb[3])
  );
  X_OBUF   M_doutb_4_OBUF (
    .I(M_doutb_4_OBUF_377),
    .O(M_doutb[4])
  );
  X_OBUF   M_doutb_5_OBUF (
    .I(M_doutb_5_OBUF_378),
    .O(M_doutb[5])
  );
  X_OBUF   M_doutb_6_OBUF (
    .I(M_doutb_6_OBUF_379),
    .O(M_doutb[6])
  );
  X_OBUF   M_doutb_7_OBUF (
    .I(M_doutb_7_OBUF_380),
    .O(M_doutb[7])
  );
  X_OBUF   M_doutb_8_OBUF (
    .I(M_doutb_8_OBUF_381),
    .O(M_doutb[8])
  );
  X_OBUF   M_doutb_9_OBUF (
    .I(M_doutb_9_OBUF_382),
    .O(M_doutb[9])
  );
  X_OBUF   MemRead_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(MemRead)
  );
  X_OBUF   MemWrite_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(MemWrite)
  );
  X_OBUF   MemtoReg_OBUF (
    .I(\FSM/MemtoReg_195 ),
    .O(MemtoReg)
  );
  X_OBUF   PC_0_OBUF (
    .I(\PCReg/PC [0]),
    .O(PC[0])
  );
  X_OBUF   PC_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[10])
  );
  X_OBUF   PC_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[11])
  );
  X_OBUF   PC_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[12])
  );
  X_OBUF   PC_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[13])
  );
  X_OBUF   PC_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[14])
  );
  X_OBUF   PC_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[15])
  );
  X_OBUF   PC_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[16])
  );
  X_OBUF   PC_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[17])
  );
  X_OBUF   PC_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[18])
  );
  X_OBUF   PC_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[19])
  );
  X_OBUF   PC_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[1])
  );
  X_OBUF   PC_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[20])
  );
  X_OBUF   PC_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[21])
  );
  X_OBUF   PC_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[22])
  );
  X_OBUF   PC_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[23])
  );
  X_OBUF   PC_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[24])
  );
  X_OBUF   PC_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[25])
  );
  X_OBUF   PC_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[26])
  );
  X_OBUF   PC_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[27])
  );
  X_OBUF   PC_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[28])
  );
  X_OBUF   PC_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[29])
  );
  X_OBUF   PC_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[2])
  );
  X_OBUF   PC_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[30])
  );
  X_OBUF   PC_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[31])
  );
  X_OBUF   PC_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[3])
  );
  X_OBUF   PC_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[4])
  );
  X_OBUF   PC_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[5])
  );
  X_OBUF   PC_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[6])
  );
  X_OBUF   PC_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[7])
  );
  X_OBUF   PC_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[8])
  );
  X_OBUF   PC_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(PC[9])
  );
  X_OBUF   PCWrite_OBUF (
    .I(\FSM/PCWrite_202 ),
    .O(PCWrite)
  );
  X_OBUF   PC_Src_0_OBUF (
    .I(\FSM/PC_Src [0]),
    .O(PC_Src[0])
  );
  X_OBUF   PC_Src_1_OBUF (
    .I(\FSM/PC_Src [1]),
    .O(PC_Src[1])
  );
  X_OBUF   RegDst_OBUF (
    .I(\FSM/RegDst_214 ),
    .O(RegDst)
  );
  X_OBUF   RegWrite_OBUF (
    .I(\FSM/RegWrite_218 ),
    .O(RegWrite)
  );
  X_OBUF   alu_a_0_OBUF (
    .I(\PCReg/PC [0]),
    .O(alu_a[0])
  );
  X_OBUF   alu_a_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[10])
  );
  X_OBUF   alu_a_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[11])
  );
  X_OBUF   alu_a_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[12])
  );
  X_OBUF   alu_a_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[13])
  );
  X_OBUF   alu_a_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[14])
  );
  X_OBUF   alu_a_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[15])
  );
  X_OBUF   alu_a_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[16])
  );
  X_OBUF   alu_a_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[17])
  );
  X_OBUF   alu_a_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[18])
  );
  X_OBUF   alu_a_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[19])
  );
  X_OBUF   alu_a_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[1])
  );
  X_OBUF   alu_a_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[20])
  );
  X_OBUF   alu_a_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[21])
  );
  X_OBUF   alu_a_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[22])
  );
  X_OBUF   alu_a_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[23])
  );
  X_OBUF   alu_a_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[24])
  );
  X_OBUF   alu_a_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[25])
  );
  X_OBUF   alu_a_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[26])
  );
  X_OBUF   alu_a_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[27])
  );
  X_OBUF   alu_a_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[28])
  );
  X_OBUF   alu_a_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[29])
  );
  X_OBUF   alu_a_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[2])
  );
  X_OBUF   alu_a_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[30])
  );
  X_OBUF   alu_a_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[31])
  );
  X_OBUF   alu_a_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[3])
  );
  X_OBUF   alu_a_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[4])
  );
  X_OBUF   alu_a_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[5])
  );
  X_OBUF   alu_a_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[6])
  );
  X_OBUF   alu_a_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[7])
  );
  X_OBUF   alu_a_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[8])
  );
  X_OBUF   alu_a_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_a[9])
  );
  X_OBUF   alu_b_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(alu_b[0])
  );
  X_OBUF   alu_b_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[10])
  );
  X_OBUF   alu_b_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[11])
  );
  X_OBUF   alu_b_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[12])
  );
  X_OBUF   alu_b_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[13])
  );
  X_OBUF   alu_b_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[14])
  );
  X_OBUF   alu_b_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[15])
  );
  X_OBUF   alu_b_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[16])
  );
  X_OBUF   alu_b_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[17])
  );
  X_OBUF   alu_b_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[18])
  );
  X_OBUF   alu_b_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[19])
  );
  X_OBUF   alu_b_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[1])
  );
  X_OBUF   alu_b_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[20])
  );
  X_OBUF   alu_b_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[21])
  );
  X_OBUF   alu_b_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[22])
  );
  X_OBUF   alu_b_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[23])
  );
  X_OBUF   alu_b_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[24])
  );
  X_OBUF   alu_b_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[25])
  );
  X_OBUF   alu_b_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[26])
  );
  X_OBUF   alu_b_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[27])
  );
  X_OBUF   alu_b_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[28])
  );
  X_OBUF   alu_b_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[29])
  );
  X_OBUF   alu_b_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[2])
  );
  X_OBUF   alu_b_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[30])
  );
  X_OBUF   alu_b_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[31])
  );
  X_OBUF   alu_b_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[3])
  );
  X_OBUF   alu_b_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[4])
  );
  X_OBUF   alu_b_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[5])
  );
  X_OBUF   alu_b_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[6])
  );
  X_OBUF   alu_b_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[7])
  );
  X_OBUF   alu_b_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[8])
  );
  X_OBUF   alu_b_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_b[9])
  );
  X_OBUF   alu_op_0_OBUF (
    .I(\FSM/ALUOp [1]),
    .O(alu_op[0])
  );
  X_OBUF   alu_op_1_OBUF (
    .I(alu_op_1_OBUF_497),
    .O(alu_op[1])
  );
  X_OBUF   alu_op_2_OBUF (
    .I(alu_op_2_OBUF_498),
    .O(alu_op[2])
  );
  X_OBUF   alu_op_3_OBUF (
    .I(\FSM/ALUOp [1]),
    .O(alu_op[3])
  );
  X_OBUF   alu_op_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_op[4])
  );
  X_OBUF   alu_out_0_OBUF (
    .I(alu_out_0_OBUF_531),
    .O(alu_out[0])
  );
  X_OBUF   alu_out_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[10])
  );
  X_OBUF   alu_out_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[11])
  );
  X_OBUF   alu_out_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[12])
  );
  X_OBUF   alu_out_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[13])
  );
  X_OBUF   alu_out_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[14])
  );
  X_OBUF   alu_out_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[15])
  );
  X_OBUF   alu_out_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[16])
  );
  X_OBUF   alu_out_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[17])
  );
  X_OBUF   alu_out_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[18])
  );
  X_OBUF   alu_out_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[19])
  );
  X_OBUF   alu_out_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[1])
  );
  X_OBUF   alu_out_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[20])
  );
  X_OBUF   alu_out_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[21])
  );
  X_OBUF   alu_out_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[22])
  );
  X_OBUF   alu_out_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[23])
  );
  X_OBUF   alu_out_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[24])
  );
  X_OBUF   alu_out_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[25])
  );
  X_OBUF   alu_out_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[26])
  );
  X_OBUF   alu_out_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[27])
  );
  X_OBUF   alu_out_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[28])
  );
  X_OBUF   alu_out_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[29])
  );
  X_OBUF   alu_out_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[2])
  );
  X_OBUF   alu_out_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[30])
  );
  X_OBUF   alu_out_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[31])
  );
  X_OBUF   alu_out_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[3])
  );
  X_OBUF   alu_out_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[4])
  );
  X_OBUF   alu_out_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[5])
  );
  X_OBUF   alu_out_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[6])
  );
  X_OBUF   alu_out_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[7])
  );
  X_OBUF   alu_out_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[8])
  );
  X_OBUF   alu_out_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(alu_out[9])
  );
  X_OBUF   funct_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(funct[0])
  );
  X_OBUF   funct_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(funct[1])
  );
  X_OBUF   funct_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(funct[2])
  );
  X_OBUF   funct_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(funct[3])
  );
  X_OBUF   funct_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(funct[4])
  );
  X_OBUF   funct_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(funct[5])
  );
  X_OBUF   instruction_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[0])
  );
  X_OBUF   instruction_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[10])
  );
  X_OBUF   instruction_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[11])
  );
  X_OBUF   instruction_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[12])
  );
  X_OBUF   instruction_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[13])
  );
  X_OBUF   instruction_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[14])
  );
  X_OBUF   instruction_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[15])
  );
  X_OBUF   instruction_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[16])
  );
  X_OBUF   instruction_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[17])
  );
  X_OBUF   instruction_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[18])
  );
  X_OBUF   instruction_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[19])
  );
  X_OBUF   instruction_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[1])
  );
  X_OBUF   instruction_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[20])
  );
  X_OBUF   instruction_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[21])
  );
  X_OBUF   instruction_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[22])
  );
  X_OBUF   instruction_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[23])
  );
  X_OBUF   instruction_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[24])
  );
  X_OBUF   instruction_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[25])
  );
  X_OBUF   instruction_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[26])
  );
  X_OBUF   instruction_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[27])
  );
  X_OBUF   instruction_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[28])
  );
  X_OBUF   instruction_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[29])
  );
  X_OBUF   instruction_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[2])
  );
  X_OBUF   instruction_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[30])
  );
  X_OBUF   instruction_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[31])
  );
  X_OBUF   instruction_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[3])
  );
  X_OBUF   instruction_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[4])
  );
  X_OBUF   instruction_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[5])
  );
  X_OBUF   instruction_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[6])
  );
  X_OBUF   instruction_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[7])
  );
  X_OBUF   instruction_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[8])
  );
  X_OBUF   instruction_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(instruction[9])
  );
  X_OBUF   next_state_0_OBUF (
    .I(\FSM/next_state_0_1_223 ),
    .O(next_state[0])
  );
  X_OBUF   next_state_1_OBUF (
    .I(\FSM/next_state_1_1_225 ),
    .O(next_state[1])
  );
  X_OBUF   next_state_2_OBUF (
    .I(\FSM/next_state_2_1_227 ),
    .O(next_state[2])
  );
  X_OBUF   next_state_3_OBUF (
    .I(\FSM/next_state_3_1_229 ),
    .O(next_state[3])
  );
  X_OBUF   next_state_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(next_state[4])
  );
  X_OBUF   next_state_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(next_state[5])
  );
  X_OBUF   next_state_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(next_state[6])
  );
  X_OBUF   opcode_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(opcode[0])
  );
  X_OBUF   opcode_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(opcode[1])
  );
  X_OBUF   opcode_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(opcode[2])
  );
  X_OBUF   opcode_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(opcode[3])
  );
  X_OBUF   opcode_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(opcode[4])
  );
  X_OBUF   opcode_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(opcode[5])
  );
  X_OBUF   r1_addr_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_addr[0])
  );
  X_OBUF   r1_addr_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_addr[1])
  );
  X_OBUF   r1_addr_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_addr[2])
  );
  X_OBUF   r1_addr_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_addr[3])
  );
  X_OBUF   r1_addr_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_addr[4])
  );
  X_OBUF   r1_dout_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(r1_dout[0])
  );
  X_OBUF   r1_dout_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[10])
  );
  X_OBUF   r1_dout_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[11])
  );
  X_OBUF   r1_dout_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[12])
  );
  X_OBUF   r1_dout_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[13])
  );
  X_OBUF   r1_dout_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[14])
  );
  X_OBUF   r1_dout_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[15])
  );
  X_OBUF   r1_dout_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[16])
  );
  X_OBUF   r1_dout_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[17])
  );
  X_OBUF   r1_dout_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[18])
  );
  X_OBUF   r1_dout_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[19])
  );
  X_OBUF   r1_dout_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[1])
  );
  X_OBUF   r1_dout_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[20])
  );
  X_OBUF   r1_dout_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[21])
  );
  X_OBUF   r1_dout_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[22])
  );
  X_OBUF   r1_dout_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[23])
  );
  X_OBUF   r1_dout_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[24])
  );
  X_OBUF   r1_dout_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[25])
  );
  X_OBUF   r1_dout_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[26])
  );
  X_OBUF   r1_dout_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[27])
  );
  X_OBUF   r1_dout_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[28])
  );
  X_OBUF   r1_dout_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[29])
  );
  X_OBUF   r1_dout_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[2])
  );
  X_OBUF   r1_dout_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[30])
  );
  X_OBUF   r1_dout_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[31])
  );
  X_OBUF   r1_dout_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[3])
  );
  X_OBUF   r1_dout_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[4])
  );
  X_OBUF   r1_dout_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[5])
  );
  X_OBUF   r1_dout_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[6])
  );
  X_OBUF   r1_dout_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[7])
  );
  X_OBUF   r1_dout_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[8])
  );
  X_OBUF   r1_dout_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r1_dout[9])
  );
  X_OBUF   r2_addr_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_addr[0])
  );
  X_OBUF   r2_addr_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_addr[1])
  );
  X_OBUF   r2_addr_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_addr[2])
  );
  X_OBUF   r2_addr_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_addr[3])
  );
  X_OBUF   r2_addr_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_addr[4])
  );
  X_OBUF   r2_dout_0_OBUF (
    .I(\reg_out/r2_dout [0]),
    .O(r2_dout[0])
  );
  X_OBUF   r2_dout_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[10])
  );
  X_OBUF   r2_dout_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[11])
  );
  X_OBUF   r2_dout_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[12])
  );
  X_OBUF   r2_dout_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[13])
  );
  X_OBUF   r2_dout_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[14])
  );
  X_OBUF   r2_dout_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[15])
  );
  X_OBUF   r2_dout_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[16])
  );
  X_OBUF   r2_dout_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[17])
  );
  X_OBUF   r2_dout_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[18])
  );
  X_OBUF   r2_dout_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[19])
  );
  X_OBUF   r2_dout_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[1])
  );
  X_OBUF   r2_dout_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[20])
  );
  X_OBUF   r2_dout_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[21])
  );
  X_OBUF   r2_dout_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[22])
  );
  X_OBUF   r2_dout_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[23])
  );
  X_OBUF   r2_dout_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[24])
  );
  X_OBUF   r2_dout_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[25])
  );
  X_OBUF   r2_dout_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[26])
  );
  X_OBUF   r2_dout_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[27])
  );
  X_OBUF   r2_dout_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[28])
  );
  X_OBUF   r2_dout_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[29])
  );
  X_OBUF   r2_dout_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[2])
  );
  X_OBUF   r2_dout_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[30])
  );
  X_OBUF   r2_dout_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[31])
  );
  X_OBUF   r2_dout_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[3])
  );
  X_OBUF   r2_dout_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[4])
  );
  X_OBUF   r2_dout_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[5])
  );
  X_OBUF   r2_dout_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[6])
  );
  X_OBUF   r2_dout_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[7])
  );
  X_OBUF   r2_dout_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[8])
  );
  X_OBUF   r2_dout_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r2_dout[9])
  );
  X_OBUF   r3_addr_mux_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r3_addr_mux[0])
  );
  X_OBUF   r3_addr_mux_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r3_addr_mux[1])
  );
  X_OBUF   r3_addr_mux_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r3_addr_mux[2])
  );
  X_OBUF   r3_addr_mux_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r3_addr_mux[3])
  );
  X_OBUF   r3_addr_mux_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(r3_addr_mux[4])
  );
  X_OBUF   reg_datain_0_OBUF (
    .I(reg_datain_0_OBUF_882),
    .O(reg_datain[0])
  );
  X_OBUF   reg_datain_10_OBUF (
    .I(reg_datain_10_OBUF_883),
    .O(reg_datain[10])
  );
  X_OBUF   reg_datain_11_OBUF (
    .I(reg_datain_11_OBUF_884),
    .O(reg_datain[11])
  );
  X_OBUF   reg_datain_12_OBUF (
    .I(reg_datain_12_OBUF_885),
    .O(reg_datain[12])
  );
  X_OBUF   reg_datain_13_OBUF (
    .I(reg_datain_13_OBUF_886),
    .O(reg_datain[13])
  );
  X_OBUF   reg_datain_14_OBUF (
    .I(reg_datain_14_OBUF_887),
    .O(reg_datain[14])
  );
  X_OBUF   reg_datain_15_OBUF (
    .I(reg_datain_15_OBUF_888),
    .O(reg_datain[15])
  );
  X_OBUF   reg_datain_16_OBUF (
    .I(reg_datain_16_OBUF_889),
    .O(reg_datain[16])
  );
  X_OBUF   reg_datain_17_OBUF (
    .I(reg_datain_17_OBUF_890),
    .O(reg_datain[17])
  );
  X_OBUF   reg_datain_18_OBUF (
    .I(reg_datain_18_OBUF_891),
    .O(reg_datain[18])
  );
  X_OBUF   reg_datain_19_OBUF (
    .I(reg_datain_19_OBUF_892),
    .O(reg_datain[19])
  );
  X_OBUF   reg_datain_1_OBUF (
    .I(reg_datain_1_OBUF_893),
    .O(reg_datain[1])
  );
  X_OBUF   reg_datain_20_OBUF (
    .I(reg_datain_20_OBUF_894),
    .O(reg_datain[20])
  );
  X_OBUF   reg_datain_21_OBUF (
    .I(reg_datain_21_OBUF_895),
    .O(reg_datain[21])
  );
  X_OBUF   reg_datain_22_OBUF (
    .I(reg_datain_22_OBUF_896),
    .O(reg_datain[22])
  );
  X_OBUF   reg_datain_23_OBUF (
    .I(reg_datain_23_OBUF_897),
    .O(reg_datain[23])
  );
  X_OBUF   reg_datain_24_OBUF (
    .I(reg_datain_24_OBUF_898),
    .O(reg_datain[24])
  );
  X_OBUF   reg_datain_25_OBUF (
    .I(reg_datain_25_OBUF_899),
    .O(reg_datain[25])
  );
  X_OBUF   reg_datain_26_OBUF (
    .I(reg_datain_26_OBUF_900),
    .O(reg_datain[26])
  );
  X_OBUF   reg_datain_27_OBUF (
    .I(reg_datain_27_OBUF_901),
    .O(reg_datain[27])
  );
  X_OBUF   reg_datain_28_OBUF (
    .I(reg_datain_28_OBUF_902),
    .O(reg_datain[28])
  );
  X_OBUF   reg_datain_29_OBUF (
    .I(reg_datain_29_OBUF_903),
    .O(reg_datain[29])
  );
  X_OBUF   reg_datain_2_OBUF (
    .I(reg_datain_2_OBUF_904),
    .O(reg_datain[2])
  );
  X_OBUF   reg_datain_30_OBUF (
    .I(reg_datain_30_OBUF_905),
    .O(reg_datain[30])
  );
  X_OBUF   reg_datain_31_OBUF (
    .I(reg_datain_31_OBUF_906),
    .O(reg_datain[31])
  );
  X_OBUF   reg_datain_3_OBUF (
    .I(reg_datain_3_OBUF_907),
    .O(reg_datain[3])
  );
  X_OBUF   reg_datain_4_OBUF (
    .I(reg_datain_4_OBUF_908),
    .O(reg_datain[4])
  );
  X_OBUF   reg_datain_5_OBUF (
    .I(reg_datain_5_OBUF_909),
    .O(reg_datain[5])
  );
  X_OBUF   reg_datain_6_OBUF (
    .I(reg_datain_6_OBUF_910),
    .O(reg_datain[6])
  );
  X_OBUF   reg_datain_7_OBUF (
    .I(reg_datain_7_OBUF_911),
    .O(reg_datain[7])
  );
  X_OBUF   reg_datain_8_OBUF (
    .I(reg_datain_8_OBUF_912),
    .O(reg_datain[8])
  );
  X_OBUF   reg_datain_9_OBUF (
    .I(reg_datain_9_OBUF_913),
    .O(reg_datain[9])
  );
  X_OBUF   sext_Immed_0_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[0])
  );
  X_OBUF   sext_Immed_10_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[10])
  );
  X_OBUF   sext_Immed_11_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[11])
  );
  X_OBUF   sext_Immed_12_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[12])
  );
  X_OBUF   sext_Immed_13_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[13])
  );
  X_OBUF   sext_Immed_14_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[14])
  );
  X_OBUF   sext_Immed_15_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[15])
  );
  X_OBUF   sext_Immed_16_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[16])
  );
  X_OBUF   sext_Immed_17_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[17])
  );
  X_OBUF   sext_Immed_18_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[18])
  );
  X_OBUF   sext_Immed_19_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[19])
  );
  X_OBUF   sext_Immed_1_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[1])
  );
  X_OBUF   sext_Immed_20_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[20])
  );
  X_OBUF   sext_Immed_21_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[21])
  );
  X_OBUF   sext_Immed_22_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[22])
  );
  X_OBUF   sext_Immed_23_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[23])
  );
  X_OBUF   sext_Immed_24_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[24])
  );
  X_OBUF   sext_Immed_25_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[25])
  );
  X_OBUF   sext_Immed_26_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[26])
  );
  X_OBUF   sext_Immed_27_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[27])
  );
  X_OBUF   sext_Immed_28_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[28])
  );
  X_OBUF   sext_Immed_29_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[29])
  );
  X_OBUF   sext_Immed_2_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[2])
  );
  X_OBUF   sext_Immed_30_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[30])
  );
  X_OBUF   sext_Immed_31_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[31])
  );
  X_OBUF   sext_Immed_3_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[3])
  );
  X_OBUF   sext_Immed_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[4])
  );
  X_OBUF   sext_Immed_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[5])
  );
  X_OBUF   sext_Immed_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[6])
  );
  X_OBUF   sext_Immed_7_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[7])
  );
  X_OBUF   sext_Immed_8_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[8])
  );
  X_OBUF   sext_Immed_9_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(sext_Immed[9])
  );
  X_OBUF   state_0_OBUF (
    .I(\FSM/state_0_1_236 ),
    .O(state[0])
  );
  X_OBUF   state_1_OBUF (
    .I(\FSM/state_1_1_238 ),
    .O(state[1])
  );
  X_OBUF   state_2_OBUF (
    .I(\FSM/state_2_1_240 ),
    .O(state[2])
  );
  X_OBUF   state_3_OBUF (
    .I(\FSM/state_3_1_242 ),
    .O(state[3])
  );
  X_OBUF   state_4_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(state[4])
  );
  X_OBUF   state_5_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(state[5])
  );
  X_OBUF   state_6_OBUF (
    .I(\RegFile/R<1> [0]),
    .O(state[6])
  );
  X_ZERO   NlwBlock_top_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_VCC (
    .O(VCC)
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

