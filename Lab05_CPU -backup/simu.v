`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:54 04/16/2017
// Design Name:   top
// Module Name:   D:/ISE Project/COD/Lab05_CPU/simu.v
// Project Name:  Lab05_CPU
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
	wire [31:0] instruction;
	wire [31:0] PC;
	wire [31:0] post_PC;
	wire [31:0] PC_Src; //use combinational logic to produce the next PC
	wire [31:0] PC_Branch;
	wire [5:0]	opcode;
	wire [15:0] Immed;
	wire [31:0]	sext_Immed;
	wire [4:0] r1_addr;
	wire [4:0] r2_addr;
	wire [4:0] r3_addr_mux;
	wire [31:0] reg_datain;
	wire [31:0] r1_dout;
	wire [31:0] r2_dout;
	wire [31:0] alu_a;
	wire [31:0] alu_b;
	wire [3:0] alu_op;
	wire [31:0] alu_out;
	wire [31:0] M_doutb;
	wire ALU_ZERO;
	wire ALU_POSITIVE;
	wire MemtoReg;
	wire MemWrite;
	wire MemRead;
	wire Branch;
	wire Branch_ne;
	wire Branch_gz;
	wire ALUSrc;
	wire RegDst;
	wire RegWrite;
	wire [1:0] ALUOp;
	wire Jump;
	wire [25:0] Jump_addr;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.instruction(instruction), 
		.Immed(Immed),
		.sext_Immed(sext_Immed),
		.PC(PC), 
		.post_PC(post_PC),
    	.PC_Src(PC_Src),
		.PC_Branch(PC_Branch),
		.opcode(opcode),
		.r1_addr(r1_addr), 
		.r2_addr(r2_addr), 
		.r3_addr_mux(r3_addr_mux), 
		.reg_datain(reg_datain), 
		.r1_dout(r1_dout), 
		.r2_dout(r2_dout), 
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out),
		.M_doutb(M_doutb), 
		.ALU_ZERO(ALU_ZERO), 
		.ALU_POSITIVE(ALU_POSITIVE),
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Branch(Branch), 
		.Branch_ne(Branch_ne), 
		.Branch_gz(Branch_gz),
		.ALUSrc(ALUSrc), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUOp(ALUOp),
		.Jump(Jump),
		.Jump_addr(Jump_addr)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst_n = 1;
		// Add stimulus here
		forever #10 clk <= ~clk;
	end
      
endmodule

