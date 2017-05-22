//top.v
module top(input clk, input rst_n, 
output reg [5:0] state,
output [31:0] alu_out,
output reg	[4:0]	    	      r1_addr,
output reg	[4:0]	            r2_addr,
output reg	[4:0]	            r3_addr,
output reg [31:0] alu_a,
output reg [31:0] alu_b,
output reg [4:0] alu_op,
output reg   r3_wr,
output   [31:0]   r1_dout,
output   [31:0]	r2_dout);



//reg	[31:0]            r3_din; //substituted by alu_out.
//registers can only be set values via ALU.



ALU myALU (
		.alu_a(alu_a), 
		.alu_b(alu_b), 
		.alu_op(alu_op), 
		.alu_out(alu_out)
);
REG_FILE myreg(
        .clk(clk),
        .rst_n(rst_n),
        .r1_addr(r1_addr),
        .r2_addr(r2_addr),
        .r3_addr(r3_addr),
        .r3_din(alu_out),
        .r3_wr(r3_wr),
        .r1_dout(r1_dout),
        .r2_dout(r2_dout)
);
    always@(posedge clk,negedge rst_n)
    begin
        if(~rst_n)
		  begin
        state <= 0;
		  r1_addr <= 0;
		  r2_addr <= 1;
		  r3_addr <= 0;
		  alu_op <= 5'h01;
		  end
        else
        begin
            case(state)
            0://initialize I R[0]=1
            begin
					 r3_wr <= 1;
					 alu_a <= 1;
					 alu_b <= 0;
					 state <= 1;
            end
				1://waiting
				begin
				    state <= 2;
				end
				2://initialize II R[1]=1
				begin
				    r3_addr <= 1;
					 state <= 3;
				end
				3://waiting
				begin
				    state <= 4;
				end
				4://turn off writing
				begin
				    r3_wr <= 0;
					 state <= 5;
				end
				5://calculate
				begin
				    r3_addr <= r2_addr + 1; //adjust the writing port
					 r3_wr <= 1;
					 alu_a <= r1_dout; //R[n-1]
					 alu_b <= r2_dout; //R[n-2]
					 state <= 6;
				end
				6://writing
				begin
				    state <= 7;
				end
				7://judge
				begin
				    r3_wr <= 0;
					 if(r3_addr ==31) //reach the end
					 state <= 10;
					 else state <= 8;
				end
				8://move
				begin
				    r1_addr <= r1_addr + 1;
					 r2_addr <= r2_addr + 1;
					 state <= 9;
				end
				9://waiting This is important, because r1_out and r2_out take time to output.
				begin
				    state <= 5;
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