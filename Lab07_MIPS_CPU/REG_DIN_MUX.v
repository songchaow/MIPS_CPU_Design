`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:14 04/15/2017 
// Design Name: 
// Module Name:    REG_DIN_MUX 
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
module REG_DIN_MUX(
    input [31:0] alu_out,
    input [31:0] DMEM_out,
    input MemtoReg,
    output [31:0] reg_datain
    );
assign reg_datain = MemtoReg? DMEM_out:alu_out;

endmodule
