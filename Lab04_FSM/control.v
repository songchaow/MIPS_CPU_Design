`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:54 04/01/2017 
// Design Name: 
// Module Name:    control 
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
module control(
input clk, 
input rst_n, 
input [31:0] ram_dout, //from RAM
input [31:0] alu_out,
input [31:0]   r1_dout,
input [31:0]	r2_dout,

//no need to output, just made for convenience when debugging
output reg [5:0] curr_state, 
output reg MemtoReg, 
//control signal: 1: reg_in from MEM 0: reg_in from ALU_out
output reg rs, //the first register
output reg rt, //the second register

output reg	[4:0]	    	      r1_addr,
output reg	[4:0]	            r2_addr,
output reg	[4:0]	            r3_addr,
output [31:0] alu_a,
output [31:0] alu_b,

output reg [4:0] alu_op,
//to be treated specially as a reg, obtained from memory. (ususally it's obtained from instructions)
output reg   r3_wr,

//for RAM:
output reg wea,
output reg [5:0] ram_waddr,
output reg [31:0] ram_din,
output reg [5:0] ram_raddr,
output [31:0] reg_in //changed to wires. reg_in can either be from ALU_out or MEM
    );

always@(posedge clk, negedge rst_n)
begin
    if(~rst_n)
        curr_state <= 0;
        r3_wr <= 0;
        rs <= 0;//for this lab alu_a and alu_b are always reg[0] and reg[1]
        rd <= 1;
        
        r1_addr <= 0;
        r2_addr <= 1;//in this lab we only read reg[0], reg[1] and reg[2]
    else
	 begin
        curr_state <= next_state;
    end
end

always@(*)//combinational logic
begin
    case(curr_state)
    0:
    begin
        next_state <= 1;
        
    end
    //at the negedge of 0
    1: //read from MEM
    begin
        next_state <= 2;
        
        
    end

    default:
    next_state <= 0;
    endcase
end

//FSM part:
//(let's assume that always blocks in FSM happen in posedge while that in MEM happen in negedge?)
always@(posedge clk)
begin
    case(next_state)
    1://need to re-considered!
    begin
    //signals to be ready when curr=1:
        MemtoReg <= 1; //reg_in from MEM
        ram_raddr<= 0; //read MEM[0]
        r3_wr <= 1;
        r3_addr <= 0; //write to reg[0]
    end
end


    assign reg_in = MemtoReg? ram_dout:alu_out;
    //a mux, dealing with the source of reg_in

    assign alu_a = r1_dout;
    assign alu_b = r2_dout;//strictly alu_b may be also from immediate number.
    //a mux, dealing with the source of alu_a, alu_b

endmodule
