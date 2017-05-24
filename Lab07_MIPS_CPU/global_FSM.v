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
// 全局状态机，用来控�个状态机的协同工作�
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
    input   [31:0]      reg_din,
    input               ALU_ZERO,
    input               ALU_POSITIVE,
    //Control signals:
    //PC:
    output          PCWrite,
    output  [1:0]   PC_Src,
    //PC_En
    output          Branch,
    output          Branch_ne,
    output          Branch_gz,

    //MEM:
    output          MemtoReg,    
    output          MemWrite,
    output          IorD,
    //RegFile
    output  [4:0]   rt_addr,//used for write back
    output  [4:0]   rd_addr,//used for write back
    output  [4:0]   rs_addr,
    output          RegDst,
    output          RegWrite,
    output          fromWB,
    output  [31:0]  WB_value,
    //ALU
    output  [1:0]   ALUOp,
    output          ALU_SrcA,
    output  [1:0]   ALU_SrcB,
    output          SelectA,
    output          SelectB,
    //Instruction Reg
    output          IR_Write,
    //FSM information:
    output  [2:0]   stage1,
    output  [2:0]   stage2,
    output  [2:0]   stage3,
    output  [2:0]   stage4,
    output  [2:0]   stage5,
    output  [6:0]   state1,
    output  [6:0]   state2,
    output  [6:0]   state3,
    output  [6:0]   state4,
    output  [6:0]   state5,

    
    output          en0,
    output          DMemVisit,
    output  reg     BranchSig,
    output  reg [1:0]   BrSigEn,
    output  reg     JmpSig,
    output  reg [1:0]   JmpSigEn,
    output  [6:0]   ackstate,
    output          PC_En_Start,
    output          PC_En_Conflict,
    output  [2:0]   bubblePri,
    output          bubble,
    output  [2:0]   flushPri,
    output          flush
    );

parameter SIDLE = 15;
parameter SWAIT = 17;
parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;
parameter S3 = 3;
parameter S4 = 4;
parameter S5 = 5;
parameter S5plus = 14;
parameter S6 = 6;
parameter S7 = 7;
parameter S8 = 8;
parameter S8plus = 12;
parameter S9 = 9;
parameter S10 = 10;
parameter S11 = 11;
parameter S11plus = 13;
parameter S12 = 16;
parameter S12plus = 18;

wire en021;
wire en122;
wire en223;
wire en324;
//ack: acknowledgement for fetch requests
wire ack1,ack2,ack3,ack4,ack5;//ack1优先级最�
wire fetch_req1,fetch_req2,fetch_req3,fetch_req4,fetch_req5;
wire [6:0]  next_state1,next_state2,next_state3,next_state4,next_state5;
wire Branch1,Branch2,Branch3,Branch4,Branch5;
wire Branch_gz1,Branch_gz2,Branch_gz3,Branch_gz4,Branch_gz5;
wire Branch_ne1,Branch_ne2,Branch_ne3,Branch_ne4,Branch_ne5;
wire RegWrite1,RegWrite2,RegWrite3,RegWrite4,RegWrite5;
wire MemtoReg1,MemtoReg2,MemtoReg3,MemtoReg4,MemtoReg5;
wire RegDst1,RegDst2,RegDst3,RegDst4,RegDst5;
wire IR_Write1,IR_Write2,IR_Write3,IR_Write4,IR_Write5;
wire [1:0] ALU_SrcB0,ALU_SrcB1,ALU_SrcB2,ALU_SrcB3,ALU_SrcB4,ALU_SrcB5;
wire [1:0] ALUOp1,ALUOp2,ALUOp3,ALUOp4,ALUOp5;
wire [4:0]  rt_addr1,  rt_addr2,  rt_addr3,  rt_addr4,  rt_addr5;
wire [4:0]  rd_addr1,  rd_addr2,  rd_addr3,  rd_addr4,  rd_addr5;
wire [4:0]  rs_addr1,  rs_addr2,  rs_addr3,  rs_addr4,  rs_addr5;
wire        fromWB1,fromWB2,fromWB3,fromWB4,fromWB5;
wire [31:0] WB_value1,WB_value2,WB_value3,WB_value4,WB_value5;

