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
output  [6:0]   next_state
    );

assign Jump_addr = instruction[25:0];
assign opcode = instruction[31:26];
assign Immed = instruction[15:0];
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

Reg_MUX RegMux(
    .RegDst(RegDst),
    .rt_addr(instruction[20:16]),
    .rd_addr(instruction[15:11]),
    .r3_addr_mux(r3_addr_mux)
);
REG_DIN_MUX RegDatainMux(
    .alu_out(alu_out),
    .DMEM_out(M_doutb),
    .MemtoReg(MemtoReg),
    .reg_datain(reg_datain)
);
assign r1_addr = instruction[25:21];
assign r2_addr = instruction[20:16];
REG_FILE RegFile(//use addr as always parameter in dout
.clk(clk),
.rst_n(rst_n),
.r1_addr(instruction[25:21]),
.r2_addr(instruction[20:16]),
.r3_addr(r3_addr_mux),
.r3_din(reg_datain),
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
    .Immed(Immed),
    .sext_Immed(sext_Immed)
);
ALU_OpA ALU_OPA_MUX(
    .ALU_SrcA(ALU_SrcA),//control signal
    .curr_PC(PC),
    .r1_dout(r1_dout),
    .alu_opa(alu_a)
);
ALU_OpB ALU_OPB_MUX(
    .ALU_SrcB(ALU_SrcB),//control signal
    .sext_Immed(sext_Immed),
    .r2_dout(r2_dout),
    .alu_opb(alu_b)
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

CONTROL FSM(
    //input:
    .clk(clk),
    .opcode(instruction[31:26]),
    .rst_n(rst_n),
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
