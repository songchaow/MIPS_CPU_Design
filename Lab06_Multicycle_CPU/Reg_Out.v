`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:21 05/07/2017 
// Design Name: 
// Module Name:    Reg_Out 
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
module REG_OUT(
    input               clk,
    input               rst_n,
    input       [31:0]  r1_data,
    input       [31:0]  r2_data,
    output  reg [31:0]  r1_dout,
    output  reg [31:0]  r2_dout
    );
always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        r1_dout <= 0;
        r2_dout <= 0;
    end
    else
    begin
        r1_dout <= r1_data;
        r2_dout <= r2_data;
    end
end


endmodule
