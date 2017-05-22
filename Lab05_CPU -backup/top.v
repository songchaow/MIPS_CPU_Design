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
output  [31:0]      PC,
output  [31:0]      post_PC,
output  [31:0]      PC_Src, //use combinational logic to produce the next PC
output  [31:0]      PC_Branch,
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
output [4:0]        alu_op,
output [31:0]       alu_out,
output ALU_ZERO,
output ALU_POSITIVE,
output  [31:0]      M_doutb,

//Control Signals
output MemtoReg,
output MemWrite,
output MemRead,
output Branch,
output Branch_ne,
output Branch_gz,
output ALUSrc,
output RegDst,
output RegWrite,
output [1:0] ALUOp,
output Jump,
output  [25:0]  Jump_addr

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
assign alu_a = r1_dout;

//Control Signals

PCModule PCandMUX(
    .clk(clk),
    .rst_n(rst_n),
    .Branch(Branch),
    .Branch_ne(Branch_ne),
    .Branch_gz(Branch_gz),
    .Jump(Jump),
    .Jump_addr(Jump_addr),
    .ALU_ZERO(ALU_ZERO),
    .ALU_POSITIVE(ALU_POSITIVE),
    .sext_Immed(sext_Immed),
    .PC(PC),
    .post_PC(post_PC),
    .PC_Src(PC_Src),
    .PC_Branch(PC_Branch)
);
DECODER decoder(
    //input:
    .opcode(instruction[31:26]),
    .funct(instruction[5:0]),
    //output:
    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .MemRead(MemRead),
    .Branch(Branch),
    .Branch_ne(Branch_ne),
    .Branch_gz(Branch_gz),
    .ALUSrc(ALUSrc),
    .RegDst(RegDst),
    .RegWrite(RegWrite),
    .Jump(Jump),
    .ALUOp(ALUOp)
);

I_MEM IMemory(
.clka(clk),
.wea(0),
.addra(PC),
.dina(0), //Instruction Memory is not designed to be written
.douta(instruction)
);
D_MEM DMemory(
.clka(~clk),     //writing clock inverse!
.clkb(~clk),   //reading clock inverse!
.wea(MemWrite),
.dina(r2_dout),
.doutb(M_doutb),
.addra(alu_out[10:2]),// original address(8 bit per unit) divided by 4 = new address (32 bit per unit)
.addrb(alu_out[10:2])
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
.r1_dout(r1_dout),
.r2_dout(r2_dout)
);
ALU_OP_MUX AluOpMux(
    .r2_dout(r2_dout),
    .Immed(instruction[15:0]),
    .ALUSrc(ALUSrc),
    .alu_b(alu_b),
    .sext_Immed(sext_Immed)
);
ALU_CONTROL AluControl(
    .ALUOp(ALUOp),
    .funct(funct),
    .post_ALUOp(alu_op)
);
ALU myALU(
    .alu_a(r1_dout),
    .alu_b(alu_b),
    .alu_op(alu_op),
    .alu_out(alu_out),
    .ALU_ZERO(ALU_ZERO),
    .ALU_POSITIVE(ALU_POSITIVE)
);
endmodule
