`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:43:58 04/08/2017
// Design Name:   top
// Module Name:   D:/learn/ise/lab04_control/control/top_test.v
// Project Name:  control
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_test;

	// Inputs
	reg clk;
	reg rst_n;

	// wires
	wire r3_wr;
	wire [4:0]  r1_addr; 
	wire [4:0]  r2_addr; 
	wire [4:0]  r3_addr;
	wire [31:0]	r1_dout;
	wire [31:0]  r2_dout;
	wire [31:0]  r3_din;
	wire wea;
   wire [7:0]  addra;
	wire [7:0]  addrb;
   wire [31:0] doutb;
	wire [31:0] alu_out;
	wire MemtoReg;
	wire [2:0] status, next_status;
	
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n),
		.r3_wr(r3_wr),
		.r1_addr(r1_addr),
		.r2_addr(r2_addr),
		.r3_addr(r3_addr),
		.r1_dout(r1_dout),
		.r2_dout(r2_dout),
		.r3_din(r3_din),
		.wea(wea),
		.addra(addra),
		.addrb(addrb),
		.doutb(doutb),
		.alu_out(alu_out),
		.MemtoReg(MemtoReg),
		.status(status),
		.next_status(next_status)
	);

	initial begin
		clk = 0;
		#10;
		forever begin
			clk <= ~clk;
			#10;
		end
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst_n = 1;
	end
	  
endmodule

