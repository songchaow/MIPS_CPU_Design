`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:38 03/14/2017
// Design Name:   top
// Module Name:   D:/ISE Project/COD/ALU/simu.v
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

module simu(
    input signed [31:0] alu_a,
    input signed [31:0] alu_b,
    input [4:0] alu_op,
    output [31:0] alu_out
    );
	
	// Temps
	wire [31:0] sum1;
	wire [31:0] sum2;
	wire [31:0] sum3;

	// Outputs

	// Instantiate the Unit Under Test (UUT)
	top uut1 (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(sum1)
	);
	top uut2 (
		.alu_a(alu_b), 
		.alu_b(sum1), 
		.alu_op(alu_op), 
		.alu_out(sum2)
	);
	top uut3 (
		.alu_a(sum1), 
		.alu_b(sum2), 
		.alu_op(alu_op), 
		.alu_out(sum3)
	);
	top uut4 (
		.alu_a(sum2), 
		.alu_b(sum3), 
		.alu_op(alu_op), 
		.alu_out(alu_out)
	);
      
endmodule

