`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:10 03/28/2017 
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
output [31:0] alu_out, //used by debugging
output [31:0] reg_in, //registers are now not permanantly connected to alu_out
output [5:0] state,
output [31:0] alu_a,
output [31:0] alu_b,
output [4:0] alu_op,
output r3_wr,
output   [31:0]   r1_dout,
output   [31:0]	r2_dout,
output	[4:0]	    	      r1_addr,
output	[4:0]	            r2_addr,
output	[4:0]	            r3_addr,

//wires of RAM
output wea,
output [5:0] ram_waddr,
output [31:0] ram_din,
output [5:0] ram_raddr,
output [31:0] ram_dout
    );




REG_FILE myreg(
        .clk(clk),
        .rst_n(rst_n),
        .r1_addr(r1_addr),
        .r2_addr(r2_addr),
        .r3_addr(r3_addr),
        .r3_din(reg_in),
        .r3_wr(r3_wr),
        .r1_dout(r1_dout),
        .r2_dout(r2_dout)
);
ALU myALU (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out)
);

RAM myram (
		.clka(clk),
		.clkb(clk),
		.wea(wea), //new
		.addra(ram_waddr),
		.dina(ram_din),
		.addrb(ram_raddr),
		.doutb(ram_dout)
);

control FSM(
.clk(clk),
.rst_n(rst_n),
.state(state),
.r1_addr(r1_addr), //need to output
.r2_addr(r2_addr), //need
.r3_addr(r3_addr), //need
.alu_a(alu_a),     //need
.alu_b(alu_b),     //need
.alu_op(alu_op),   //need
.alu_out(alu_out),
.r3_wr(r3_wr),
.r1_dout(r1_dout),
.r2_dout(r2_dout),
//new
.wea(wea),
.ram_waddr(ram_waddr),
.ram_din(ram_din),
.ram_raddr(ram_raddr),
.ram_dout(ram_dout),
.reg_in(reg_in)
);


endmodule
