`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:11 05/06/2017 
// Design Name: 
// Module Name:    AddrMux 
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
module AddrMux(
    input   [31:0]  PC,
    input   [31:0]  alu_out,
    input   IorD,
    output  [31:0]  Mem_addr
    );
    //IorD: 0:from PC
assign Mem_addr = IorD? alu_out:PC;

endmodule
