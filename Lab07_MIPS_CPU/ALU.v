`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:23 03/14/2017 
// Design Name: 
// Module Name:    ALU
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
module ALU(
    input signed [31:0] alu_a,
    input signed [31:0] alu_b,
    input [3:0] alu_op,
    output reg [31:0] alu_out,
	output ALU_ZERO,
	output ALU_POSITIVE
    );
parameter A_NOP = 4'b1111; //空运算
parameter A_ADD = 4'b0010; //符号加和无符号加
parameter A_SUB = 4'b0110; //符号减和无符号减
parameter A_AND = 4'b0000; //与
parameter A_OR  = 4'b0001; //或
parameter A_SETIFLESS = 4'b0111; //小于则置位
parameter A_XOR = 4'b0011; //异或 自定义
parameter A_NOR = 4'b1100; //或非

assign ALU_ZERO = (alu_out==0);
assign ALU_POSITIVE = (~alu_out[31]) && (| alu_out);
always@(*)
begin
    case(alu_op)
	 A_NOP:
	 begin
	     alu_out <= alu_a;
	 end
	 A_ADD:
	 begin
	     alu_out <= alu_a + alu_b;
	 end
	 A_SUB:
	 begin
	     alu_out <= alu_a - alu_b;
	 end
	 A_AND:
	 begin
	     alu_out <= alu_a & alu_b;
	 end
	 A_OR:
	 begin
	     alu_out <= alu_a | alu_b;
	 end
	 A_XOR:
	 begin
	 	alu_out <=  alu_a ^ alu_b;
	 end
	 A_SETIFLESS:
	 begin
	     alu_out <= (alu_a < alu_b);
    end
	 A_NOR:
	 begin
	     alu_out <= ~(alu_a | alu_b);
	 end
	 default:
	 	alu_out <= alu_a;
	 endcase
end
endmodule

module SEXT(
	input					clk,
	input					rst_n,
	input		[15:0]      Immed,
	output	reg	[31:0]      sext_Immed
);
//bug2 fixed at 21:36
//assign sext_Immed = {{16{Immed[15]}},Immed};
always @(posedge clk or negedge rst_n)
begin
	if(~rst_n)
		sext_Immed <= 0;
	else sext_Immed <= {{16{Immed[15]}},Immed};
end
endmodule

module ALU_RESULT_REG(
	input		clk,
	input		rst_n,
	input		[31:0]	alu_result,
	output	reg	[31:0]	alu_out
);
always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	alu_out <= 0;
	else
	alu_out <= alu_result;
end

endmodule