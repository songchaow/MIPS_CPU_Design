`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:08 05/06/2017 
// Design Name: 
// Module Name:    ALU_OpB 
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
module ALU_OpB(
    input   [1:0]   ALU_SrcB,
    input   [31:0]  sext_Immed,
    input   [31:0]  r2_dout,
    output  reg signed [31:0]  alu_opb
    );
always@(*)
begin
    case (ALU_SrcB)
        2'b00:
            alu_opb = r2_dout;
        2'b01:
            alu_opb = 4;
        2'b10:
            alu_opb = sext_Immed;
        2'b11:
            alu_opb = sext_Immed<<2;
        default: 
            alu_opb = r2_dout;
    endcase
end


endmodule
