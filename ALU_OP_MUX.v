`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:44:17 04/15/2017 
// Design Name: 
// Module Name:    ALU_OP_MUX 
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
module ALU_OP_MUX(
    input [31:0] r2_dout,
    input [15:0] Immed,//automatically deals with sign extension
    input ALUSrc,
    output [31:0] alu_b,
    output [31:0] sext_Immed //sign-extension of Immed
    );
assign sext_Immed = {{16{Immed[15]}},Immed};
assign alu_b = ALUSrc? sext_Immed:r2_dout;


endmodule
