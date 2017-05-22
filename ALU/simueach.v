`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:43:07 03/15/2017
// Design Name:   top
// Module Name:   D:/ISE Project/COD/ALU/simueach.v
// Project Name:  ALU
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

module simueach;

	// Inputs
	reg [31:0] alu_a;
	reg [31:0] alu_b;
	reg [4:0] alu_op;

	// Outputs
	wire [31:0] alu_out;
	
	parameter A_NOP = 5'h00; //空运算  
parameter A_ADD = 5'h01; //符号加
parameter A_SUB = 5'h02; //符号减
parameter A_AND = 5'h03; //与
parameter A_OR  = 5'h04; //或
parameter A_XOR = 5'h05; //异或
parameter A_NOR = 5'h06; //或非

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out)
	);

	initial begin
		// Initialize Inputs
		alu_a = 29;
		alu_b = 12;
		alu_op = A_NOP;

		// Wait 100 ns for global reset to finish
		#100;
      alu_op = A_ADD;
		#100;
		alu_op = A_SUB;
		#100;
		alu_op = A_AND;
		#100;
		alu_op = A_OR;
		#100;
		alu_op = A_XOR;
		#100;
		alu_op = A_NOR;
		// Add stimulus here

	end
      
endmodule

