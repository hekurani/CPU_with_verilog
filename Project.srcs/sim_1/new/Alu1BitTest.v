`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 06:37:38 PM
// Design Name: 
// Module Name: Alu1BitTest
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


module Alu1BitTest;
reg A; reg B;reg cin; reg less; reg AInvert;reg BInvert; reg [2:0] operation;
wire result; wire cout;

initial $monitor ("A=%b,B=%b,cin=%b,less=%b,AInvert=%b,BInvert=%b,operation=%b,result=%b,cout=%b",
A,B,cin,less,AInvert,BInvert,operation,result,cout);

initial begin
//and
#0 A=1'b0;B=1'b1;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b000;
#2 A=1'b1;B=1'b1;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b000;
//or
#2 A=1'b1;B=1'b0;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b001;
#2 A=1'b0;B=1'b0;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b001;
//add
#2 A=1'b1;B=1'b0;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b010;
#2 A=1'b1;B=1'b1;cin=1'b1;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b010;
#2 A=1'b0;B=1'b0;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b010;
#2 A=1'b0;B=1'b1;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b010;
//sub
#2 A=1'b0;B=1'b1;cin=1'b1;less=1'b0;AInvert=1'b0;BInvert=1'b1;operation=3'b010;
#2 A=1'b1;B=1'b1;cin=1'b1;less=1'b0;AInvert=1'b0;BInvert=1'b1;operation=3'b010;
#2 A=1'b1;B=1'b0;cin=1'b1;less=1'b0;AInvert=1'b0;BInvert=1'b1;operation=3'b010;
#2 A=1'b0;B=1'b0;cin=1'b1;less=1'b0;AInvert=1'b0;BInvert=1'b1;operation=3'b010;
//xor
#2 A=1'b1;B=1'b0;cin=1'b1;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b101;
#2 A=1'b1;B=1'b1;cin=1'b0;less=1'b0;AInvert=1'b0;BInvert=1'b0;operation=3'b101;
//less
#2 A=1'b1;B=1'b0;cin=1'b0;less=1'b1;AInvert=1'b0;BInvert=1'b0;operation=3'b011;
#2 A=1'b0;B=1'b1;cin=1'b0;less=1'b1;AInvert=1'b0;BInvert=1'b0;operation=3'b011;
#2 $stop;
end

ALU1Bit ALuTesting(A,B,less,cin,AInvert,BInvert,operation,result,cout);

endmodule
