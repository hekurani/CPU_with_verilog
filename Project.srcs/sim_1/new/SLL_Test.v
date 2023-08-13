`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 01:09:37 PM
// Design Name: 
// Module Name: SLL_Test
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


module SLL_Test;
reg [23:0] A;
reg [23:0] B;
reg [3:0] shamt;
wire [23:0] ShiftLeft;

initial $monitor("A=%b, B=%b, shamt=%b, ShiftLeft=%b", A,B,shamt,ShiftLeft);

initial begin
#0 A=24'b000000000000000111111111;B=24'b000000000000000000000010;shamt=4'b1100;
#10 $stop;

end

SLL test(A,B,shamt,ShiftLeft);


endmodule
