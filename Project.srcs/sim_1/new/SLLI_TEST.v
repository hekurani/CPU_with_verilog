`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 01:51:57 PM
// Design Name: 
// Module Name: SLLI_TEST
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


module SLLI_TEST;
reg [15:0] A;
reg [15:0] B;
wire [15:0] slli;


initial $monitor("A=%b,B=%b,slli=%b",A,B,slli);


initial begin
    #0 A=16'b0000000000000100;B=16'b0000000000000011;
    #5 $stop;

end

SLLI test(A,B,slli);

endmodule
