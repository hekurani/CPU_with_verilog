`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 05:56:19 PM
// Design Name: 
// Module Name: Adder1Bit
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


module Adder1Bit(
input A, input B, input cin, output sum, output cout
    );
assign  sum= A^B^cin;
assign cout= (cin & A) | (cin & B) | (A & B);
    
endmodule
