# Lab04 时序与状态机

> PB15000102 王嵩超

## 功能要求

综合利用三次实验的结果，完成以下功能：

- 通过例化，向ram中0地址到13地址存入14个数，比如10-23；向ram中100地址到106地址存入7个数，比如0~6，分别代表运算符，向ram 107地址写入-1。
- 运算控制：
  - 从ram 0地址开始的地方取两个数，从ram
    100地址开始的地方取一个运算符，计算之后，把结果存入ram地址200。
  - 从ram 2地址开始的地方取两个数，从ram
    101地址开始的地方取一个运算符，计算之后，把结果存入ram地址201。
  - 如果取出操作符为-1，则结束。

## 设计要求

- 实现一个control模块，完成整个运算的控制。
- 实现一个顶层模块top
  - 调用Ram模块
  - 调用RegFile
  - 调用ALU完成加法运算
  - 调用control模块，完成运算控制

## 减少周期数的具体实现

每个周期要干多件事情，类似流水线的思想。

T0周期：

- 将上次的相加结果存入RAM。
- 把写入寄存器的寄存器号准备好，准备将上个周期T3周期从RAM读入的数据写入reg[0]；
- 将RAM读入的地址改为第二个操作数，准备在下个周期读入。

T1周期：

- 将上次从RAM读入的数据存入reg[0]；
- **开始**从RAM读入第二个操作数，同时改寄存器的写地址，准备写到reg[1]，T1周期之后的不长时间便可以从dout得到数据。（然而此时时钟已过，故需等到下一周期才能把数据写入寄存器。）
- 将寄存器的两个读地址分别置为0，1（其实这两个地址一直不用变）。
- 将RAM的读地址改为运算符的对应位置。准备读运算符
- 将RAM的写地址改为相应位置。

T2周期：

周期开始时，已经具有的：

- T0周期读入的第一个操作数已经在T1时存入reg[0]

接着：

- T1周期中读入的数据会立即存入reg[1]。
- 寄存器会更新两个读数据。

> 这两步相当于是写reg[1]的同时读reg[1]，事实证明，读入的是新数据。

- RAM会开始读运算符，不久后运算符就通过线网输入到ALU。
- 打开RAM的写使能，准备在下周期写入。

然后：

- ALU是组合逻辑，在以上几步做完后可以立即算出结果。

再次返回T0周期。

## 仿真结果

![simu](simu.png)

RAM：

![ram](RAM.png)

## 源代码

```verilog
//alu.v
`timescale 1ns / 1ps
module alu(
  input signed [31:0] alu_a,
  input signed [31:0] alu_b,
  input [4:0] alu_op,
  output reg [31:0] alu_out
);

parameter 
	A_NOP = 5'h00,//空运算
	A_ADD = 5'h01,//符号加
	A_SUB = 5'h02,//符号减
	A_AND = 5'h03,//与
	A_OR  = 5'h04,//或
	A_XOR = 5'h05,//异或
	A_NOR = 5'h06;//或非


always @(*) begin
	case(alu_op)
		A_NOP: alu_out = alu_a;
		A_ADD: alu_out = alu_a + alu_b;
		A_SUB: alu_out = alu_a - alu_b;
		A_AND: alu_out = alu_a & alu_b;
		A_OR:  alu_out = alu_a | alu_b;
		A_XOR: alu_out = alu_a ^ alu_b;
		A_NOR: alu_out = ~(alu_a | alu_b);
	endcase
end

endmodule

```

仿真模块

```verilog
`timescale 1ns / 1ps

module top_test;

	// Inputs
	reg clk;
	reg rst_n;

	// wires
	wire r3_wr;
	wire [4:0]  r1_addr; 
	wire [4:0]  r2_addr; 
	wire [4:0]  r3_addr;
	wire [31:0]	r1_dout;
	wire [31:0]  r2_dout;
	wire [31:0]  r3_din;
	wire wea;
   wire [7:0]  addra;
	wire [7:0]  addrb;
   wire [31:0] doutb;
	wire [31:0] alu_out;
	wire MemtoReg;
	wire [2:0] status, next_status;
	
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst_n(rst_n),
		.r3_wr(r3_wr),
		.r1_addr(r1_addr),
		.r2_addr(r2_addr),
		.r3_addr(r3_addr),
		.r1_dout(r1_dout),
		.r2_dout(r2_dout),
		.r3_din(r3_din),
		.wea(wea),
		.addra(addra),
		.addrb(addrb),
		.doutb(doutb),
		.alu_out(alu_out),
		.MemtoReg(MemtoReg),
		.status(status),
		.next_status(next_status)
	);

	initial begin
		clk = 0;
		#10;
		forever begin
			clk <= ~clk;
			#10;
		end
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst_n = 1;
	end
	  
endmodule


```

顶层模块：

```verilog
`timescale 1ns / 1ps
module top(
	input clk,
	input rst_n,
	output r3_wr,
	output [4:0]  r1_addr, 
	output [4:0]  r2_addr, 
	output [4:0]  r3_addr,
	output [31:0]	r1_dout,
	output [31:0]  r2_dout,
	output [31:0]  r3_din,
	output wea,
   output [7:0]  addra, 
	output [7:0]  addrb,
   output [31:0] doutb,
	output [31:0] alu_out,
	output MemtoReg,
	output [2:0] status, next_status
	);
	
