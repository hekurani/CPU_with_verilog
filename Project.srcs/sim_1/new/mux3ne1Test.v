`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 12:28:58 PM
// Design Name: 
// Module Name: mux3ne1Test
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


module mux3ne1Test;
reg [22:0] A; reg[22:0] B; reg [2:0] s; wire [22:0] out;
    
    
initial $monitor("A=%b,B=%b,s=%b,out=%b",A,B,s,out);

initial begin
#0 A=1'b0;B=1'b1;s=3'b011;
#5 $stop;
end

mux3ne1 test(A,B,s,out);



endmodule
