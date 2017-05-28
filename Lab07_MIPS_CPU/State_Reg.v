`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:06:04 05/07/2017 
// Design Name: 
// Module Name:    State_Reg 
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
module State_Reg(
    input               clk,
    input               rst_n,
    input       [31:0]  r2_dout,
    input       [31:0]  mem_dout,
    input               IR_Write,
    output  reg [31:0]  mem_din,
    output  reg [31:0]  instruction,//will refresh when enabled
    output  reg [31:0]  data//will refresh at every clock
    );
always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        instruction <= 0;
        data <= 0;
        mem_din <= 0;
    end
    else
    begin
    if(IR_Write)
        instruction <= mem_dout;
    data <= mem_dout;
    mem_din <= r2_dout;
    end
end
endmodule
