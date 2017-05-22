////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.70d
//  \   \         Application: netgen
//  /   /         Filename: top_translate.v
// /___/   /\     Timestamp: Sat May 20 10:19:11 2017
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
  clk, rst_n, state, next_state
);
  input clk;
  input rst_n;
  output [6 : 0] state;
  output [6 : 0] next_state;
  wire \ALURESULT/rst_n_inv ;
  wire ALU_POSITIVE;
  wire Branch_gz;
  wire \FSM/ALU_SrcA_155 ;
  wire \FSM/ALU_SrcA_mux0000_156 ;
  wire \FSM/MemWrite_159 ;
  wire \FSM/MemWrite_mux0000_160 ;
  wire \FSM/MemtoReg_161 ;
  wire \FSM/MemtoReg_mux0000_162 ;
  wire \FSM/N28 ;
  wire \FSM/PCWrite_164 ;
  wire \FSM/PCWrite_mux0000_165 ;
  wire \FSM/RegWrite_168 ;
  wire \FSM/RegWrite_mux0000_169 ;
  wire \FSM/next_state_0_1_171 ;
  wire \FSM/next_state_1_1_173 ;
  wire \FSM/next_state_2_1_175 ;
  wire \FSM/next_state_3_1_177 ;
  wire \FSM/next_state_not0001 ;
  wire \FSM/state_0_1_184 ;
  wire \FSM/state_1_1_186 ;
  wire \FSM/state_2_1_188 ;
  wire \FSM/state_3_1_190 ;
  wire M_doutb;
  wire N28;
  wire N29;
  wire N30;
  wire N31;
  wire N32;
  wire N33;
  wire N34;
  wire N35;
  wire N36;
  wire N37;
  wire N38;
  wire N39;
  wire N40;
  wire N41;
  wire \RegFile/R_0_0_207 ;
  wire clk_BUFGP;
  wire next_PC;
  wire reg_datain;
  wire rst_n_IBUF_221;
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
  wire [0 : 0] \ALURESULT/alu_out ;
  wire [0 : 0] \FSM/ALU_SrcB ;
  wire [1 : 1] \FSM/ALU_SrcB_mux0000 ;
  wire [0 : 0] \FSM/PC_Src ;
  wire [1 : 1] \FSM/PC_Src_mux0000 ;
  wire [3 : 0] \FSM/next_state ;
  wire [3 : 0] \FSM/next_state_mux0000 ;
  wire [3 : 0] \FSM/state ;
  wire [0 : 0] \PCReg/PC ;
  wire [0 : 0] \reg_out/r2_dout ;
  wire [31 : 1] \myMemory/douta ;
  wire [0 : 0] \myMemory/BU2/doutb ;
  X_ZERO   XST_GND (
    .O(Branch_gz)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PCReg/PC_0  (
    .CLK(clk_BUFGP),
    .CE(\FSM/PCWrite_164 ),
    .RST(\ALURESULT/rst_n_inv ),
    .I(next_PC),
    .O(\PCReg/PC [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \reg_out/r2_dout_0  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(\RegFile/R_0_0_207 ),
    .O(\reg_out/r2_dout [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \ALURESULT/alu_out_0  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(ALU_POSITIVE),
    .O(\ALURESULT/alu_out [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RegFile/R_0_0  (
    .CLK(clk_BUFGP),
    .CE(\FSM/RegWrite_168 ),
    .RST(\ALURESULT/rst_n_inv ),
    .I(reg_datain),
    .O(\RegFile/R_0_0_207 ),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_0  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [0]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state [0]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_1  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [1]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state [1]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_2  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [2]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state [2]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_3  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [3]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state [3]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/ALU_SrcB_0  (
    .CLK(clk_BUFGP),
    .I(\FSM/ALU_SrcB_mux0000 [1]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/ALU_SrcB [0]),
    .CE(VCC),
    .RST(GND)
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
  \FSM/MemtoReg  (
    .CLK(clk_BUFGP),
    .CE(rst_n_IBUF_221),
    .I(\FSM/MemtoReg_mux0000_162 ),
    .O(\FSM/MemtoReg_161 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/PCWrite  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(\FSM/PCWrite_mux0000_165 ),
    .O(\FSM/PCWrite_164 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/PC_Src_0  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(\FSM/PC_Src_mux0000 [1]),
    .O(\FSM/PC_Src [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/ALU_SrcA  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(\FSM/ALU_SrcA_mux0000_156 ),
    .O(\FSM/ALU_SrcA_155 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/RegWrite  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(\FSM/RegWrite_mux0000_169 ),
    .O(\FSM/RegWrite_168 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \FSM/MemWrite  (
    .CLK(clk_BUFGP),
    .RST(\ALURESULT/rst_n_inv ),
    .I(\FSM/MemWrite_mux0000_160 ),
    .O(\FSM/MemWrite_159 ),
    .CE(VCC),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \FSM/ALU_SrcA_mux000011  (
    .ADR0(\FSM/next_state [1]),
    .ADR1(\FSM/next_state [2]),
    .O(\FSM/N28 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFB ))
  \FSM/next_state_not000111  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [3]),
    .ADR3(\FSM/state [0]),
    .O(\FSM/next_state_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h2038 ))
  \FSM/next_state_mux0000<3>1  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/state [2]),
    .ADR2(\FSM/state [3]),
    .ADR3(\FSM/state [1]),
    .O(\FSM/next_state_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'h4009 ))
  \FSM/next_state_mux0000<0>31  (
    .ADR0(\FSM/state [2]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [0]),
    .ADR3(\FSM/state [3]),
    .O(\FSM/next_state_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'hB8 ))
  \PC_Generator/Mmux_next_PC11  (
    .ADR0(\ALURESULT/alu_out [0]),
    .ADR1(\FSM/PC_Src [0]),
    .ADR2(ALU_POSITIVE),
    .O(next_PC)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \RegDatainMux/reg_datain<0>1  (
    .ADR0(\FSM/MemtoReg_161 ),
    .ADR1(\ALURESULT/alu_out [0]),
    .ADR2(M_doutb),
    .O(reg_datain)
  );
  X_BUF   rst_n_IBUF (
    .I(rst_n),
    .O(rst_n_IBUF_221)
  );
  X_LUT4 #(
    .INIT ( 16'h3200 ))
  \myALU/alu_out_mux0001<0>  (
    .ADR0(\PCReg/PC [0]),
    .ADR1(\FSM/ALU_SrcB [0]),
    .ADR2(\FSM/ALU_SrcA_155 ),
    .ADR3(\reg_out/r2_dout [0]),
    .O(ALU_POSITIVE)
  );
  X_LUT4 #(
    .INIT ( 16'h069A ))
  \FSM/next_state_mux0000<2>1  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [3]),
    .ADR3(\FSM/state [2]),
    .O(\FSM/next_state_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0262 ))
  \FSM/next_state_mux0000<1>1  (
    .ADR0(\FSM/state [0]),
    .ADR1(\FSM/state [1]),
    .ADR2(\FSM/state [2]),
    .ADR3(\FSM/state [3]),
    .O(\FSM/next_state_mux0000 [1])
  );
  X_MUX2   \FSM/MemtoReg_mux0000  (
    .IA(N28),
    .IB(N29),
    .SEL(\FSM/MemtoReg_161 ),
    .O(\FSM/MemtoReg_mux0000_162 )
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \FSM/MemtoReg_mux0000_F  (
    .ADR0(\FSM/next_state [2]),
    .ADR1(\FSM/next_state [3]),
    .ADR2(\FSM/next_state [0]),
    .ADR3(\FSM/next_state [1]),
    .O(N28)
  );
  X_LUT4 #(
    .INIT ( 16'hBDFF ))
  \FSM/MemtoReg_mux0000_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [2]),
    .ADR2(\FSM/next_state [0]),
    .ADR3(\FSM/next_state [1]),
    .O(N29)
  );
  X_MUX2   \FSM/MemWrite_mux0000  (
    .IA(N30),
    .IB(N31),
    .SEL(\FSM/MemWrite_159 ),
    .O(\FSM/MemWrite_mux0000_160 )
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ))
  \FSM/MemWrite_mux0000_F  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [2]),
    .ADR2(\FSM/next_state [1]),
    .ADR3(\FSM/next_state [0]),
    .O(N30)
  );
  X_LUT4 #(
    .INIT ( 16'hFF7E ))
  \FSM/MemWrite_mux0000_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [2]),
    .ADR2(\FSM/next_state [1]),
    .ADR3(\FSM/next_state [0]),
    .O(N31)
  );
  X_MUX2   \FSM/RegWrite_mux0000  (
    .IA(N32),
    .IB(N33),
    .SEL(\FSM/RegWrite_168 ),
    .O(\FSM/RegWrite_mux0000_169 )
  );
  X_LUT4 #(
    .INIT ( 16'h4024 ))
  \FSM/RegWrite_mux0000_F  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [2]),
    .ADR2(\FSM/next_state [1]),
    .ADR3(\FSM/next_state [0]),
    .O(N32)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \FSM/RegWrite_mux0000_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [1]),
    .ADR2(\FSM/next_state [2]),
    .ADR3(\FSM/next_state [0]),
    .O(N33)
  );
  X_MUX2   \FSM/PCWrite_mux0000  (
    .IA(N34),
    .IB(N35),
    .SEL(\FSM/next_state [0]),
    .O(\FSM/PCWrite_mux0000_165 )
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \FSM/PCWrite_mux0000_F  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/N28 ),
    .ADR2(\FSM/PCWrite_164 ),
    .O(N34)
  );
  X_LUT4 #(
    .INIT ( 16'hCE48 ))
  \FSM/PCWrite_mux0000_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/PCWrite_164 ),
    .ADR2(\FSM/next_state [2]),
    .ADR3(\FSM/next_state [1]),
    .O(N35)
  );
  X_MUX2   \FSM/ALU_SrcA_mux0000  (
    .IA(N36),
    .IB(N37),
    .SEL(\FSM/ALU_SrcA_155 ),
    .O(\FSM/ALU_SrcA_mux0000_156 )
  );
  X_LUT4 #(
    .INIT ( 16'h0426 ))
  \FSM/ALU_SrcA_mux0000_F  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [1]),
    .ADR2(\FSM/next_state [0]),
    .ADR3(\FSM/next_state [2]),
    .O(N36)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \FSM/ALU_SrcA_mux0000_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [1]),
    .ADR2(\FSM/next_state [2]),
    .O(N37)
  );
  X_MUX2   \FSM/PC_Src_mux0000<1>  (
    .IA(N38),
    .IB(N39),
    .SEL(\FSM/PC_Src [0]),
    .O(\FSM/PC_Src_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ))
  \FSM/PC_Src_mux0000<1>_F  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [1]),
    .ADR2(\FSM/next_state [2]),
    .ADR3(\FSM/next_state [0]),
    .O(N38)
  );
  X_LUT4 #(
    .INIT ( 16'hFF7E ))
  \FSM/PC_Src_mux0000<1>_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [1]),
    .ADR2(\FSM/next_state [0]),
    .ADR3(\FSM/next_state [2]),
    .O(N39)
  );
  X_MUX2   \FSM/ALU_SrcB_mux0000<1>  (
    .IA(N40),
    .IB(N41),
    .SEL(\FSM/ALU_SrcB [0]),
    .O(\FSM/ALU_SrcB_mux0000 [1])
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \FSM/ALU_SrcB_mux0000<1>_F  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [1]),
    .ADR2(\FSM/next_state [2]),
    .O(N40)
  );
  X_LUT4 #(
    .INIT ( 16'hEEF5 ))
  \FSM/ALU_SrcB_mux0000<1>_G  (
    .ADR0(\FSM/next_state [3]),
    .ADR1(\FSM/next_state [0]),
    .ADR2(\FSM/next_state [2]),
    .ADR3(\FSM/next_state [1]),
    .O(N41)
  );
  X_INV   \RegFile/rst_n_inv321_INV_0  (
    .I(rst_n_IBUF_221),
    .O(\ALURESULT/rst_n_inv )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_3_1  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [3]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state_3_1_190 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_2_1  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [2]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state_2_1_188 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_1_1  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [1]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state_1_1_186 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \FSM/state_0_1  (
    .CLK(clk_BUFGP),
    .I(\FSM/next_state [0]),
    .SET(\ALURESULT/rst_n_inv ),
    .O(\FSM/state_0_1_184 ),
    .CE(VCC),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_3_1  (
    .I(\FSM/next_state_mux0000 [3]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_3_1_177 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_2_1  (
    .I(\FSM/next_state_mux0000 [2]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_2_1_175 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_1_1  (
    .I(\FSM/next_state_mux0000 [1]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_1_1_173 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  \FSM/next_state_0_1  (
    .I(\FSM/next_state_mux0000 [0]),
    .CLK(\FSM/next_state_not0001 ),
    .O(\FSM/next_state_0_1_171 ),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_IPAD   clk_85 (
    .PAD(clk)
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
  X_IPAD   rst_n_93 (
    .PAD(rst_n)
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
    .WEA(\FSM/MemWrite_159 ),
    .WEB(\FSM/MemWrite_159 ),
    .ADDRA({\myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, Branch_gz, Branch_gz, Branch_gz, Branch_gz, \myMemory/BU2/doutb [0]}),
    .ADDRB({\myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, Branch_gz, Branch_gz, Branch_gz, Branch_gz, \myMemory/BU2/N1 }),
    .DIA({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz, \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz, \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz, \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
\reg_out/r2_dout [0]}),
    .DIB({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz, \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz, \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz, \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], Branch_gz, Branch_gz, Branch_gz, 
Branch_gz}),
    .DIPA({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0]}),
    .DIPB({\myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0], \myMemory/BU2/doutb [0]}),
    .DOA({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[31]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[30]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[29]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[28]_UNCONNECTED , \myMemory/douta [15], 
\myMemory/douta [14], \myMemory/douta [13], \myMemory/douta [12], 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[23]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[22]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[21]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[20]_UNCONNECTED , \myMemory/douta [11], 
\myMemory/douta [10], \myMemory/douta [9], \myMemory/douta [8], 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[15]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[14]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[13]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[12]_UNCONNECTED , \myMemory/douta [7], 
\myMemory/douta [6], \myMemory/douta [5], \myMemory/douta [4], 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[7]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[6]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[5]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOA[4]_UNCONNECTED , \myMemory/douta [3], \myMemory/douta [2]
, \myMemory/douta [1], M_doutb}),
    .DOPA({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[3]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[2]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[1]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOPA[0]_UNCONNECTED }),
    .DOB({\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[31]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[30]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[29]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[28]_UNCONNECTED , \myMemory/douta [31], 
\myMemory/douta [30], \myMemory/douta [29], \myMemory/douta [28], 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[23]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[22]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[21]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[20]_UNCONNECTED , \myMemory/douta [27], 
\myMemory/douta [26], \myMemory/douta [25], \myMemory/douta [24], 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[15]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[14]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[13]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[12]_UNCONNECTED , \myMemory/douta [23], 
\myMemory/douta [22], \myMemory/douta [21], \myMemory/douta [20], 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[7]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[6]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[5]_UNCONNECTED , 
\NLW_myMemory/BU2/U0/blk_mem_generator/valid.cstr/ramloop[0].ram.r/s3_init.ram/spram.ram_DOB[4]_UNCONNECTED , \myMemory/douta [19], 
\myMemory/douta [18], \myMemory/douta [17], \myMemory/douta [16]}),
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
  X_OBUF   next_state_0_OBUF (
    .I(\FSM/next_state_0_1_171 ),
    .O(next_state[0])
  );
  X_OBUF   next_state_1_OBUF (
    .I(\FSM/next_state_1_1_173 ),
    .O(next_state[1])
  );
  X_OBUF   next_state_2_OBUF (
    .I(\FSM/next_state_2_1_175 ),
    .O(next_state[2])
  );
  X_OBUF   next_state_3_OBUF (
    .I(\FSM/next_state_3_1_177 ),
    .O(next_state[3])
  );
  X_OBUF   next_state_4_OBUF (
    .I(Branch_gz),
    .O(next_state[4])
  );
  X_OBUF   next_state_5_OBUF (
    .I(Branch_gz),
    .O(next_state[5])
  );
  X_OBUF   next_state_6_OBUF (
    .I(Branch_gz),
    .O(next_state[6])
  );
  X_OBUF   state_0_OBUF (
    .I(\FSM/state_0_1_184 ),
    .O(state[0])
  );
  X_OBUF   state_1_OBUF (
    .I(\FSM/state_1_1_186 ),
    .O(state[1])
  );
  X_OBUF   state_2_OBUF (
    .I(\FSM/state_2_1_188 ),
    .O(state[2])
  );
  X_OBUF   state_3_OBUF (
    .I(\FSM/state_3_1_190 ),
    .O(state[3])
  );
  X_OBUF   state_4_OBUF (
    .I(Branch_gz),
    .O(state[4])
  );
  X_OBUF   state_5_OBUF (
    .I(Branch_gz),
    .O(state[5])
  );
  X_OBUF   state_6_OBUF (
    .I(Branch_gz),
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

