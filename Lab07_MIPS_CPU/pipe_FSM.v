`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:21 05/20/2017 
// Design Name: 
// Module Name:    pipe_FSM 
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
module pipe_FSM(
    //FSM signals:
    input               clk,
    input               rst_n,
    //instruction info:
    input   [31:0]      instruction,
    input               en,        //有效时，状态机将无条件地处于IDLE
    input               bubble,     //暂停，冒气泡。所有后来的在运行的指令都要冒气�
    input   [2:0]       bubblePri,
    input               flush,
    input   [2:0]       flushPri,
    input               ack,        //permission to start the next instruction
    input               wb_ack,     //permission to write back to regfile
    input               PC_En_Conflict,
    input   [31:0]      WB_data,
    output              fetch_req,  //取新指令请求
    output  reg         next_en,
    //stage: 刚进入时�
    output  reg [2:0]   stage,
    //reg numbers
    output  reg [4:0]   rs_addr,
    output  reg [4:0]   rt_addr,
    output  reg [4:0]   rd_addr,
    //Control signals:
    //PC:
    output  reg         PCWrite,
    output  reg [1:0]   PC_Src,
    //PC_En
    output  reg         Branch,
    output  reg         Branch_ne,
    output  reg         Branch_gz,

    //MEM:
    output  reg         MemtoReg,    
    output  reg         MemWrite,
    output  reg         IorD,
    //RegFile
    output  reg         RegDst,
    output  reg         RegWrite,
    output  reg         fromWB,
    output  reg [31:0]  WB_value,
    //ALU
    output  reg [1:0]   ALUOp,
    output  reg         ALU_SrcA,
    output  reg [1:0]   ALU_SrcB,
    //Instruction Reg
    output  reg         IR_Write,
    output  reg         IR_in_Write,
    output  reg [6:0]   state,
    output  reg [6:0]   next_state
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

wire   [5:0]       opcode;
wire   [5:0]       funct;
wire                bubble_en;
wire                flush_en;
assign  opcode = instruction[31:26];
assign  funct = instruction[5:0];
assign  bubble_en = bubble&&(bubblePri>=stage);
assign  flush_en = flush&&(flushPri>stage);//不包括自�=的情�

always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)//||~en
    begin
        next_en <= 0;
        state <= SIDLE;
    end
    else if(~en)
    begin
        next_en <= 0;
        state <= SIDLE;
    end
    else
    begin
        next_en <= 1;
        if(~bubble_en)
        state <= next_state;
    end
end

always@(*)
begin
    if(state == SWAIT)
    begin
        if(ack&&~flush_en) next_state <= S0;
        else next_state <= SWAIT;
    end
    else if(flush_en)
        next_state <= SWAIT;
    else if(state == SIDLE)
    begin
        if(ack)
        next_state <= S0;
        else
        next_state <= SIDLE;
    end
    else if(state == S0)
        next_state <= S1;
    else if(state == S1)
    begin
        case (opcode)
            0:  //R-type
            begin
                if(funct==8)//JR
                next_state <= S12;
                else
                next_state <= S6;
            end
            8:  //addi
                next_state <= S9;
            12: //andi
                next_state <= S9;
            35: //LW
                next_state <= S2;
            43: //SW
                next_state <= S2;
            2:  //J
                next_state <= S11;
            4:  //BEQ
                next_state <= S8;
            5:  //BNE
                next_state <= S8;
            7:  //BGTZ
                next_state <= S8;

        default: 
                next_state <= S0;
        endcase
    end
    else if(state == S2)
    begin
        if(opcode == 35)//LW
        next_state <= S3;
        if(opcode == 43)//SW
        next_state <= S5;
    end
    else if(state == S3)
    next_state <= S4;
    else if(state == S5)
    next_state <= S5plus;
    else if(state == S6)
    next_state <= S7;
    else if(state == S8)
    next_state <= S8plus;
    else if(state == S9)
    next_state <= S10;
    else if(state == S11)
    next_state <= S11plus;
    //reach end routine:
    else if(state == S4||state==S5plus||state==S7||state==S8plus||state==S10||state==S11plus)
    begin
        if(ack)
        begin
            next_state <= S0;
        end
        else
            next_state <= SWAIT;
    end
end
//stage
always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
        stage <= 0;
    else if(~en)
        stage <= 0;
    else if(flush_en)
        stage <= 0;
    else if(next_state==SWAIT||next_state==SIDLE)
        stage <= 0;
    else 
    begin
        if(bubble_en)
            stage <= stage;
        else if(ack)//也可写为next_state == S0
            stage <= 1;
        else stage <= stage+1;
    end
end
//internal instruction reg
always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        rs_addr <= 0;
        rd_addr <= 0;
        rt_addr <= 0;
    end
    else if(stage==2)//只有在instruction是当前指令时才更�
    begin
        rs_addr <= instruction[25:21];
        rd_addr <= instruction[15:11];
        rt_addr <= instruction[20:16];
    end
end

//fetch_req 执行新指令请�

assign fetch_req = (state == S4)||(state == S5plus)||(state == S7)||(state == S8plus)||(state == S10)||(state == S11plus)||(state == SIDLE)||(state ==SWAIT);
//WB store signal:
wire SaveWB;
assign SaveWB = (state!=SWAIT)&&(next_state==SWAIT)&&RegWrite;
//store WB value if delayed
always@(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        WB_value <= 0;
        fromWB <= 0;
    end
    else
    begin
        if(SaveWB)//now it's SWAIT
        begin
            WB_value <= WB_data;
            fromWB <= 1;
        end
        if(next_state==S0)
            fromWB <= 0;
    end
end
//actions:
always@(posedge clk or negedge rst_n)
begin
    if (~rst_n)
    begin
        MemtoReg <= 1;
        MemWrite <= 0;
        RegWrite <= 0;
        Branch <= 0;
        Branch_gz <= 0;
        Branch_ne <= 0;
        RegDst <= 1;
        //ALU_SrcA <= 0;//impossible now
        ALU_SrcA <= 1;
        //ALU_SrcB <= 2'b01;//impossible now
        ALU_SrcB <= 2'b00;
        ALUOp <= 0;
        PC_Src <= 0;
        IorD <= 0;
        PCWrite <= 0;
        IR_Write <= 0;
    end
    else
    begin
    if(bubble_en);
    else
    begin

        case (next_state)//复位信号消失后，next_state将变为S1，即不会从S0开�

        S0:
            begin
            //cancel all possible signals in previous clock cycles:
                MemWrite <= 0;
                RegWrite <= 0;
                Branch <= 0;
            //
                //ALU_SrcA <= 0;
                //ALU_SrcB <= 2'b01;
                //ALUOp <= 0;
                PC_Src <= 0;
                //PCWrite <= 1;
                IR_Write <= 1;
                IR_in_Write <= 1;
            end
        S1:
            begin
            //cancel the signals in S0:
                IR_Write <= 0;//无效�
                IR_in_Write <= 0;//这个有效�
            //为jmp指令的准备，可能无用 更正：这是为branch指令做的准备，计算好可能用到的自增后的PC
                //ALU_SrcA <= 0;
                //ALU_SrcB <= 2'b11;
                //ALUOp <= 0;
            end
        S2://Address calculate
        //contents of R1, R2 registers are valid
            begin
                ALU_SrcA <= 1;
                ALU_SrcB <= 2'b10;
                ALUOp <= 0;
            end
        S3://alu_out register is valid, prepare to MemRead
            begin
                IorD <= 1;
            end
        S4: //memory dout will be ready soon
            //write back in S0
            begin
            IorD <= 0;
            RegDst <= 0;
            MemtoReg <= 1;
            RegWrite <= 1;
            end
        S5:
        begin
            IorD <= 1;
            MemWrite <= 1;
        end
        S5plus:
            begin
            MemWrite <= 0;
            //提前作好取指准备
            IorD <= 0;
            //IR_Write <= 1;
            end
        S6://在这一步判断是否有算术上的异常，生成信�
        begin
            ALU_SrcA <= 1;
            ALU_SrcB <= 2'b00;
            ALUOp <= 2'b10;
        end
        S7:
        begin
            RegDst <= 1;
            MemtoReg <= 0;
            RegWrite <= 1;
        end
        S8:
        begin
            ALU_SrcA <= 1;
            ALU_SrcB <= 2'b00;
            ALUOp <= 2'b01;
            PC_Src <= 2'b01;
            Branch <= (opcode==4);
            Branch_ne <= (opcode==5);
            Branch_gz <= (opcode==7);
        end
        S8plus:
        //PC may be modified because of Branch. calculate PC before S0.
        begin
            IorD <= 0;
            Branch <= 0;
            Branch_gz <= 0;
            Branch_ne <= 0;
        end
        S9://ADDI or ANDI 在这一步判断是否有算术异常
        begin
            ALU_SrcA <= 1;
            ALU_SrcB <= 2'b10;
            ALUOp <= (opcode==8)?2'b00:2'b11;
        end
        S10:
        begin
            RegDst <= 0;
            MemtoReg <= 0;
            RegWrite <= 1;
        end
        S11:
        begin
            PC_Src <= 2'b10;
            PCWrite <= 1;
        end
        S11plus:
        begin
            PCWrite <= 0;
        end
        S12:
        begin
            ALU_SrcA <= 1;
            ALU_SrcB <= 2'b00;//it will be zero doesn't matter
            ALUOp <= 2'b01;
            PC_Src <= 2'b11;//from alu
            PCWrite <= 1;
        end
        S12plus:
        begin
            
        end
        SWAIT:
        begin
            if(wb_ack)//下一个SWAIT就可以写回了，撤去RegWrite
                RegWrite <= 0;
        end
        default:
        ; 
        endcase
    end
    end
end

endmodule

module PC_ENABLE(
    input   ALU_ZERO,
    input   ALU_POSITIVE,
    input   Branch,
    input   Branch_ne,
    input   Branch_gz,
    input   PCWrite,//write command directly from control: for normally increase and jmp
    output  PCEn
);
assign  PCEn = PCWrite || (Branch && ALU_ZERO) || (Branch_ne && !ALU_ZERO)||(Branch_gz && ALU_POSITIVE);

endmodule
