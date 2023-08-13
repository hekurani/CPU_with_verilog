`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 07:26:09 PM
// Design Name: 
// Module Name: Adder24Test
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


module Adder24Test;
reg [23:0] A;
reg [23:0] B;
wire [23:0] result;

initial $monitor("A=%b,B=%b,result=%b",A,B,result);

initial begin
#0 A=24'b000000000000000011111111;B=24'b000000000000000000000111;
#10 $stop;
end

Adder24Bit adderi(A,B,result);

endmodule
