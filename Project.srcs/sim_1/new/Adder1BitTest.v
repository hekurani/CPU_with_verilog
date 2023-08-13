`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 05:58:11 PM
// Design Name: 
// Module Name: Adder1BitTest
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


module Adder1BitTest;
reg A; reg B; reg cin;
wire sum;wire cout;

initial 
$monitor ("A=%b,B=%b,Cin=%b,Sum=%b,Cout=%b",A,B,cin,sum,cout);

initial begin 
#0 A=1'b0;B=1'b0;cin=1'b0;
#1 A=1'b0;B=1'b0;cin=1'b1;
#1 A=1'b0;B=1'b1;cin=1'b0;
#1 A=1'b0;B=1'b1;cin=1'b1;
#1 A=1'b1;B=1'b0;cin=1'b0;
#1 A=1'b1;B=1'b0;cin=1'b1;
#1 A=1'b1;B=1'b1;cin=1'b0;
#1 A=1'b1;B=1'b1;cin=1'b1;

#1 $stop;
end

Adder1Bit test(.A(A),.B(B),.cin(cin),.sum(sum),.cout(cout));
endmodule
