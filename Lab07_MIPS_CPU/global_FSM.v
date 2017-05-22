`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:22 05/20/2017 
// Design Name: 
// Module Name:    global_FSM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 全局状态机，用来控制5个状态机的协同工作。
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module global_FSM(
    input               clk,
    input               rst_n,
    input   [31:0]      instruction,
    input               ALU_ZERO,
    input               ALU_POSITIVE,
    //Control signals:
    //PC:
    output           PCWrite,
    output   [1:0]   PC_Src,
    //PC_En
    output           Branch,
    output           Branch_ne,
    output           Branch_gz,

    //MEM:
    output           MemtoReg,    
    output           MemWrite,
    output           IorD,
    //RegFile
    output           RegDst,
    output           RegWrite,
    //ALU
    output   [1:0]   ALUOp,
    output           ALU_SrcA,
    output   [1:0]   ALU_SrcB,
    //Instruction Reg
    output           IR_Write
    );
wire en021;
wire en122;
wire en223;
wire en324;
//ack: acknowledgement for fetch requests
wire ack1,ack2,ack3,ack4,ack5;//ack1优先级最高
assign ack1 = (~BranchSig)&&(~JmpSig)&&fetch_req1;
assign ack2 = (~BranchSig)&&(~JmpSig)&&fetch_req2&&(~ack1);
assign ack3 = (~BranchSig)&&(~JmpSig)&&fetch_req3&&(~ack1)&&(~ack2);
assign ack4 = (~BranchSig)&&(~JmpSig)&&fetch_req4&&(~ack1)&&(~ack2)&&(~ack3);
assign ack5 = (~BranchSig)&&(~JmpSig)&&fetch_req5&&(~ack1)&&(~ack2)&&(~ack3)&&(~ack4);
//一般的PC_En来自于指令开始时:
wire PC_En_Start = ack1||ack2||ack3||ack4||ack5;//这条有效时，来自于J/JR/Branch的PC_En请求要抑制。 ...错了。。
wire PC_En_Conflict1,PC_En_Conflict2,PC_En_Conflict3,PC_En_Conflict4,PC_En_Conflict5;

wire   [5:0]       opcode;
assign  opcode = instruction[31:26];
reg JmpSig,BranchSig;
reg [1:0] JmpSigEn,BrSigEn;
always@(posedge clk or negedge rst_n)//J/JR
begin
    if(JmpOccur)//无条件跳转 state==1
    begin
        //begin counting
        JmpSig <= 1;
        JmpSigEn <= 2;
    end
    else if(JmpSigEn)
    begin
        JmpSigEn <= JmpSigEn-1;
    end
    else//JmpSigEn=0
        JmpSig <= 0;
end

always@(posedge clk or negedge rst_n)//Branch
begin
    if(Branch1Occur||Branch2Occur||Branch3Occur||Branch4Occur||Branch5Occur)
    begin
        BranchSig <= 1;
        BrSigEn <= 1;
    end
    else if(BrSigEn)
        BrSigEn <= BrSigEn-1;
    else
        BranchSig <= 0;
end
//访存冲突检测：
//访存冲突只可能是数据访存与取指的冲突。故数据访存对应指令在前，优先级更高
wire DMemVisit1 = (state1==S3||state1==S5)
wire DMemVisit = 


wire JmpOccur = (next_state1 == S11||next_state1==S12)||(next_state2 == S11||next_state2==S12)||(next_state3 == S11||next_state3==S12)||(next_state4 == S11||next_state4==S12)||(next_state5 == S11||next_state5==S12);
wire Branch1Occur = (state1==S8)&&(Branch1&&ALU_ZERO)|| (Branch_ne1 && !ALU_ZERO)||(Branch_gz1 && ALU_POSITIVE);
wire Branch2Occur = (state2==S8)&&(Branch2&&ALU_ZERO)|| (Branch_ne2 && !ALU_ZERO)||(Branch_gz2 && ALU_POSITIVE);
wire Branch3Occur = (state3==S8)&&(Branch3&&ALU_ZERO)|| (Branch_ne3 && !ALU_ZERO)||(Branch_gz3 && ALU_POSITIVE);
wire Branch4Occur = (state4==S8)&&(Branch4&&ALU_ZERO)|| (Branch_ne4 && !ALU_ZERO)||(Branch_gz4 && ALU_POSITIVE);
wire Branch5Occur = (state5==S8)&&(Branch5&&ALU_ZERO)|| (Branch_ne5 && !ALU_ZERO)||(Branch_gz5 && ALU_POSITIVE);

//额外的PC_En检测信号 冲突来自于J/JR/Branch
assign PC_En_Conflict1 = ( Branch1Occur)||(state1 == S11||state1 == S12);
assign PC_En_Conflict2 = ( Branch2Occur)||(state2 == S11||state2 == S12);
assign PC_En_Conflict3 = ( Branch3Occur)||(state3 == S11||state3 == S12);
assign PC_En_Conflict4 = ( Branch4Occur)||(state4 == S11||state4 == S12);
assign PC_En_Conflict5 = ( Branch5Occur)||(state5 == S11||state5 == S12);
wire PC_En_Conflict =PC_En_Conflict1||PC_En_Conflict2||PC_En_Conflict3||PC_En_Conflict4||PC_En_Conflict5;
wire [6:0] PC_En_Conflictstate = PC_En_Conflict1?state1:(PC_En_Conflict2?state2:(PC_En_Conflict3?state3:(PC_En_Conflict4?state4:(PC_En_Conflict5?state5:1))));
//冒泡信号：
    //冒泡优先级。所有小于该优先级的状态机（后来进入的）都要停滞 一般冒泡也包括引起冒泡的指令
    wire    [2:0]   bubblePri = PC_En_Conflict?2:0;
    wire            bubble=PC_En_Conflict&&PC_En_Start;

//排空信号：
    //排空优先级。所有小于该优先级的状态机（后来进入的）都要排空 一般排空不包括引起排空的指令
    //推论：若JmpOccur和BranchOccur同时发生，一定是Branch指令在前。故优先判断Branch
    wire    [2:0]   flushPri = (Branch1Occur||Branch2Occur||Branch3Occur||Branch4Occur||Branch5Occur)?2:(JmpOccur?1:0);
    wire    [2:0]   flush =(Branch1Occur||Branch2Occur||Branch3Occur||Branch4Occur||Branch5Occur)||JmpOccur;
/*PC相关
可证明：PC_En_Start的指令总在PC_En_Conflict的指令之前，故优先级更高 (错了...)
如果PC_En_Conflict发生的话，之前的新指令是无效的
各对PC的赋值方式：
New:        PCWrite = 1 PC_Src = 2'b00 （PC_En_Start)
Branch:     Branchxx= 1 PC_Src = 2'b01
Jump:       PCWrite = 1 PC_Src = 2'b10
JR:         PCWrite = 1 PC_Src = 2'b11
*/

PCWrite = PC_En_Conflict?((PC_En_Conflictstate==S11||PC_En_Conflictstate==S12)?1:0):PC_En_Start;
PC_Src = (PC_En_Conflict&&PC_En_Conflictstate==S11)?2'b10:((PC_En_Conflict&&PC_En_Conflictstate==S12)?2'b11:((PC_En_Conflict&&PC_En_Conflictstate==S8)?2'b01:2'b00));

Branch = ((PC_En_Conflict&&PC_En_Conflictstate==S8)?(Branch1||Branch2||Branch3||Branch4||Branch5):0);
Branch_gz =((PC_En_Conflict&&PC_En_Conflictstate==S8)?(Branch_gz1||Branch_gz2||Branch_gz3||Branch_gz4||Branch_gz5):0);
Branch_ne =((PC_En_Conflict&&PC_En_Conflictstate==S8)?(Branch_ne1||Branch_ne2||Branch_ne3||Branch_ne4||Branch_ne5):0);

//state=0
assign IRWrite = ((state1==S0)?IRWrite1:0)||((state2==S0)?IRWrite2:0)||((state3==S0)?IRWrite3:0)||((state3==S0)?IRWrite3:0)||((state4==S0)?IRWrite4:0)||((state5==S0)?IRWrite5:0);
//state=2
    //PC_En
    //ALU
assign ALU_SrcB = ((state1==S2||state1==S6||state1==S8||state1==S9||state1==S12)?ALU_SrcB1:0)||((state2==S2||state2==S6||state2==S8||state2==S9||state2==S12)?ALU_SrcB2:0)||((state3==S2||state3==S6||state3==S8||state3==S9||state3==S12)?ALU_SrcB3:0)||((state4==S2||state4==S6||state4==S8||state4==S9||state4==S12)?ALU_SrcB4:0)||((state5==S2||state5==S6||state5==S8||state5==S9||state5==S12)?ALU_SrcB5:0);
assign ALUOp = ((state1==S2||state1==S6||state1==S8||state1==S9||state1==S12)?ALUOp1:0)||((state2==S2||state2==S6||state2==S8||state2==S9||state2==S12)?ALUOp2:0)||((state3==S2||state3==S6||state3==S8||state3==S9||state3==S12)?ALUOp3:0)||((state4==S2||state4==S6||state4==S8||state4==S9||state4==S12)?ALUOp4:0)||((state5==S2||state5==S6||state5==S8||state5==S9||state5==S12)?ALUOp5:0);


pipe_FSM FSM1(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .STATIC_PRIORITY(3'd0),
    .instruction(instruction),//每个状态机只在它的取指时取入instruction
    //FSM control:5
    .en0(en0),
    .bubble(bubble),
    //output:
    .next_en0(en021),
    .priority(priority)
    .rt_addr(rt_addr),//从之前的instruction提取并保存的
    .rd_addr(rd_addr),
    //control signals:
    .PCWrite(PCWrite),
    .PC_Src(PC_Src),
    .Branch(Branch),
    .Branch_ne(Branch_ne),
    .Branch_gz(Branch_gz),

    .MemtoReg(MemtoReg),
    .MemWrite(MemWrite),
    .IorD(IorD),

    .RegDst(RegDst),
    .RegWrite(RegWrite),

    .ALUOp(ALUOp),
    .ALU_SrcA(ALU_SrcA),
    .ALU_SrcB(ALU_SrcB),

    .IR_Write(IR_Write),
    .IR_in_Write(IR_in_Write),
    .state(state),
    .next_state(next_state)
);



endmodule