wire    [6:0]   stateofALU;
wire    [4:0]   rsofALU;
wire    [4:0]   rtofALU;
wire    [6:0]   stateofTHREE;
wire    [4:0]   rdofTHREE;
wire    [4:0]   rtofTHREE;

wire    [6:0]   stateofFOUR;
wire    [4:0]   rtofFOUR;

assign ack1 = (~DMemVisit)&&(~BranchSig)&&(~JmpSig)&&fetch_req1;
assign ack2 = (~DMemVisit)&&(~BranchSig)&&(~JmpSig)&&fetch_req2&&(~ack1);
assign ack3 = (~DMemVisit)&&(~BranchSig)&&(~JmpSig)&&fetch_req3&&(~ack1)&&(~ack2);
assign ack4 = (~DMemVisit)&&(~BranchSig)&&(~JmpSig)&&fetch_req4&&(~ack1)&&(~ack2)&&(~ack3);
assign ack5 = (~DMemVisit)&&(~BranchSig)&&(~JmpSig)&&fetch_req5&&(~ack1)&&(~ack2)&&(~ack3)&&(~ack4);

assign ackstate = ack1?state1:(ack2?state2:(ack3?state3:(ack4?state4:(ack5?state5:state1))));
//一般的PC_En来自于指令开始时:
assign PC_En_Start = ack1||ack2||ack3||ack4||ack5;//这条有效时，来自于J/JR/Branch的PC_En请求要抑制�...错了。�
//PC_En_Start有效：意味着没有访存请求、没有跳转、无条件跳转
wire PC_En_Conflict1,PC_En_Conflict2,PC_En_Conflict3,PC_En_Conflict4,PC_En_Conflict5;

wire   [5:0]       opcode;
assign  opcode = instruction[31:26];
//reg JmpSig,BranchSig;
//reg [1:0] JmpSigEn,BrSigEn;

wire JmpOccur = (next_state1 == S11||next_state1==S12)||(next_state2 == S11||next_state2==S12)||(next_state3 == S11||next_state3==S12)||(next_state4 == S11||next_state4==S12)||(next_state5 == S11||next_state5==S12);
wire Branch1Occur = (state1==S8)&&(Branch1&&ALU_ZERO)|| (Branch_ne1 && !ALU_ZERO)||(Branch_gz1 && ALU_POSITIVE);
wire Branch2Occur = (state2==S8)&&(Branch2&&ALU_ZERO)|| (Branch_ne2 && !ALU_ZERO)||(Branch_gz2 && ALU_POSITIVE);
wire Branch3Occur = (state3==S8)&&(Branch3&&ALU_ZERO)|| (Branch_ne3 && !ALU_ZERO)||(Branch_gz3 && ALU_POSITIVE);
wire Branch4Occur = (state4==S8)&&(Branch4&&ALU_ZERO)|| (Branch_ne4 && !ALU_ZERO)||(Branch_gz4 && ALU_POSITIVE);
wire Branch5Occur = (state5==S8)&&(Branch5&&ALU_ZERO)|| (Branch_ne5 && !ALU_ZERO)||(Branch_gz5 && ALU_POSITIVE);

always@(posedge clk or negedge rst_n)//J/JR
begin
    if(~rst_n)
    begin
        JmpSig <= 0;
        JmpSigEn <= 0;
    end
    else if(JmpOccur)//无条件跳�state==1
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
    if(~rst_n)
    begin
        BranchSig <= 0;
        BrSigEn <= 1;
    end
    else if(Branch1Occur||Branch2Occur||Branch3Occur||Branch4Occur||Branch5Occur)
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
wire DMemVisit1 = (state1==S3||state1==S5);
wire DMemVisit2 = (state2==S3||state2==S5);
wire DMemVisit3 = (state3==S3||state3==S5);
wire DMemVisit4 = (state4==S3||state4==S5);
wire DMemVisit5 = (state5==S3||state5==S5);

