`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:23 03/14/2017 
// Design Name: 
// Module Name:    top 
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
module top(
    input signed [31:0] alu_a,
    input signed [31:0] alu_b,
    input [4:0] alu_op,
    output reg [31:0] alu_out
    );
parameter A_NOP = 5'h00; //������  
parameter A_ADD = 5'h01; //���ż�
parameter A_SUB = 5'h02; //���ż�
parameter A_AND = 5'h03; //��
parameter A_OR  = 5'h04; //��
parameter A_XOR = 5'h05; //���
parameter A_NOR = 5'h06; //���

always@(*)
begin
    case(alu_op)
	 A_NOP:
	 begin
	     
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
	     alu_out <= alu_a ^| alu_b;
    end
	 A_NOR:
	 begin
	     alu_out <= ~(alu_a | alu_b);
	 end
	 endcase
end
endmodule
