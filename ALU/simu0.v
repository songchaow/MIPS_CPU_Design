`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:22:50 03/15/2017
// Design Name:   simu
// Module Name:   D:/ISE Project/COD/ALU/simu0.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: simu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module simu0;

	// Inputs
	reg [31:0] alu_a;
	reg [31:0] alu_b;
	reg [4:0] alu_op;

	// Outputs
	wire [31:0] alu_out;

	// Instantiate the Unit Under Test (UUT)
	simu uut (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out)
	);

	initial begin
		// Initialize Inputs
		// Add stimulus here
		alu_a =2;
		alu_b =2;
		alu_op = 5'h01;

	end
      
endmodule

