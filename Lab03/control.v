`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:24 03/28/2017 
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

output reg [5:0] state, //no need to output, just made for convenience when debugging
output reg	[4:0]	    	      r1_addr,
output reg	[4:0]	            r2_addr,
output reg	[4:0]	            r3_addr,
output reg [31:0] alu_a,
output reg [31:0] alu_b,
output reg [4:0] alu_op,
output reg   r3_wr,

//for RAM
output reg wea,
output reg [5:0] ram_waddr,
output reg [31:0] ram_din,
output reg [5:0] ram_raddr,
output reg [31:0] reg_in
    );





//reg	[31:0]            r3_din; //substituted by alu_out.
//registers can only be set values via ALU.



    always@(posedge clk,negedge rst_n)
    begin
        if(~rst_n)
		  begin
        state <= 0;
		  r1_addr <= 0;
		  r2_addr <= 1;
		  r3_addr <= 0;
		  alu_op <= 5'h01;
		  //ram
		  ram_raddr <= 0;
		  reg_in <= 0;
		  ram_waddr <= 3;
		  wea <= 0;
		  end
        else
        begin
            case(state)
            0://initialize I R[0]=RAM[0]
            begin
					 r3_wr <= 1;
					 state <= 1;
            end
				1://waiting for MEM fetch
				begin
				    state <= 2;
				end
				2://assign to reg_in register
				begin
				    reg_in <= ram_dout;
					 state <= 3;
				end
				3://waiting for writing back
				begin
				    state <= 11;
				end
				
				11://initialize II R[1]=RAM[1]
				begin
				    r3_addr <= 1;
					 ram_raddr <= 1;
					 state <= 12;
				end
				12://waiting for MEM fetch
				begin
				    state <= 13;
				end
				13://assign to reg_in register
				begin
				    reg_in <= ram_dout;
					 state <= 14;
				end
				14://waiting for writing back
				begin
				    state <= 4;
				end
				4://turn off writing
				begin
				    r3_wr <= 0;
					 state <= 5;
				end
				5://before calculate
				begin
				    r3_addr <= r2_addr + 1; //adjust the writing port
					 ram_waddr <= r2_addr + 1;
					 r3_wr <= 1;//set write enable
					 
					 alu_a <= r1_dout; //R[n-1]
					 alu_b <= r2_dout; //R[n-2]
					 state <= 6;
				end
				6://calculating
				begin
				    reg_in <= alu_out;//this need to be delayed
					 ram_din <= alu_out;
				    state <= 7;
				end
				7://assign and judge
				begin
				    
					 wea <= 1; //set MEM write enable
					 if(r3_addr ==31) //reach the end
					 state <= 10;
					 else state <= 8;
				end
				8://move and wait when storing to MEM
				begin
				    r3_wr <= 0;
				    r1_addr <= r1_addr + 1;
					 r2_addr <= r2_addr + 1;
					 state <= 9;
				end
				9://waiting This is important, because r1_out and r2_out take time to output.
				begin
				    wea <= 0;
				    state <= 5;
					 ram_waddr <= ram_waddr + 1;
				end
				10://finish
				begin
				    state <= 10;
				end
				default:
				begin
				    state <= 0;
				end
            endcase
        end
    end
	 
endmodule