assign DMemVisit = DMemVisit1||DMemVisit2||DMemVisit3||DMemVisit4||DMemVisit5;
wire DMemVisitState = DMemVisit1?state1:(DMemVisit2?state2:(DMemVisit3?state3:(DMemVisit4?state4:(DMemVisit5?state5:state1))));
wire WaitForMem;
assign IorD =DMemVisit?1:0;
assign MemWrite = DMemVisit&&(DMemVisitState==S5);
//写回信号
//写回仍计划在单条指令的末尾，和新指令进入同时，故可以用新指令进入相同的判断逻辑�
//但写回结果可在写回前传到下一条指令�
assign RegWrite = ack1?RegWrite1:(ack2?RegWrite2:(ack3?RegWrite3:(ack4?RegWrite4:(ack5?RegWrite5:0))));
assign MemtoReg = ack1?MemtoReg1:(ack2?MemtoReg2:(ack3?MemtoReg3:(ack4?MemtoReg4:(ack5?MemtoReg5:0))));
assign RegDst = ack1?RegDst1:(ack2?RegDst2:(ack3?RegDst3:(ack4?RegDst4:(ack5?RegDst5:0))));

assign rt_addr = ack1?rt_addr1:(ack2?rt_addr2:(ack3?rt_addr3:(ack4?rt_addr4:(ack5?rt_addr5:0))));
assign rd_addr = ack1?rd_addr1:(ack2?rd_addr2:(ack3?rd_addr3:(ack4?rd_addr4:(ack5?rd_addr5:0))));
assign rs_addr = rsofALU;
assign fromWB = (ack1&&fromWB1)||(ack2&&fromWB2)||(ack3&&fromWB3)||(ack4&&fromWB4)||(ack5&&fromWB5);
assign WB_value = (ack1&&fromWB1)?WB_value1:((ack2&&fromWB2)?WB_value2:((ack3&&fromWB3)?WB_value3:(ack4&&fromWB4)?WB_value4:((ack5&&fromWB5)?WB_value5:WB_value1)));
//额外的PC_En检测信�冲突来自于J/JR/Branch
assign PC_En_Conflict1 = ( Branch1Occur)||(state1 == S11||state1 == S12);
assign PC_En_Conflict2 = ( Branch2Occur)||(state2 == S11||state2 == S12);
assign PC_En_Conflict3 = ( Branch3Occur)||(state3 == S11||state3 == S12);
assign PC_En_Conflict4 = ( Branch4Occur)||(state4 == S11||state4 == S12);
assign PC_En_Conflict5 = ( Branch5Occur)||(state5 == S11||state5 == S12);
assign PC_En_Conflict =PC_En_Conflict1||PC_En_Conflict2||PC_En_Conflict3||PC_En_Conflict4||PC_En_Conflict5;
wire [6:0] PC_En_Conflictstate = PC_En_Conflict1?state1:(PC_En_Conflict2?state2:(PC_En_Conflict3?state3:(PC_En_Conflict4?state4:(PC_En_Conflict5?state5:1))));
//冒泡信号�
    //冒泡优先级。所有小于该优先级的状态机（后来进入的）都要停�一般冒泡也包括引起冒泡的指�
    assign      bubblePri = PC_En_Conflict?2:0;
    //wire            bubble=PC_En_Conflict&&PC_En_Start;//examine!!
    assign      bubble=WaitForMem;

//排空信号�
    //排空优先级。所有小于该优先级的状态机（后来进入的）都要排�一般排空不包括引起排空的指�
    //推论：若JmpOccur和BranchOccur同时发生，一定是Branch指令在前。故优先判断Branch
    assign      flushPri = (Branch1Occur||Branch2Occur||Branch3Occur||Branch4Occur||Branch5Occur)?3:(JmpOccur?2:0);
    assign      flush =(Branch1Occur||Branch2Occur||Branch3Occur||Branch4Occur||Branch5Occur)||JmpOccur;
