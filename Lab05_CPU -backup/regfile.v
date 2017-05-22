//r1 r2 read; r3 write
module REG_FILE(
input			            clk,
input			            rst_n,
input	     [4:0]	    	r1_addr,
input	     [4:0]	      r2_addr,
input	     [4:0]	      r3_addr,
input	     [31:0]       r3_din,
input			            r3_wr,
output reg [31:0]	      r1_dout,
output reg [31:0]	      r2_dout
);

reg [31:0] R[31:0];
integer i;

always@(r1_addr) //r1_dout
begin
    if(~rst_n)
        r1_dout <= 0;
    else
        r1_dout <= R[r1_addr];
end
always@(r2_addr) //r2_dout
begin
    if(~rst_n)
        r2_dout <= 0;
    else
        r2_dout <= R[r2_addr];
end
always@(posedge clk or negedge rst_n) //for REG_FILE
begin
    if(~rst_n)
    begin
        for ( i=0; i<32; i=i+1 )  R[i] <= 0;
    end
    else
    begin
        if(r3_wr) //write enabled
        R[r3_addr] <= r3_din;
    end
end
endmodule

