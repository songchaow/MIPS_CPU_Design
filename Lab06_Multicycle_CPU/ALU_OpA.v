`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:21 05/06/2017 
// Design Name: 
// Module Name:    ALU_OpA 
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
module ALU_OpA(
    input                   ALU_SrcA,
    input           [31:0]  curr_PC,
    input           [31:0]  r1_dout,
    output  signed  [31:0]  alu_opa
    );

assign alu_opa = ALU_SrcA? r1_dout:curr_PC;

endmodule