/*PC相关
可证明：PC_En_Start的指令总在PC_En_Conflict的指令之前，故优先级更高 (错了...)
如果PC_En_Conflict发生的话，之前的新指令是无效�
各对PC的赋值方式：
New:        PCWrite = 1 PC_Src = 2'b00 （PC_En_Start)
Branch:     Branchxx= 1 PC_Src = 2'b01
Jump:       PCWrite = 1 PC_Src = 2'b10
JR:         PCWrite = 1 PC_Src = 2'b11
*/

assign PCWrite = PC_En_Conflict?((PC_En_Conflictstate==S11||PC_En_Conflictstate==S12)?1:0):PC_En_Start;
assign PC_Src = (PC_En_Conflict&&PC_En_Conflictstate==S11)?2'b10:((PC_En_Conflict&&PC_En_Conflictstate==S12)?2'b11:((PC_En_Conflict&&PC_En_Conflictstate==S8)?2'b01:2'b00));

assign Branch = ((PC_En_Conflict&&PC_En_Conflictstate==S8)?(Branch1||Branch2||Branch3||Branch4||Branch5):0);
assign Branch_gz =((PC_En_Conflict&&PC_En_Conflictstate==S8)?(Branch_gz1||Branch_gz2||Branch_gz3||Branch_gz4||Branch_gz5):0);
assign Branch_ne =((PC_En_Conflict&&PC_En_Conflictstate==S8)?(Branch_ne1||Branch_ne2||Branch_ne3||Branch_ne4||Branch_ne5):0);

//state=0
assign IR_Write = ((state1==S0)?IR_Write1:0)||((state2==S0)?IR_Write2:0)||((state3==S0)?IR_Write3:0)||((state3==S0)?IR_Write3:0)||((state4==S0)?IR_Write4:0)||((state5==S0)?IR_Write5:0);
//state=2
    //PC_En
    //ALU
assign ALU_SrcB0 = (state1==S2||state1==S6||state1==S8||state1==S9||state1==S12)?ALU_SrcB1:((state2==S2||state2==S6||state2==S8||state2==S9||state2==S12)?ALU_SrcB2:((state3==S2||state3==S6||state3==S8||state3==S9||state3==S12)?ALU_SrcB3:((state4==S2||state4==S6||state4==S8||state4==S9||state4==S12)?ALU_SrcB4:((state5==S2||state5==S6||state5==S8||state5==S9||state5==S12)?ALU_SrcB5:0))));
//= ((state1==S2||state1==S6||state1==S8||state1==S9||state1==S12)?ALU_SrcB1:0)||((state2==S2||state2==S6||state2==S8||state2==S9||state2==S12)?ALU_SrcB2:0)||((state3==S2||state3==S6||state3==S8||state3==S9||state3==S12)?ALU_SrcB3:0)||((state4==S2||state4==S6||state4==S8||state4==S9||state4==S12)?ALU_SrcB4:0)||((state5==S2||state5==S6||state5==S8||state5==S9||state5==S12)?ALU_SrcB5:0);
//bug found at 21:13 fixed
assign ALUOp = ((state1==S2||state1==S6||state1==S8||state1==S9||state1==S12)?ALUOp1:0)||((state2==S2||state2==S6||state2==S8||state2==S9||state2==S12)?ALUOp2:0)||((state3==S2||state3==S6||state3==S8||state3==S9||state3==S12)?ALUOp3:0)||((state4==S2||state4==S6||state4==S8||state4==S9||state4==S12)?ALUOp4:0)||((state5==S2||state5==S6||state5==S8||state5==S9||state5==S12)?ALUOp5:0);

