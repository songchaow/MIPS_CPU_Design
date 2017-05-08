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
// combinational logic used to generate the next PC
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_Gen(
    input   [31:0]  alu_out,
    input   [31:0]  alu_out_reg,
    input   [1:0] PC_Src,
    input   [25:0]  Jump_addr,
    /*  00: normally increase by 4
        01: increase by the previous ALU result branch
        10: jmp
    */
    input   [31:0]  PC,
    output  reg [31:0] next_PC//变化后的PC
    );
    //assign PC_Branch = ((Branch && ALU_ZERO)||(Branch_ne && !ALU_ZERO)||(Branch_gz && ALU_POSITIVE))?(next_PC+sext_Immed):next_PC;
    //assign PC_Src = Jump ? {next_PC[31:26],Jump_addr}:PC_Branch;
    //always@(posedge ~clk or sext_Immed)//在该指令的地址偏移得到后或最迟在下半周期给PC赋��


    always@(*)
    begin
      case (PC_Src)
        2'b00:
        next_PC = alu_out;//上一步，alu算出了PC自增的值
        2'b01:
        next_PC = alu_out_reg;//last output
        2'b10: 
        next_PC = {PC[31:28],Jump_addr,2'b00};
        default: 
        next_PC = alu_out;
      endcase
    end


endmodule
