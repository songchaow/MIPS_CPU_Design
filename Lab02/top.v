//top.v
module top(input clk,
input rst_n,
output [31:0] result)
begin
reg [31:0] alu_a;
reg [31:0] alu_b;
reg [4:0] alu_op;

reg	[4:0]	    	      r1_addr,
reg	[4:0]	                   r2_addr,
reg	[4:0]	                   r3_addr,
reg	[31:0]                       r3_din,
reg r3_wr,
output reg [31:0]	                   r1_dout,
output reg [31:0]	                   r2_dout

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
        .r3_din(r3_din),
        .r3_wr(r3_wr),
        .r1_dout(r1_dout),
        .r2_dout(r2_dout)
);
    reg [5:0] state;
    always@(posedge clk,negedge rst_n)
    begin
        if(~rst_n)
        state <= 0;
        else
        begin
            case(state)
            0://initialize
            begin
                
            end
            endcase
        end
    end
end