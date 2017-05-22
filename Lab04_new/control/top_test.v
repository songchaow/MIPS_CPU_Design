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

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n)
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

