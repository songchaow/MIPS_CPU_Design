# Lab07 流水线MIPS CPU设计

> PB15000102 王嵩超

## 指令集的扩充

- jr

  S1

初步想到的与多周期的不同：

- PC模块：每个时钟PC多半都会考虑是否自增。多周期：一个指令周期的多个时钟周期中，只有一个周期PC被enabled。

  同时PC的自增计算应用独立的单元。

- 更多的中间结果需要寄存

- 上次实验中，下一个周期需要及时撤消上个周期发出的信号。这次实验就不一定了。

- 每条指令强制用5个统一的步骤执行？

- Lab06里，branch指令连用了两次ALU。第一次用来算branch后的PC，第二次用来判断是否需要branch。在多周期实现中，虽然这样节省了运算器单元，同时没有多浪费时间。但在流水线中阻碍了其他指令使用ALU。故在本实验中使用独立的PC加法单元。

各状态的动作与寄存的数据：

每个状态机的信号，每时每刻只有一部分被选中。

### 状态机的输入和状态

- en0: 使能。en0将5个状态机串接起来，实现分步启动。

  en0为0时，状态机将无条件地处于IDLE。

- rst(\_n?): 重启信号。若刚判断出前一条指令为跳转且跳转条件成立，则

| 状态            | Stage | 动作                        | 有影响的控制信号(这一周期需要准备好，不能被其他指令更改)            | 依赖的寄存器(上一周期不能被其他指令改动)                    | 改动的寄存器                                   |
| ------------- | ----- | ------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| IDLE          |       | 准备好PC_Write, PC_Src, IorD | IorD(0), PCWrite, PC_Src(若下一状态为S0，则准备好)  | 不依赖任何其他指令                                |                                          |
| S0            | 0     | 写回寄存器；取指，更新PC             | IRWrite,                                 | PC, r3\_addr(maybe), MDout(maybe), alu_out(maybe) | PC(+1), instruction(net)                 |
| S1            | 1     | 更新IR寄存器，开始译码              | 无                                        | instruction(net)                         | instruction                              |
| S2(LW or SW)  | 2     | 取寄存器数，重新准备ALU             | ALUSrcA, ALUSrcB, ALUOp                  | instruction                              | r1\_dout, r2\_dout, Immed(net)           |
| S3(LW)        | 3     | ALU输出、准备读RAM              | IorD, MemWrite(0)                        | r1\_dout, Immed,                         | alu_out                                  |
| S4(LW)        | 4     | 读RAM，准备写回，(准备取指)          | RegDst, MemtoReg, RegWrite               | alu_out(地址)                              | dout(internal register)                  |
| S5(SW)        | 3     | ALU输出、准备写RAM              | IorD, MemWrite(1)                        | r1\_dout, Immed(net),                    | alu_out                                  |
| S5plus(SW)    | 4     | 写RAM,(准备取指)               |                                          | alu_out(地址), r2_dout                     | 无                                        |
| S6(R-type)    | 2     | 取寄存器数，重新准备ALU             | ALUSrcA, ALUSrcB, ALUOp                  | instruction                              | r1\_dout, r2\_dout, Immed(net)           |
| S7(R-type)    | 3     | ALU输出，准备写回，(强制准备取指)       | RegWrite(1), MemtoReg(0), RegDst(1),     | r1\_dout, r2\_dout                       | alu_out                                  |
| S8(BEQ)       | 2     | 取寄存器数，重新准备ALU             | Branch, PC_Src, ALUSrcA, ALUSrcB, ALUOp  | instruction                              | r1\_dout, r2\_dout, Immed(net)           |
| S8plus(BEQ)   | 3     | ALU输出（多余），改变PC            |                                          | //r1\_dout, //r2\_dout, alu_result(net)  | PC(from next_PC(net)), alu_out(多余)       |
| S9(ADDI)      | 2     | 取寄存器，重新准备ALU              | ALUSrcA, ALUSrcB, ALUOp                  | instruction                              | r1\_dout, r2\_dout, Immed(net)           |
| S10(ADDI)     | 3     | ALU输出，准备写回                | RegWrite, MemtoReg(0), RegDst(0)         | r1\_dout, Immed(net)                     | alu_out,                                 |
| S11(Jump)     | 2     |                           | PCSrc, PCWrite                           |                                          | next_PC(net)                             |
| S11plus(Jump) | 3     |                           |                                          | next_PC(net)                             | PC                                       |
| S12(JR)       | 2     | 准备ALU，准备改变PC              | ALU_SrcA, ALU_SrcB, ALUOp, PC_Src, PCWrite | instruction                              | r1\_dout, r2\_dout,  alu_result(net), Immed(net)(多余) |
| S12plus(JR)   | 3     | 改变PC                      |                                          | next_PC=alu_result(net)                  | PC                                       |

