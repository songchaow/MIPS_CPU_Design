`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:19:47 04/14/2017
// Design Name:   I_MEM
// Module Name:   D:/ISE Project/COD/Lab05_CPU/MEMtest.v
// Project Name:  Lab05_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: I_MEM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MEMtest;

	// Inputs
	reg clka;
	reg ena;
	reg [0:0] wea;
	reg [8:0] addra;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	I_MEM uut (
		.clka(addra),  
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clka <= 1;
		#10;
		addra <= 1;
		#10;
		clka <= 0;
		#10;
		clka <= 1;
		#10;
	end
      
endmodule

