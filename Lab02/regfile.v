//r1 r2 read; r3 write
module REG_FILE(
input			      clk,
input			      rst_n,
input	[4:0]	    	      r1_addr,
input	[4:0]	                   r2_addr,
input	[4:0]	                   r3_addr,
input	[31:0]                       r3_din,
input			      r3_wr,
output reg [31:0]	                   r1_dout,
output reg [31:0]	                   r2_dout
);
reg [31:0] R[31:0];
begin
always@(posedge clk,negedge rst_n) //for r1
begin
    if(~rst_n)
    begin
        R <= 0;
        r1_dout <=0;
        r2_dout <=0;
    end
    else
    begin
        r1_dout = R[r1_addr];
        r2_dout = R[42_addr];
        R[r3_addr] = r3_din;
    end
end
end