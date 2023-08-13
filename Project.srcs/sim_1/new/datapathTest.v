`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 01:12:01 PM
// Design Name: 
// Module Name: datapathTest
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


module datapathTest;
reg Clock;
reg RegDst;
reg Branch;
reg MemRead;
reg MemWrite;
reg MemToReg;
reg ALUSrc;
reg RegWrite;
reg[1:0] ALUOp;
reg [3:0] opcode;
wire [3:0] ALUCtrl;

initial $monitor("ALuOP=%b",ALUCtrl);

initial begin
#0 Clock=1'b0;
#5 Clock=1'b1;RegDst=1'b1;ALUSrc=1'b0;MemToReg=1'b0; RegWrite=1'b1; MemRead=1'b0;MemWrite=1'b0; ALUOp=2'b10;Branch=1'b0;
opcode=4'b0110;
end

datapath d(Clock,RegDst,Branch,MemRead,MemWrite,MemToReg,ALUSrc,RegWrite,ALUOp,opcode,ALUCtrl);

endmodule
