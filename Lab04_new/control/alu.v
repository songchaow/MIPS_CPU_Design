`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:35 03/14/2017 
// Design Name: 
// Module Name:    alu 
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
module alu(
  input signed [31:0] alu_a,
  input signed [31:0] alu_b,
  input [4:0] alu_op,
  output reg [31:0] alu_out
);

parameter 
	A_NOP = 5'h00,//空运算
	A_ADD = 5'h01,//符号加
	A_SUB = 5'h02,//符号减
	A_AND = 5'h03,//与
	A_OR  = 5'h04,//或
	A_XOR = 5'h05,//异或
	A_NOR = 5'h06;//或非


always @(*) begin
	case(alu_op)
		A_NOP: alu_out = alu_a;
		A_ADD: alu_out = alu_a + alu_b;
		A_SUB: alu_out = alu_a - alu_b;
		A_AND: alu_out = alu_a & alu_b;
		A_OR:  alu_out = alu_a | alu_b;
		A_XOR: alu_out = alu_a ^ alu_b;
		A_NOR: alu_out = ~(alu_a | alu_b);
	endcase
end

endmodule
