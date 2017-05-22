`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:07 03/21/2017 
// Design Name: 
// Module Name:    regfile_32x32 
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
module regfile_32x32(	
	input clk,
	input rst_n,
	input r3_wr,
	input [4:0] r1_addr,
	input [4:0] r2_addr,
	input [4:0] r3_addr,
	input [31:0] r3_din,
	output reg [31:0] r1_dout,
	output reg [31:0] r2_dout
);

parameter regsize = 32;
reg [31:0] file [0:31];
integer k;

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
	end
	else begin
		r1_dout <= file[r1_addr];
		r2_dout <= file[r2_addr];
	end
end

always @(negedge clk or negedge rst_n) begin
	if (~rst_n) begin
		for (k = 0; k < 32; k = k + 1) begin
			file[k] <= 0;
		end
	end
	else if (r3_wr) begin
		file[r3_addr] <= r3_din;
	end
end

endmodule