`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 12:26:06 PM
// Design Name: 
// Module Name: mux3ne1
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


module mux3ne1(
input wire [22:0] A, input wire [22:0] B,
input wire [2:0] s, output [22:0] out
    );
    
assign out = s[2]? (s[1]?(s[0]?A:A):(s[0]?A:A)):(s[1]?(s[0]?B:A):(s[0]?A:A));  
endmodule