## 5组控制信号的合并

特殊处理的几个信号：

PCWrite：

**分析**：PCWrite会在每条指令取指阶段之前准备好。在执行过程中还会使PCWrite有效的的只有J(S11)和JR(S12)。（Branch指令(S8)会让Branch有效）

每条指令执行前的就绪状态，都会使PCWrite有效。遇到jmp或jr时，

IorD: 在状态机内部有IorD=1的需求时（可根据表统计需求），服从，并将新进入的状态机延后。否则随状态机初始化，把IorD置0。

## 信号分组

S0:

**PCWrite, PC_Src, Branchxx**由总状态机控制，当确定下一周期有新指令进入时，有效。

- 为S0的准备

  PCWrite


- state=0(S0) 

  IRWrite

- state=1(S1)

  无控制信号

- state=2(S2, S6, S8, S9, S11, S12)

  ALUSrcB, ALUOp(S2, S6, S8, S9, S12)

  PC_Src(S8, S11, S12) [PC_En_Signal]\(S8,S11,S12)

- state=3(S3, S5, S7, S8plus(void), S10, S11plus(void), S12plus(void))

  IorD, MemWrite(S3, S5) 访存指令

  RegWrite, MemtoReg, RegDst(S7, S10)

- state=4(S4, S5plus LW和SW)

  RegWrite, MemtoReg, RegDst(S4)

  有冲突的信号：

  PC_Src与全局的PC控制信号冲突

  访存，IorD为1时导致无法取指。时间上的重叠

  写回。时间上的重叠。

- [x] jmp/branch与PC正常赋值的冲突


- [x] jmp/branch的排空
- [x] 新指令的进入与判优
- [x] 访存冲突

几个规律

- 后面进入的指令永远不可能比之前进入的指令提前。
- 永远不可能有priority相同的两条指令同时存在。（反证：如果这样的话可推知它们是同时取指，有硬件上的冲突）

准备取指：指IorD=0

有影响的控制信号：指对该状态的执行有影响，有很多信号其实是不影响该步的执行的。

重新准备ALU：ALU在这一步会出结果。

ALU输出：指ALU结果ALU_Result保存到alu_out寄存器中。其实ALU在上一周期已计算出结果。

两条指令间用于衔接的控制信号可能要改

**重要！写回在第二周期开始进行，可能会受影响！

想法：

设5个状态机。分别生成相差1个clk的控制信号。

根据先后关系将同一信号的5个值合并。

control I -> V

- PCWrite不再是只在第一周期有效。而是几乎长期有效。其具体由状态机的priority确定。当确定下一时钟时priority为0时，PCWrite有效。


- 看上去，RAM的输出需要一个寄存器保存。实际上，RAM的输出端口本身就是一个寄存器，只要没有新的时钟上升沿和新的地址，其值不会改变。因此，只要输出的值在下一周期能紧接着被利用，RAM在下一周期马上服务于另一条指令也没问题。
- 控制信号组。尝试将控制信号按阶段分成几组。根据state来将某组信号设为有效（5个状态机中，每时每刻只有一个状态机在这一组是有效的）

## 5个状态机的设计

