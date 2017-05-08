`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:02:16 03/28/2017
// Design Name:   top
// Module Name:   D:/ISE Project/COD/Lab03/simu.v
// Project Name:  Lab03
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

module simu;

	// Inputs
	reg clk;
	reg rst_n;

	// Outputs
	wire [31:0] alu_out;
	wire [31:0] reg_in;
	wire [5:0] state;
	wire [31:0] alu_a;
	wire [31:0] alu_b;
	wire [4:0] alu_op;
	wire r3_wr;
	wire [31:0] r1_dout;
	wire [31:0] r2_dout;
	wire [4:0] r1_addr;
	wire [4:0] r2_addr;
	wire [4:0] r3_addr;
	wire wea;
	wire [5:0] ram_waddr;
	wire [31:0] ram_din;
	wire [5:0] ram_raddr;
	wire [31:0] ram_dout;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.alu_out(alu_out), 
		.reg_in(reg_in), 
		.state(state), 
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.r3_wr(r3_wr), 
		.r1_dout(r1_dout), 
		.r2_dout(r2_dout), 
		.r1_addr(r1_addr), 
		.r2_addr(r2_addr), 
		.r3_addr(r3_addr), 
		.wea(wea), 
		.ram_waddr(ram_waddr), 
		.ram_din(ram_din), 
		.ram_raddr(ram_raddr), 
		.ram_dout(ram_dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst_n <= 1;
		// Add stimulus here
		forever #10 clk <= ~clk;

	end
      
endmodule

