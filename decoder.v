`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:06 04/15/2017 
// Design Name: 
// Module Name:    DECODER 
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
module DECODER(
    input [5:0] opcode,
    input [5:0] funct,
    input rst_n,
    output MemtoReg,
    output MemWrite,
    output MemRead,
    output Branch,
    output Branch_ne,
    output Branch_gz,
    output Jump,
    output ALUSrc,
    output RegDst,
    output RegWrite,
    output [1:0] ALUOp
    );

/*
OPCODE:
R-type      0
addi        8
LW          35
SW          43

BEQ         4
BNE         5
BGTZ(new)   7
*/

    //addi: opcode:8 I-type ALUOp: 00
    //andi: I-type ALUOp: 11?
    /*
    J(2) and addi may have problems

    自定义： ALUOp:11 andi
    */
assign ALUOp[1] = & (~opcode) || (opcode == 12); //R-type or andi
assign ALUOp[0] = (opcode==4); //BEQ
assign RegDst = & (~opcode); //R-type(000000) This one is complete!
//0: I-type, to rt_addr 1: R-type, to rd_addr
assign ALUSrc = (opcode == 35)||(opcode == 43)||(opcode == 8); //LW or SW or addi
//0: alu_b = r2_dout 1: alu_b = Immed
assign MemtoReg = (opcode == 35); //LW
assign Branch = (opcode == 4); //BEQ
assign Branch_ne = (opcode ==5); //BNE
assign Branch_gz = (opcode == 7); //BGTZ
assign Jump = (opcode == 2)||(opcode == 3);//JMP and JAL
assign RegWrite = rst_n &&(&(~opcode) || (opcode ==35) || (opcode == 8)); //R-type or LW or addi/andi
assign MemRead = (opcode == 35);
assign MemWrite = rst_n && (opcode == 43);//SW


endmodule