~~因为每条指令只可能是4或5个机器周期，故5个状态机执行指令的先后不会改变！故可以设定不变的优先级：0, 1, 2, 3, 4。~~

为每个状态机分配动态的优先级数。每一个机器周期加一，执行新指令时置0。当发生冲突时(类型之后仔细讨论)，优先级高（数字小）的状态机是执行先前的指令，应优先使用资源。

每个状态机同时拥有为常量的优先级数，当有多个状态机同时可以被分配新指令时，按照此优先级分配。

### 输入信号

- en0: 使能。en0将5个状态机串接起来，实现分步启动。

  en0为0时，状态机将无条件地处于IDLE。

- reset。用于前面是j/jr/branch相关时，将之后已进入流水线的指令清掉。(reset应加到always里面，越早清掉越好)

  对于j和jr，在stage=1时检测到，在stage=2时可发出信号。使stage==1, 0的两个状态机停止运行。stage>=2的状态机继续运行，但不能进行新一轮取指。

  对于branch类，在stage=2时检测到，在stage=3时可发出信号。使stage==2, 1, 0的三个状态机停止运行。

  当其有效时，该状态机复位，直到reset解除，将从新的PC开始运行。

- bubble。bubble用于将几条指令同时后移？

- wait

输出信号

- ready: 组合逻辑。表明状态机已经执行到指令的最后一步。下一步就可以执行新的指令了。

新指令的分配

### 写回的实现

写回操作是唯一一个“往回走”的操作，它要求取指译码阶段得到的r3_addr一直保留到写回。而译码得到的其他操作数(如读寄存器号)之后都被利用，得到了新的信号(寄存器值)，原先的操作数不需要用了，故对应的寄存器可以被其他指令占用。

### 旁路

- R-R型旁路

  书上的两种类型：

  - alu_out(previous) -> alu_op(current)
  - MEM/WB RegisterRd = ID/EX. RegisterRt 我的状态机时序与书上不完全一样。分析可知此条不需要在我的状态机中考虑：stage=2时，alu只是取好操作数，也正是写回的时间。写回会立刻改变到取出的操作数。在stage=3时才将alu_result寄存到alu_out。 

## 新指令的分配？IDLE转入S0，统一的方法？





合并优先级：

## dynamic priority implementation

priority set to 0 when finishing executing current instruction. priority increased by one on the next clock.

当有冲突时：

首先如何判断有冲突？

若：

​	低优先级动作：1->0；高优先级动作：0->1。遵从

每个状态机新增一输入信号bubble。当其有效时，下一时钟不跳转到下一个状态。

新增输入信号reset。当其有效时，该指令重新执行。

bubble和reset其实是一个意思？

冲突检测单元：

包括检测各状态机的控制信号是否一致。

主动根据priority检测可能有的冲突。

同一周期内的冲突讨论：

不允许有两个及以上个状态机，具有相同的priority。（这样可以推出两个过程之前是在同时发生取指，这是不可能的。）

优先级高，意味着该指令更早进入流水线

- ~~ALU控制信号的冲突~~ 理解错啦

  **检测方法** 检测当时priority为1(S1)和2(S2)的两个状态机。主动检测有没有冲突。

  这一定是有后来的jmp指令引起的，因为S1和随后的状态均涉及ALU控制信号，注定要经常发生。

  在冲突的周期，判断后来指令是不是jmp。如果是，则将该状态机延后。无论是不是jmp，都将ALU控制信号置为后来者的~~

  并在jmp指令更改PC之前，禁止执行新的指令。

- RegFile写的冲突

  检测RegWrite是否有同时为1即可。

  **有冲突时的解决办法**：检查优先级，将优先级低的状态机冒气泡。

- RegFile读的冲突

  RegFile始终都是能读的。故读地址不一样不能证明有冲突。必须判断出下一步是否需要读。

  **检测方法** 

  **有冲突时的解决办法**：检查优先级，将优先级低的状态机冒气泡。

- 跳转语句

  ​