`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 06:25:24 PM
// Design Name: 
// Module Name: ALU1Bit
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


module ALU1Bit(
input A, input B, input less, input cin,input AInvert,
input BInvert, input [2:0] operation,  output  result, output cout);
wire notA;
wire notB; wire mbledh;
wire dhe;
wire ose;
wire xori;
wire slt;
wire sll;


wire muxA;
wire muxB;
assign notA= ~A;
assign notB= ~B;

mux2ne1 mux1(A,notA,AInvert,muxA);
mux2ne1 mux2(B,notB,BInvert,muxB);
//assign muxA = A;

assign dhe = muxA & muxB;
assign ose = muxA | muxB;


Adder1Bit addAB(muxA,muxB,cin,mbledh,cout);
xorGate xorAB(muxA,muxB,xori);




mux8ne1 muxALU(dhe,ose,mbledh,less,1'b0,xori,sll,1'b0,operation,result);
    
endmodule
