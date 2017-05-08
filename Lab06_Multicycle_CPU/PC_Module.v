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
    input   PC_en,
    input   [31:0] next_PC,
    output  reg [31:0]  PC

    );

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
		  begin
            PC <= 0;
          end
        else
        begin
            if(PC_en)
            PC <= next_PC;
            else
            PC <= PC;
        end
    end
endmodule
