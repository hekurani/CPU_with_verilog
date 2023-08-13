`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 11:37:38 AM
// Design Name: 
// Module Name: ALUControlTest
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


module ALUControlTest;
reg [1:0] ALUOp;
reg [3:0] Funct;
wire [3:0] Operacioni;


initial $monitor("ALUOp= %b, Funct =%b, Operacioni = %b", ALUOp,Funct,Operacioni);

initial begin
#0 ALUOp=2'b10;Funct=4'b0110;
#5 $stop;

end

ALUControl test(ALUOp,Funct,Operacioni);

endmodule
