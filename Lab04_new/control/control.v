`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:57 03/28/2017 
// Design Name: 
// Module Name:    control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description:
// 
// 		通过例化，
//		向ram中0地址到13地址存入14个数，比如10-23；
//		向ram中100地址到106地址存入7个数，比如0~6，分别代表运算符，
//		向ram 107地址写入-1
//		运算控制：
//			从ram 0地址开始的地方取两个数，从ram 100地址开始的地方取一个运算符，计算之后，把结果存入ram地址200
//			从ram 2地址开始的地方取两个数，从ram 101地址开始的地方取一个运算符，计算之后，把结果存入ram地址201
//			……
//		如果取出操作符为-1，则结束。 
//
//		result:
//			10 nop 11 = 10
//			12 add 13 = 25
//			14 sub 15 = -1
//			16 and 17 = 17
//			18 or  19 = 19
//			20 xor 21 = 1
//			22 nor 23 = -24
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module control(
	input clk,
	input rst_n,
	input [31:0] doutb,
	output reg MemtoReg,
	output reg r3_wr,						// regfile 写使能
	output reg [4:0] r3_addr,				// regfile 写地址
	output reg [4:0] r1_addr, r2_addr,		// regfile 读地址
	output reg wea,							// ram 写使能
	output reg [8:0] addra, 				// ram 写地址
	output reg [8:0] addrb					// ram 读地址
);

reg [4:0] cur;
reg [2:0] status, next_status;

parameter 
	S0 = 0, S1 = 1,
	S2 = 2, S3 = 3,
	S4 = 4, S5 = 5,
	S6 = 6, S7 = 7;

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		status <= S0;
	end
	else begin
		status <= next_status;
	end
end

always @(*) begin
	case(status) 
		S0: next_status = S1;
		S1: next_status = S2;
		S2: next_status = S3;
		S3: next_status = S4;
		S4: next_status = (doutb != -1) ? S2 : S5;
		S5: next_status = S5;
		default: next_status = S0;
	endcase
end

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		cur <= 0;
		wea <= 0;
		r3_wr <= 0;
	end
	else if (next_status == S1) begin
		wea <= 0;
		r3_wr <= 0;

		addrb <= 2*cur;			/* read ram[cur] */
	end
	else if (next_status == S2) begin
		wea <= 0;

		r3_wr <= 1;
		r3_addr <= 0;			/* write reg[0] */
		MemtoReg <= 1;

		addrb <= 2*cur + 1;		/* read ram[cur+1] */

	end
	else if (next_status == S3) begin
		wea <= 0;

		r3_wr <= 1;
		r3_addr <= 1;
		MemtoReg <= 1;

		r1_addr <= 0;			/* read reg[0] */
		r2_addr <= 1;			/* read reg[1] */
		addrb <= cur + 100;		/* read ram[cur+100] 运算符 */
		addra <= cur + 200;
		cur <= cur + 1;
	end
	else if (next_status == S4) begin
		if(doutb != -1)begin
			wea <= 1;

			r3_wr <= 0;

			addrb <= 2*cur;			/* read ram[cur] */
		end
	end
	else if (next_status == S5) begin
		wea <= 0;
		r3_wr <= 0;
	end
end

endmodule


