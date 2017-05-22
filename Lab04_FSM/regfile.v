`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:08 04/01/2017 
// Design Name: 
// Module Name:    regfile 
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
module REG_FILE(
input			      clk,
input			      rst_n,
input	[4:0]	    	      r1_addr,
input	[4:0]	                   r2_addr,
input	[4:0]	                   r3_addr,
input	[31:0]                       r3_din,
input			      r3_wr,
output reg [31:0]	                   r1_dout,
output reg [31:0]	                   r2_dout
);
reg [31:0] R[31:0];

endmodule
