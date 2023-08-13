`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 07:17:27 PM
// Design Name: 
// Module Name: ALU24Test
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


module ALU24Test;
reg [23:0] A;
reg [23:0] B;
//wire less;
reg [2:0] ALUOp;
reg AInvert;
reg BInvert;
wire Zero;
wire Overflow;
wire  CarryOut;
wire [23:0] Result;
initial 
$monitor("A=%b,B=%b,ALUOp=%b,AInvert=%b,BInvert=%b,zero=%b,overflow=$b,carryout=%b,result=%b",
A,B,ALUOp,AInvert,BInvert,Zero,Overflow,CarryOut,Result);


initial begin
#0 A=24'b000000000000000000000110; B=24'b000000000000000000000010;ALUOp=3'b101;
AInvert=1'b0;BInvert=1'b0;

#5 A=24'b000000000000000000000010; B=24'b000000000000000000000011;ALUOp=3'b010;
AInvert=1'b0;BInvert=1'b1;

#5 A=24'b000000000000000000000010; B=24'b000000000000000000000011;ALUOp=3'b011;
AInvert=1'b0;BInvert=1'b0;

#5 $stop;
end

ALU_24Bit testt(.A(A),.B(B),.ALUOp(ALUOp),.AInvert(AInvert),.BInvert(BInvert),
.Zero(Zero),.Overflow(Overflow),.CarryOut(CarryOut),.Result(Result));
endmodule
