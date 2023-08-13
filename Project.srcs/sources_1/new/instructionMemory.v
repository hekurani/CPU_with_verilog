`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 09:57:25 PM
// Design Name: 
// Module Name: instructionMemory
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




module InstructionMemory(
input wire [23:0] PC,
 output wire [23:0] Instruction);

reg[7:0] iMem[127:0];

initial $readmemh("instructionMem.mem", iMem);

assign Instruction[23:16] = iMem[PC];
assign Instruction[15:8] = iMem[PC+24'd1];
assign Instruction[7:0] = iMem[PC +24'd2];


endmodule