//global_control actions: 分步启动
assign en0 = rst_n;
//Forwarding
/*检测第一类： 
stage=2(进入时会跳至3) R: |rs| |rt| -> rd (运算类指令和JR)
stage=2 I: |rs|      -> rt ()

stage=3 R: rs rt -> |rd|    (限制为运算类指令 因为其他R型如JR，不需要把rd写回，不造成影响)
stage=3 I: rs    ->  rt     (addi andi 不包括LW SW，因为它们不在stage=3写回。它们的写回在第二类讨论)
stage=4 LW M[]   ->  rt
*/
assign stateofALU = (stage1==3)?state1:((stage2==3)?state2:((stage3==3)?state3:((stage4==3)?state4:((stage5==3)?state5:0))));
assign rsofALU = (stage1==3)?rs_addr1:((stage2==3)?rs_addr2:((stage3==3)?rs_addr3:((stage4==3)?rs_addr4:((stage5==3)?rs_addr5:rs_addr1))));
assign rtofALU = (stage1==3)?rt_addr1:((stage2==3)?rt_addr2:((stage3==3)?rt_addr3:((stage4==3)?rt_addr4:((stage5==3)?rt_addr5:rt_addr1))));
assign stateofTHREE = (stage1==4)?state1:((stage2==4)?state2:((stage3==4)?state3:((stage4==4)?state4:((stage5==4)?state5:0))));
assign rdofTHREE = (stage1==4)?rd_addr1:((stage2==4)?rd_addr2:((stage3==4)?rd_addr3:((stage4==4)?rd_addr4:((stage5==4)?rd_addr5:rd_addr1))));//for R
assign rtofTHREE = (stage1==4)?rt_addr1:((stage2==4)?rt_addr2:((stage3==4)?rt_addr3:((stage4==4)?rt_addr4:((stage5==4)?rt_addr5:rt_addr1))));//for I

assign stateofFOUR = (stage1==5)?state1:((stage2==5)?state2:((stage3==5)?state3:((stage4==5)?state4:((stage5==5)?state5:0))));
assign rtofFOUR = (stage1==5)?rt_addr1:((stage2==5)?rt_addr2:((stage3==5)?rt_addr3:((stage4==5)?rt_addr4:((stage5==5)?rt_addr5:rt_addr1))));//for LW

//(stateofALU==S6||stateofALU==S12) //R prev
//(stateofALU==S2||stateofALU==S8||stateofALU==S9) //I prev
assign SelectA1=(stateofALU==S6||stateofALU==S12)&&(stateofTHREE==S7)&&(rsofALU==rdofTHREE);//R(new) R(priv)
assign SelectA2=(stateofALU==S6||stateofALU==S12)&&(stateofTHREE==S10)&&(rsofALU==rtofTHREE);//R(new) I(priv)
assign SelectA3=(stateofALU==S2||stateofALU==S8||stateofALU==S9)&&(stateofTHREE==S7)&&(rsofALU==rdofTHREE);//I(new) R(priv)
assign SelectA4=(stateofALU==S2||stateofALU==S8||stateofALU==S9)&&(stateofTHREE==S10)&&(rsofALU==rtofTHREE);//I(new) I(priv)
assign SelectA5=(stateofALU==S6||stateofALU==S12||stateofALU==S2||stateofALU==S8||stateofALU==S9)&&(stateofFOUR==S4)&&(rsofALU==rtofFOUR);// IorR(new) stage4 LW(priv)
assign SelectA=SelectA1||SelectA2||SelectA3||SelectA4;//SelectA5 for memory forwarding!

assign ALU_SrcA=(SelectA1||SelectA2||SelectA3||SelectA4||SelectA5)?0:1;

//(stateofALU==S6||stateofALU==S12)&&(stateofTHREE==S7)&&(rtofALU==rdofTHREE)
assign SelectB1=(stateofALU==S6||stateofALU==S12)&&(stateofTHREE==S7)&&(rtofALU==rdofTHREE);
assign SelectB2=(stateofALU==S6||stateofALU==S12)&&(stateofTHREE==S10)&&(rtofALU==rtofTHREE);
assign SelectB3=(stateofALU==S6||stateofALU==S12)&&(stateofFOUR==S4)&&(rtofALU==rtofFOUR);//R(new) stage4 LW(priv)
assign SelectB=SelectB1||SelectB2;//SelectA3 for memory forwarding!

assign ALU_SrcB=(SelectB1||SelectB2||SelectB3)?2'b01:ALU_SrcB0;

