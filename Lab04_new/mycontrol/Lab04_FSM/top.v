`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:09:14 03/28/2017 
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
	output r3_wr,
	output [4:0]  r1_addr, 
	output [4:0]  r2_addr, 
	output [4:0]  r3_addr,
	output [31:0]	r1_dout,
	output [31:0]  r2_dout,
	output [31:0]  r3_din,
	output wea,
   output [7:0]  addra, 
	output [7:0]  addrb,
   output [31:0] doutb,
	output [31:0] alu_out,
	output MemtoReg,
	output [2:0] status, next_status
	);
	
parameter alu_op = 5'h01;



ram u_ram_32x512(
  .clka(clk),
  .wea(wea),
  .addra(addra),
  .dina(alu_out),	/*直接接入alu_out*/
  .clkb(clk),
  .addrb(addrb),
  .doutb(doutb)  
);

regfile_32x32 u_regfile_32x32(
	.clk(clk),
	.rst_n(rst_n),
	.r3_wr(r3_wr),
	.r1_addr(r1_addr),
	.r2_addr(r2_addr),
	.r3_addr(r3_addr),
	.r3_din(r3_din),
	.r1_dout(r1_dout),
	.r2_dout(r2_dout)
);

alu u_alu(
	.alu_a(r1_dout),
	.alu_b(r2_dout),
	.alu_op(doutb[4:0]),
	.alu_out(alu_out)
);

control u_control(
	.clk(clk),
	.rst_n(rst_n),
	.doutb(doutb),
	.r3_din(r3_din),
	.alu_out(alu_out),
	.r3_wr(r3_wr),				// regfile 写使能
	.r3_addr(r3_addr),			// regfile 写地址
	.r1_addr(r1_addr),
	.r2_addr(r2_addr),			// regfile 读地址
	.wea(wea),					// ram 写使能
	.addra(addra), 				// ram 写地址
	.addrb(addrb),				// ram 读地址
	.MemtoReg(MemtoReg),
	.status(status),
	.next_status(next_status)
);

endmodule
