`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 03:02:08 PM
// Design Name: 
// Module Name: xorGate
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


module xorGate(
input A, input B, output out
    );
wire joA;
wire joB;
wire cout;
assign joA= ~A;
assign joB =~B;
    
    
assign out = (joA & B) | (joB & A);
endmodule
