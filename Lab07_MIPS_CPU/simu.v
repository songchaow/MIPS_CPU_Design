`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:07:42 05/24/2017
// Design Name:   top
// Module Name:   D:/ISE Project/COD-Labs/Lab07_MIPS_CPU/simu.v
// Project Name:  Lab07_MIPS_CPU
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
	wire [5:0] opcode;
	wire [5:0] funct;
	wire PC_en;
	wire [31:0] PC;
	wire [31:0] next_PC;
	wire [31:0] Mem_addr;
	wire [31:0] mem_data;
	wire [31:0] r1_data;
	wire [31:0] r2_data;
	wire [4:0] r1_addr;
	wire [4:0] r2_addr;
	wire [4:0] r3_addr_mux;
	wire [31:0] reg_datain;
	wire [15:0] Immed;
	wire [31:0] sext_Immed;
	wire [31:0] r1_dout;
	wire [31:0] r2_dout;
	wire [31:0] alu_a;
	wire [31:0] alu_b;
	wire [3:0] alu_op;
	wire [31:0] alu_out;
	wire [31:0] alu_result;
	wire ALU_ZERO;
	wire ALU_POSITIVE;
	wire [31:0] M_doutb;
	wire MemtoReg;
	wire MemWrite;
	wire Branch;
	wire Branch_ne;
	wire Branch_gz;
	wire RegDst;
	wire RegWrite;
	wire [1:0] ALUOp;
	wire [25:0] Jump_addr;
	wire PCWrite;
	wire [1:0] PC_Src;
	wire ALU_SrcA;
	wire [1:0] ALU_SrcB;
	wire IorD;
	wire IR_Write;
	wire [6:0] state;
	wire [6:0] next_state;
	wire [31:0] ForwardA;
	wire [31:0] ForwardB;
	wire SelectA;
	wire SelectB;
	wire fromWB;
	wire [31:0] WB_value;
	wire [31:0] reg_realdatain;
	wire [2:0] stage1;
	wire [2:0] stage2;
	wire [2:0] stage3;
	wire [2:0] stage4;
	wire [2:0] stage5;
	wire [6:0] state1;
	wire [6:0] state2;
	wire [6:0] state3;
	wire [6:0] state4;
	wire [6:0] state5;
	wire en0;
	wire DMemVisit;
	wire BranchSig;
	wire [1:0] BrSigEn;
	wire JmpSig;
	wire [1:0] JmpSigEn;
	wire [6:0] ackstate;
	wire PC_En_Start;
	wire PC_En_Conflict;
	wire [2:0] bubblePri;
	wire bubble;
	wire [2:0] flushPri;
	wire flush;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.instruction(instruction), 
		.opcode(opcode), 
		.funct(funct), 
		.PC_en(PC_en), 
		.PC(PC), 
		.next_PC(next_PC), 
		.Mem_addr(Mem_addr), 
		.mem_data(mem_data), 
		.r1_data(r1_data), 
		.r2_data(r2_data), 
		.r1_addr(r1_addr), 
		.r2_addr(r2_addr), 
		.r3_addr_mux(r3_addr_mux), 
		.reg_datain(reg_datain), 
		.Immed(Immed), 
		.sext_Immed(sext_Immed), 
		.r1_dout(r1_dout), 
		.r2_dout(r2_dout), 
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out), 
		.alu_result(alu_result), 
		.ALU_ZERO(ALU_ZERO), 
		.ALU_POSITIVE(ALU_POSITIVE), 
		.M_doutb(M_doutb), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.Branch_ne(Branch_ne), 
		.Branch_gz(Branch_gz), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUOp(ALUOp), 
		.Jump_addr(Jump_addr), 
		.PCWrite(PCWrite), 
		.PC_Src(PC_Src), 
		.ALU_SrcA(ALU_SrcA), 
		.ALU_SrcB(ALU_SrcB), 
		.IorD(IorD), 
		.IR_Write(IR_Write), 
		.state(state), 
		.next_state(next_state), 
		.ForwardA(ForwardA), 
		.ForwardB(ForwardB), 
		.SelectA(SelectA), 
		.SelectB(SelectB), 
		.fromWB(fromWB), 
		.WB_value(WB_value), 
		.reg_realdatain(reg_realdatain), 
		.stage1(stage1), 
		.stage2(stage2), 
		.stage3(stage3), 
		.stage4(stage4), 
		.stage5(stage5), 
		.state1(state1), 
		.state2(state2), 
		.state3(state3), 
		.state4(state4), 
		.state5(state5), 
		.en0(en0), 
		.DMemVisit(DMemVisit), 
		.BranchSig(BranchSig), 
		.BrSigEn(BrSigEn), 
		.JmpSig(JmpSig), 
		.JmpSigEn(JmpSigEn), 
		.ackstate(ackstate), 
		.PC_En_Start(PC_En_Start), 
		.PC_En_Conflict(PC_En_Conflict), 
		.bubblePri(bubblePri), 
		.bubble(bubble), 
		.flushPri(flushPri), 
		.flush(flush)
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

