`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:49 05/07/2017 
// Design Name: 
// Module Name:    CONTROL 
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
module CONTROL(
    input               clk,
    input               rst_n,
    input       [5:0]   opcode,
    input       [5:0]   funct,
    //control signals

    //PC:
    output  reg         PCWrite,
    output  reg [1:0]   PC_Src,


    //MEM:
    output  reg         MemtoReg,    
    output  reg         MemWrite,
    output  reg         IorD,
    //RegFile
    output  reg         RegDst,
    output  reg         RegWrite,
    
    output  reg         Branch,
    output  reg         Branch_ne,
    output  reg         Branch_gz,
    output  reg [1:0]   ALUOp,
    output  reg         ALU_SrcA,
    output  reg [1:0]   ALU_SrcB,
    output  reg         IR_Write,
    output  reg [6:0]   state,
    output  reg [6:0]   next_state
    );
parameter SIDLE = 15;
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


always@(posedge clk or negedge rst_n)
begin
  if (~rst_n)
  state <= SIDLE;
  else
  state <= next_state;
end

always@(*)
begin
    if(state == SIDLE)
        next_state <= S0;
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
    else if(state == S4)
    next_state <= S0;
    else if(state == S5)
    next_state <= S5plus;
    else if(state == S5plus)
    next_state <= S0;
    else if(state == S6)
    next_state <= S7;
    else if(state == S7)
    next_state <= S0;
    else if(state == S8)
    next_state <= S8plus;
    else if(state == S8plus)
    next_state <= S0;
    else if(state == S9)
    next_state <= S10;
    else if(state == S10)
    next_state <= S0;
    else if(state == S11)
    next_state <= S11plus;
    else if(state == S11plus)
    next_state <= 0;

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
        ALU_SrcA <= 0;
        ALU_SrcB <= 2'b01;
        ALUOp <= 0;
        PC_Src <= 0;
        IorD <= 0;
        PCWrite <= 0;
        IR_Write <= 0;
    end
    else
    begin
    case (next_state)//复位信号消失后，next_state将变为S1，即不会从S0开始
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
            PCWrite <= 1;
            IR_Write <= 1;
        end
    S1:
        begin
        //cancel the signals in S0:
            PCWrite <= 0;
            IR_Write <= 0;
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
    S6://在这一步判断是否有算术上的异常，生成信号
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
    default:
    ; 
    endcase
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