`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 03:19:16 PM
// Design Name: 
// Module Name: xorTEST
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


module xorTEST;
reg A;
reg B;
wire out;


initial $monitor("A=%b,B=%b,out=%b",A,B,out);

initial begin
#0 A=1'b0;B=1'b0;
#5 A=1'b0;B=1'b1;
#5 A=1'b1;B=1'b0;
#5 A=1'b1;B=1'b1;
#5 $stop;

end
xorGate test(A,B,out);


endmodule
