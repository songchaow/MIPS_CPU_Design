`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:39 04/15/2017 
// Design Name: 
// Module Name:    ALU_CONTROL 
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
module ALU_CONTROL(
    input [1:0] ALUOp,
    input [5:0] funct,
    output reg [3:0] post_ALUOp
    );
always@(*)
begin
    case(ALUOp)
    2'b00:
    post_ALUOp <= 2'b0010;//add
    2'b01:
    post_ALUOp <= 2'b0110;//subtract
    2'b10:
    begin
        case(funct)
            6'b100000:
            post_ALUOp <= 2'b0010;//add
            6'b100010:
            post_ALUOp <= 2'b0110;//subtract
            6'b100100:
            post_ALUOp <= 2'b0000;//and
            6'b100101:
            post_ALUOp <= 2'b0001;//or
            6'b101010:
            post_ALUOp <= 2'b0111;
            default:
            post_ALUOp <= 2'b1111; //空操��
        endcase
    end
    default:
        post_ALUOp <= 2'b1111;
    endcase
end

endmodule
