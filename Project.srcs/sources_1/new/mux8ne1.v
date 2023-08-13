`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2023 10:00:12 PM
// Design Name: 
// Module Name: mux8ne1
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


module mux8ne1(
    input wire h1 , //and  000
    input wire h2, //or  001
    input wire h3, //add- sub 010
    input wire h4, //slt 011
    input wire h5, //mul 100
    input wire h6, //xor 101
    input wire h7, //sll 110
    input wire h8, //111
    input wire [2:0] s,
    output wire dalja
    );

assign dalja = s[2]? (s[1]?(s[0]?h8:h7):(s[0]?h6:h5)):(s[1]?(s[0]?h4:h3):(s[0]?h2:h1));  
endmodule