parameter alu_op = 5'h01;



ram u_ram_32x512(
  .clka(clk),
  .wea(wea),
  .addra(addra),
  .dina(alu_out),	/*直接接入alu_out*/
  .clkb(clk),
  .addrb(addrb),
  .doutb(doutb)  
);

regfile_32x32 u_regfile_32x32(
	.clk(clk),
	.rst_n(rst_n),
	.r3_wr(r3_wr),
	.r1_addr(r1_addr),
	.r2_addr(r2_addr),
	.r3_addr(r3_addr),
	.r3_din(r3_din),
	.r1_dout(r1_dout),
	.r2_dout(r2_dout)
);

alu u_alu(
	.alu_a(r1_dout),
	.alu_b(r2_dout),
	.alu_op(doutb[4:0]),
	.alu_out(alu_out)
);

control u_control(
	.clk(clk),
	.rst_n(rst_n),
	.doutb(doutb),
	.r3_din(r3_din),
	.alu_out(alu_out),
	.r3_wr(r3_wr),				// regfile 写使能
	.r3_addr(r3_addr),			// regfile 写地址
	.r1_addr(r1_addr),
	.r2_addr(r2_addr),			// regfile 读地址
	.wea(wea),					// ram 写使能
	.addra(addra), 				// ram 写地址
	.addrb(addrb),				// ram 读地址
	.MemtoReg(MemtoReg),
	.status(status),
	.next_status(next_status)
);

endmodule

```



regfile:

```verilog
`timescale 1ns / 1ps

module regfile_32x32(	
	input clk,
	input rst_n,
	input r3_wr,
	input [4:0] r1_addr,
	input [4:0] r2_addr,
	input [4:0] r3_addr,
	input [31:0] r3_din,
	output reg [31:0] r1_dout,
	output reg [31:0] r2_dout
);

parameter regsize = 32;
reg [31:0] R [0:31];
integer k;

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
	end
	else begin
		r1_dout <= R[r1_addr];
		r2_dout <= R[r2_addr];
	end
end

always @(negedge clk or negedge rst_n) begin
	if (~rst_n) begin
		for (k = 0; k < 32; k = k + 1) begin
			R[k] <= 0;
		end
	end
	else if (r3_wr) begin
		R[r3_addr] <= r3_din;
	end
end

endmodule
```

control模块（内含MemtoReg选择器）

```verilog
`timescale 1ns / 1ps
module control(
	input clk,
	input rst_n,
	input [31:0] doutb,
	input [31:0] alu_out,
	output [31:0] r3_din,
	output reg MemtoReg,
	output reg r3_wr,						// regfile 写使能
	output reg [4:0] r3_addr,				// regfile 写地址
	output reg [4:0] r1_addr, r2_addr,		// regfile 读地址
	output reg wea,							// ram 写使能
	output reg [7:0] addra, 				// ram 写地址
	output reg [7:0] addrb,				// ram 读地址
	output reg [2:0] status, next_status
);

reg [4:0] cur;

parameter 
	S0 = 0, S1 = 1,
	S2 = 2, S3 = 3,
	S4 = 4, S5 = 5,
	S6 = 6, S7 = 7;

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		status <= S0;
	end
	else begin
		status <= next_status;
	end
end

always @(*) begin
	case(status) 
		S0: next_status = S1;
		S1: next_status = S2;
		S2: next_status = S3;
		S3: next_status = S4;
		S4: next_status = (doutb != -1) ? S2 : S5;
		S5: next_status = S5;
		default: next_status = S0;
	endcase
end

//MemtoReg:
assign r3_din = MemtoReg ? doutb : alu_out;

always @(posedge clk or negedge rst_n) begin
	if (~rst_n) begin
		cur <= 0;
		wea <= 0;
		r3_wr <= 0;
	end
	else if (next_status == S1) begin
		wea <= 0;
		r3_wr <= 0;

		addrb <= 2*cur;			/* read ram[cur] */
	end
	else if (next_status == S2) begin
		wea <= 0;


		r3_wr <= 1;
		r3_addr <= 0;			/* write reg[0] */
		MemtoReg <= 1;

		addrb <= 2*cur + 1;		/* read ram[cur+1] */

	end
	else if (next_status == S3) begin
		wea <= 0;

		r3_wr <= 1;
		r3_addr <= 1;
		MemtoReg <= 1;

		r1_addr <= 0;			/* read reg[0] */
		r2_addr <= 1;			/* read reg[1] */
		addrb <= cur + 100;		/* read ram[cur+100] 运算符 */
		addra <= cur + 200;
		cur <= cur + 1;
	end
	else if (next_status == S4) begin
		if(doutb != -1)begin
			wea <= 1;

			r3_wr <= 0;

			addrb <= 2*cur;			/* read ram[cur] */
		end
	end
	else if (next_status == S5) begin
		wea <= 0;
		r3_wr <= 0;
	end
end

endmodule



```