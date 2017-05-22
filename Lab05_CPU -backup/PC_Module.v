`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:28 04/15/2017 
// Design Name: 
// Module Name:    PCModule 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// functions:
// contains PC, MUX and 2 Adders. one for PC+4, one for jmp
// increase PC normally
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PCModule(
    input   clk,
    input   rst_n,
    input   Branch,
    input   Branch_ne,
    input   Branch_gz,
    input   Jump,
    input   [25:0]  Jump_addr,
    input   ALU_ZERO,
    input   ALU_POSITIVE,
    input   [31:0]  sext_Immed,//sign extension Immed from ALU_OP_MUX
    output  reg [31:0]  PC,
    output  reg [31:0] post_PC,//自增后的PC
    output  [31:0] PC_Src, //the final PC considering jumping
    output  [31:0] PC_Branch //use combinational logic to produce PC when branch happens
    );
    assign PC_Branch = ((Branch && ALU_ZERO)||(Branch_ne && !ALU_ZERO)||(Branch_gz && ALU_POSITIVE))?(post_PC+sext_Immed):post_PC;
    assign PC_Src = Jump ? {post_PC[31:26],Jump_addr}:PC_Branch;
    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
		  begin
        post_PC <= 0;
		  end
        else
        post_PC <= PC + 1;
    end
    //always@(posedge ~clk or sext_Immed)//在该指令的地址偏移得到后或最迟在下半周期给PC赋��
    always@(PC_Src)
    begin
        //if(~rst_n)
        //PC <= 0;
        //else
        PC <= PC_Src;
    end
endmodule