//R->R==4
/*检测第二类：因访存而要延后
stage=2 R: |rs| |rt| -> rd (运算类指令和JR)
stage=2 I: |rs|      -> rt ()

stage=3 (限定为LW, SW无影�
*/
assign WaitForMem = (stateofALU==S6||stateofALU==S12||stateofALU==S2||stateofALU==S8||stateofALU==S9)&&(stateofTHREE==S3)&&(rsofALU==rtofTHREE||rtofALU==rtofTHREE);// IorR(new) stage4 LW(priv)

//control code ends here, hope not too many bugs...


pipe_FSM FSM1(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction),//每个状态机只在它的取指时取入instruction
    //FSM control:5
    .en(en0),
    .bubble(bubble),        //统一信号
    .bubblePri(bubblePri),  //统一信号
    .flush(flush),          //统一信号
    .flushPri(flushPri),    //统一信号
    .ack(ack1),              //非统一
    .PC_En_Conflict(PC_En_Conflict1),
    .WB_data(reg_din),
    //output:
    .fetch_req(fetch_req1),
    .next_en(en021),       //不规�
    .stage(stage1),
    .rs_addr(rs_addr1),
    .rt_addr(rt_addr1),//从之前的instruction提取并保存的
    .rd_addr(rd_addr1),
    //control signals:
    .PCWrite(PCWrite1),
    .PC_Src(PC_Src1),
    .Branch(Branch1),
    .Branch_ne(Branch_ne1),
    .Branch_gz(Branch_gz1),

    .MemtoReg(MemtoReg1),
    .MemWrite(MemWrite1),
    .IorD(IorD1),

    .RegDst(RegDst1),
    .RegWrite(RegWrite1),
    .fromWB(fromWB1),
    .WB_value(WB_value1),

    .ALUOp(ALUOp1),
    .ALU_SrcA(ALU_SrcA1),
    .ALU_SrcB(ALU_SrcB1),

    .IR_Write(IR_Write1),
    .IR_in_Write(IR_in_Write1),
    .state(state1),
    .next_state(next_state1)
);

pipe_FSM FSM2(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction),//每个状态机只在它的取指时取入instruction
    //FSM control:5
    .en(en021),
    .bubble(bubble),        //统一信号
    .bubblePri(bubblePri),  //统一信号
    .flush(flush),          //统一信号
    .flushPri(flushPri),    //统一信号
    .ack(ack2),              //非统一
    .PC_En_Conflict(PC_En_Conflict2),
    .WB_data(reg_din),
    //output:
    .fetch_req(fetch_req2),
    .next_en(en122),       //不规�
    .stage(stage2),
    .rs_addr(rs_addr2),
    .rt_addr(rt_addr2),//从之前的instruction提取并保存的
    .rd_addr(rd_addr2),
    //control signals:
    .PCWrite(PCWrite2),
    .PC_Src(PC_Src2),
    .Branch(Branch2),
    .Branch_ne(Branch_ne2),
    .Branch_gz(Branch_gz2),

    .MemtoReg(MemtoReg2),
    .MemWrite(MemWrite2),
    .IorD(IorD2),

    .RegDst(RegDst2),
    .RegWrite(RegWrite2),
    .fromWB(fromWB2),
    .WB_value(WB_value2),

    .ALUOp(ALUOp2),
    .ALU_SrcA(ALU_SrcA2),
    .ALU_SrcB(ALU_SrcB2),

    .IR_Write(IR_Write2),
    .IR_in_Write(IR_in_Write2),
    .state(state2),
    .next_state(next_state2)
);

