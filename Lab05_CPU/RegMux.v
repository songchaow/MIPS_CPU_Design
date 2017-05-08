`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:47 04/15/2017 
// Design Name: 
// Module Name:    Reg_MUX 
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
module Reg_MUX(
    input           RegDst,
    input   [4:0]   rt_addr,
    input   [4:0]   rd_addr,
    output  [4:0]   r3_addr_mux
    );
assign r3_addr_mux = RegDst ? rd_addr:rt_addr;
//RegDst 1: R-type 0:I-type

endmodule
