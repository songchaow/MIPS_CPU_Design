`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:18 04/14/2017 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
input clk,
input rst_n,
output  [31:0]      instruction,
output  [5:0]       opcode,
output  [5:0]       funct,
output              PC_en,
output  [31:0]      PC,
output  [31:0]      next_PC,
output  [31:0]      Mem_addr,
output    [31:0]  mem_data,
output  [31:0]      r1_data,//immediate output
output  [31:0]      r2_data,//immediate output
output  [4:0]       r1_addr,
output  [4:0]       r2_addr,
output  [4:0]       r3_addr_mux,
output  [31:0]      reg_datain,
output  [15:0]      Immed,
output  [31:0]      sext_Immed,
//output                r3_wr,
output [31:0]       r1_dout,
output [31:0]       r2_dout,
//ALU       
output [31:0]       alu_a,
output [31:0]       alu_b,
output [3:0]        alu_op,
output [31:0]       alu_out,
output [31:0]       alu_result,
output ALU_ZERO,
output ALU_POSITIVE,
output  [31:0]      M_doutb,

//Control Signals
output MemtoReg,
output MemWrite,
output Branch,
output Branch_ne,
output Branch_gz,
output RegDst,
output RegWrite,
output [1:0] ALUOp,
output  [25:0]  Jump_addr,
// new signals:
output          PCWrite,
output  [1:0]   PC_Src,
output          ALU_SrcA,
output  [1:0]   ALU_SrcB,
output          IorD,
output          IR_Write,
output  [6:0]   state,
output  [6:0]   next_state,
//FSM Information:
output  [31:0]  ForwardA,
output  [31:0]  ForwardB,
output          SelectA,
output          SelectB,
output          fromWB,
output  [31:0]  WB_value,
output  [31:0]  reg_realdatain,
output  [2:0]   stage1,
    output  [2:0]   stage2,
    output  [2:0]   stage3,
    output  [2:0]   stage4,
    output  [2:0]   stage5,
    output  [6:0]   state1,
    output  [6:0]   state2,
    output  [6:0]   state3,
    output  [6:0]   state4,
    output  [6:0]   state5,
output          en0,
output          DMemVisit,
output          BranchSig,
output  [1:0]   BrSigEn,
output          JmpSig,
output  [1:0]   JmpSigEn,
output  [6:0]   ackstate,
output          PC_En_Start,
output          PC_En_Conflict,
output  [2:0]   bubblePri,
output          bubble,
output  [2:0]   flushPri,
output          flush,
output          existWAITandReg
    );

assign Jump_addr = instruction[25:0];
assign opcode = instruction[31:26];
assign Immed = instruction[15:0];
wire [4:0]  rt_addr,  rd_addr;

/*wire    [31:0]  ForwardA;
wire    [31:0]  ForwardB;
wire            SelectA,SelectB;
wire            fromWB;
wire    [31:0]  WB_value;
wire    [31:0]  reg_realdatain;*/
//Instruction Memory
//wire [8:0] I_addra;
//wire I_wea;


//DATA Memory

//wire [8:0]  M_addra;
//wire [8:0]  M_addrb;
//wire [31:0] M_dina;
//wire [0:0]  M_wea;

//REG_FILE

//wire                r3_wr;

//ALU
assign funct = instruction[5:0];
//Control Signals

PCModule PCReg(
    .clk(clk),
    .rst_n(rst_n),
    .PC_en(PC_en),
    .PC(PC),
    .next_PC(next_PC)
);
PC_Gen PC_Generator(
    .alu_out(alu_result),//immediate output
    .alu_out_reg(alu_out),
    .PC_Src(PC_Src),
    .Jump_addr(instruction[25:0]),
    .sext_Immed(sext_Immed),
    .PC(PC),
    .next_PC(next_PC)
);

AddrMux MemAddr(
    .PC(PC),
    .alu_out(alu_out), //擅自改动
    .IorD(IorD),
    .Mem_addr(Mem_addr)
);
Memory myMemory(
.clka(clk),
.wea(MemWrite),
.dina(r2_dout),
.douta(M_doutb),
.addra(Mem_addr>>2)// original address(8 bit per unit) divided by 4 = new address (32 bit per unit)
);

State_Reg InstrData(
    .clk(clk),
    .rst_n(rst_n),
    .mem_dout(M_doutb),
    .IR_Write(IR_Write),
    .instruction(instruction),
    .data(mem_data)
);
/*
Reg_Addr_Judge Reg_inaddr_Judger(
    //used to judge which needs to write back
    //本时钟设为有效的RegWrite的状态机，在下一时钟一定有写请求�
    .RegWrite1,
    .RegWrite2,
    .RegWrite3,
    .RegWrite4,
    .RegWrite5,
    .RegWritenum//output
);
Reg_Addr_Mux Reg_in_addr(
    .RWnum(RWnum),
    .rt_addr1,
    .rt_addr2,
    .rt_addr3,
    .rt_addr4,
    .rt_addr5,
    .rd_addr1,
    .rd_addr2,
    .rd_addr3,
    .rd_addr4,
    .rd_addr5,
    .rt_addr,
    .rd_addr
);
*/
Reg_MUX RegMux(//regfile data in
    .RegDst(RegDst),
    .rt_addr(rt_addr),//bug3 fixed at 22:15 it's not from immediate instruction reg
    .rd_addr(rd_addr),
    .r3_addr_mux(r3_addr_mux)
);
REG_DIN_MUX RegDatainMux(
    .fromWB(fromWB),
    .WB_value(WB_value),
    .alu_out(alu_out),
    .DMEM_out(M_doutb),
    .MemtoReg(MemtoReg),
    .reg_datain(reg_datain),
    .reg_realdatain(reg_realdatain)
);
assign r1_addr = instruction[25:21];
assign r2_addr = instruction[20:16];
REG_FILE RegFile(//use addr as always parameter in dout
.clk(clk),
.rst_n(rst_n),
.r1_addr(instruction[25:21]),//rs
.r2_addr(instruction[20:16]),//rt
.r3_addr(r3_addr_mux),
.r3_din(reg_realdatain),
.r3_wr(RegWrite),
.r1_dout(r1_data),
.r2_dout(r2_data)
);
REG_OUT reg_out(
.clk(clk),
.rst_n(rst_n),
.r1_dout(r1_dout),//output -> r1_dout
.r2_dout(r2_dout),
.r1_data(r1_data),
.r2_data(r2_data)
);

SEXT mySEXT(
    .clk(clk),
    .rst_n(rst_n),
    .Immed(Immed),
    .sext_Immed(sext_Immed)
);
ForwardMux ForwardAMux(
    .alu_out(alu_out),
    .M_doutb(M_doutb),
    .Select(SelectA),
    .Forward(ForwardA)
);
ForwardMux ForwardBMux(
    .alu_out(alu_out),
    .M_doutb(M_doutb),
    .Select(SelectB),
    .Forward(ForwardB)
);
ALU_OpA ALU_OPA_MUX(
    .ALU_SrcA(ALU_SrcA),//control signal
    .ForwardA(ForwardA),
    .r1_dout(r1_dout),
    .alu_opa(alu_a)
);
ALU_OpB ALU_OPB_MUX(
    .ALU_SrcB(ALU_SrcB),//control signal
    .sext_Immed(sext_Immed),
    .r2_dout(r2_dout),
    .alu_opb(alu_b),
    .ForwardB(ForwardB)
);

ALU_CONTROL AluControl(
    .ALUOp(ALUOp),
    .funct(funct),
    .post_ALUOp(alu_op)
);
ALU myALU(
    .alu_a(alu_a),
    .alu_b(alu_b),
    .alu_op(alu_op),
    .alu_out(alu_result),
    .ALU_ZERO(ALU_ZERO),
    .ALU_POSITIVE(ALU_POSITIVE)
);

ALU_RESULT_REG ALURESULT(
    .clk(clk),
    .rst_n(rst_n),
    .alu_result(alu_result),
    .alu_out(alu_out)
);

/*CONTROL FSM(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction)
    //output:
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .Branch(Branch),
    .Branch_ne(Branch_ne),
    .Branch_gz(Branch_gz),
    .RegDst(RegDst),
    .RegWrite(RegWrite),
    .ALUOp(ALUOp),
    //add:
    .PCWrite(PCWrite),
    .PC_Src(PC_Src),
    .ALU_SrcA(ALU_SrcA),
    .ALU_SrcB(ALU_SrcB),
    .IorD(IorD),
    .IR_Write(IR_Write),
    .state(state),
    .next_state(next_state)
);*/
//wire [6:0]  state1,state2,state3,state4,state5;

global_FSM CONTROL(
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction),
    .reg_din(reg_datain),
    .ALU_ZERO(ALU_ZERO),
    .ALU_POSITIVE(ALU_POSITIVE),
    .PCWrite(PCWrite),
    .PC_Src(PC_Src),
    .Branch(Branch),
    .Branch_ne(Branch_ne),
    .Branch_gz(Branch_gz),
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .IorD(IorD),
    .rt_addr(rt_addr),
    .rd_addr(rd_addr),
    .rs_addr(rs_addr),//this output is not of real use
    .RegDst(RegDst),
    .RegWrite(RegWrite),
    .fromWB(fromWB),
    .WB_value(WB_value),
    .ALUOp(ALUOp),
    .ALU_SrcA(ALU_SrcA),
    .ALU_SrcB(ALU_SrcB),
    .SelectA(SelectA),
    .SelectB(SelectB),
    .IR_Write(IR_Write),
    //FSM information:
    .stage1(stage1),
    .stage2(stage2),
    .stage3(stage3),
    .stage4(stage4),
    .stage5(stage5),
    .state1(state1),
    .state2(state2),
    .state3(state3),
    .state4(state4),
    .state5(state5),
    .en0(en0),
    .DMemVisit(DMemVisit),
    .BranchSig(BranchSig),
    .BrSigEn(BrSigEn),
    .JmpSig(JmpSig),
    .JmpSigEn(JmpSigEn),
    .ackstate(ackstate),
    .PC_En_Start(PC_En_Start),
    .PC_En_Conflict(PC_En_Conflict),
    .bubblePri(bubblePri),
    .bubble(bubble),
    .flushPri(flushPri),
    .flush(flush),
    .existWAITandReg(existWAITandReg)
);

PC_ENABLE   PC_Enable(
    .ALU_ZERO(ALU_ZERO),
    .ALU_POSITIVE(ALU_POSITIVE),
    .Branch(Branch),
    .Branch_gz(Branch_gz),
    .Branch_ne(Branch_ne),
    .PCWrite(PCWrite),
    .PCEn(PC_en)
);

endmodule