pipe_FSM FSM3(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction),//每个状态机只在它的取指时取入instruction
    //FSM control:5
    .en(en122),
    .bubble(bubble),        //统一信号
    .bubblePri(bubblePri),  //统一信号
    .flush(flush),          //统一信号
    .flushPri(flushPri),    //统一信号
    .ack(ack3),              //非统一
    .PC_En_Conflict(PC_En_Conflict3),
    .WB_data(reg_din),
    //output:
    .fetch_req(fetch_req3),
    .next_en(en223),       //不规�
    .stage(stage3),
    .rs_addr(rs_addr3),
    .rt_addr(rt_addr3),//从之前的instruction提取并保存的
    .rd_addr(rd_addr3),
    //control signals:
    .PCWrite(PCWrite3),
    .PC_Src(PC_Src3),
    .Branch(Branch3),
    .Branch_ne(Branch_ne3),
    .Branch_gz(Branch_gz3),

    .MemtoReg(MemtoReg3),
    .MemWrite(MemWrite3),
    .IorD(IorD3),

    .RegDst(RegDst3),
    .RegWrite(RegWrite3),
    .fromWB(fromWB3),
    .WB_value(WB_value3),

    .ALUOp(ALUOp3),
    .ALU_SrcA(ALU_SrcA3),
    .ALU_SrcB(ALU_SrcB3),

    .IR_Write(IR_Write3),
    .IR_in_Write(IR_in_Write3),
    .state(state3),
    .next_state(next_state3)
);

pipe_FSM FSM4(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction),//每个状态机只在它的取指时取入instruction
    //FSM control:5
    .en(en223),
    .bubble(bubble),        //统一信号
    .bubblePri(bubblePri),  //统一信号
    .flush(flush),          //统一信号
    .flushPri(flushPri),    //统一信号
    .ack(ack4),              //非统一
    .PC_En_Conflict(PC_En_Conflict4),
    .WB_data(reg_din),
    //output:
    .fetch_req(fetch_req4),
    .next_en(en324),       //不规�
    .stage(stage4),
    .rs_addr(rs_addr4),
    .rt_addr(rt_addr4),//从之前的instruction提取并保存的
    .rd_addr(rd_addr4),
    //control signals:
    .PCWrite(PCWrite4),
    .PC_Src(PC_Src4),
    .Branch(Branch4),
    .Branch_ne(Branch_ne4),
    .Branch_gz(Branch_gz4),

    .MemtoReg(MemtoReg4),
    .MemWrite(MemWrite4),
    .IorD(IorD4),

    .RegDst(RegDst4),
    .RegWrite(RegWrite4),
    .fromWB(fromWB4),
    .WB_value(WB_value4),

    .ALUOp(ALUOp4),
    .ALU_SrcA(ALU_SrcA4),
    .ALU_SrcB(ALU_SrcB4),

    .IR_Write(IR_Write4),
    .IR_in_Write(IR_in_Write4),
    .state(state4),
    .next_state(next_state4)
);

pipe_FSM FSM5(
    //input:
    .clk(clk),
    .rst_n(rst_n),
    .instruction(instruction),//每个状态机只在它的取指时取入instruction
    //FSM control:5
    .en(en324),
    .bubble(bubble),        //统一信号
    .bubblePri(bubblePri),  //统一信号
    .flush(flush),          //统一信号
    .flushPri(flushPri),    //统一信号
    .ack(ack5),              //非统一
    .PC_En_Conflict(PC_En_Conflict5),
    .WB_data(reg_din),
    //output:
    .fetch_req(fetch_req5),
    //.next_en0(en425),       //不规�
    .stage(stage5),
    .rs_addr(rs_addr5),
    .rt_addr(rt_addr5),//从之前的instruction提取并保存的
    .rd_addr(rd_addr5),
    //control signals:
    .PCWrite(PCWrite5),
    .PC_Src(PC_Src5),
    .Branch(Branch5),
    .Branch_ne(Branch_ne5),
    .Branch_gz(Branch_gz5),

    .MemtoReg(MemtoReg5),
    .MemWrite(MemWrite5),
    .IorD(IorD5),

    .RegDst(RegDst5),
    .RegWrite(RegWrite5),
    .fromWB(fromWB5),
    .WB_value(WB_value5),

    .ALUOp(ALUOp5),
    .ALU_SrcA(ALU_SrcA5),
    .ALU_SrcB(ALU_SrcB5),

    .IR_Write(IR_Write5),
    .IR_in_Write(IR_in_Write5),
    .state(state5),
    .next_state(next_state5)
);

endmodule
