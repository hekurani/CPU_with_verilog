`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 05:32:59 PM
// Design Name: 
// Module Name: mux4ne1
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


module mux4ne1(
input wire h1,
input wire h2,
input wire h3,
input wire h4,
input wire [1:0] s,
output wire dalja
    );
    
assign dalja=s[1]?(s[0]?h4:h3):(s[0]?h2:h1);    
    
endmodule
