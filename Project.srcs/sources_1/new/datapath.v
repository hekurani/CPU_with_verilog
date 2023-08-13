`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 02:03:12 PM
// Design Name: 
// Module Name: datapath
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module datapath(
input Clock,
input RegDst,
input Branch,
input MemRead,
input MemWrite,
input MemToReg,
input ALUSrc,
input RegWrite,
input[1:0] ALUOp,
output [3:0] opcode);


reg[23:0] pc_initial; // Regjistri PC
wire [23:0] pc_next, pc3, pcbeq; //TELAT: T1, T2, T3, T4
wire [23:0] instruction; //TELI T5
wire [3:0] percaktoRegjistrin; //TELI T6
wire[23:0] readData1, readData2, writeData, //TELAT T7-T9 
mux_ALU,Zgjerimi, memToMux, //TELAT T10-T13
branchAdderToMux, beqAddress; 
wire [23:0] ALU_Out;//TELAT T14 dhe T17 
wire[3:0] ALUCtrl; //TELI T19
wire zerof, overflow, carryout; // TELAT T20-T22
wire andMuxBranch; //TELI T23

initial
begin
//
    pc_initial = 24'd10; //inicializimi fillesat i PC ne adresen 10
end

always@(posedge Clock)
begin
    pc_initial <= pc_next; //azhurimi i PC ne cdo teh pozitiv me adresen e ardhshme
    
end

//T2 - PC rritet per 4 (ne sistemet 32 biteshe) per te gjitha instruksionet pervec BEQ, BNE
Adder24Bit pc33(pc_initial,24'd3,pc3); 


//Instr mem //inicializimi i IM (PC adresa hyrje, teli instruction dajle)
InstructionMemory IM(pc_initial, instruction); 

//T6 - Percaktimi nese RD eshte RD (te R-formati) apo RD = RT (te I-formati) - MUX M1 ne foto
assign percaktoRegjistrin = (RegDst == 1'b1) ? instruction[11:8] : instruction[15:12]; 

// T12 - Zgjerimi nga 16 ne 24 bit - 16 bit si MSB dhe pjesa e instruction[15:0] - S1 ne foto
assign Zgjerimi = {{12{instruction[11]}}, instruction[11:0]};  

//REGFILE
//inicializimi i RF(RS, RT, T6 (RD[RD=RD || RD=RT]), T9, CU_OUT_x, CPU_IN_1, T7, T8)
registerFile RF(instruction[19:16], instruction[15:12], percaktoRegjistrin, writeData, RegWrite, Clock, readData1, readData2 ); 

// T10 - Percaktimi nese hyrja e MUX-it M2 para ALU eshte Regjstri 2 i RF apo vlera imediate e instruksionit 
assign mux_ALU = (ALUSrc == 1'b1) ? Zgjerimi : readData2; 

//inicializimi i ALU Control (CU_OUT_x, Function Code nga R-formati, Opcode, T19) - eshte shtuar ALUOp per I-format qe nuk eshte ne foto po kerkohet ne detyre 
ALUControl AC(ALUOp, instruction[3:0], ALUCtrl); 

//inicializimi i ALU (T7, T10, T19[3], T19[2], T19[1:0], T20, T11, T21, T22)
ALU_24Bit ALU(readData1, mux_ALU, ALUCtrl[2:0], 1'b0, ALUCtrl[3], zerof,  overflow, carryout,ALU_Out);

//inicializimi i Data Memory (T11, T8, CU_OUT_x, CU_OUT_x, CPU_IN_1, T13) 
DataMemory DM(ALU_Out, readData2,Clock, MemWrite, MemRead,  memToMux);

//T9 - Teli qe i dergon te dhenat nga MUX - M3 ne Regfile
assign writeData = (MemToReg == 1'b1) ? memToMux : ALU_Out;

//T23 - Teli qe del nga porta DHE ne pjesen e eperme te fotos (shikon nese plotesohet kushti per BEQ
assign andMuxBranch = zerof & Branch;

//T17, Teli qe mban adresen ne te cilen do te kercej programi kur kushti BEQ plotesohet
//?????
Adder24Bit beqadresa(pc3,Zgjerimi,beqAddress);
//T3 - Teli qe del nga Mux M4 ne foto qe kontrollon nese kemi BEQ apo PC+3
assign pcbeq = (andMuxBranch == 1'b1) ? beqAddress : pc3;
//T2 - Teli qe update-on PC (3 mundesite PC+4, PCBEQ, PCJUMP)
assign pc_next = (andMuxBranch == 1'b1) ? beqAddress : pc3;

//Teli D_OUT_1 qe i dergohet CU
assign opcode = instruction[23:20];

endmodule



