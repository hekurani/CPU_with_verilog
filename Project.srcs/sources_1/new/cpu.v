`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 03:31:56 PM
// Design Name: 
// Module Name: cpu
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


module cpu(input Clock);


wire [3:0] opcode;
wire [1:0] ALUOp;
wire RegDst,Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;


//inicializimi i Datapath    
datapath DP
(
Clock,
RegDst,Branch, MemRead, MemWrite,MemToReg, ALUSrc, RegWrite, 
ALUOp,
opcode
);

//Inicializimi i COntrol Unit
ControlUnit cu(opcode,
RegDst, 
ALUSrc,
MemToReg,
RegWrite,
MemRead, 
MemWrite,
ALUOp,
Branch
);



endmodule
