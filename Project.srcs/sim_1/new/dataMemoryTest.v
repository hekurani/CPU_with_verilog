`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 01:41:23 PM
// Design Name: 
// Module Name: dataMemoryTest
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


module dataMemoryTest();
reg Clock, MemWrite, MemRead;
reg[23:0] Adresa;
reg[23:0] WriteData;
wire[23:0] ReadData;

initial $monitor("MemWrite = %b, Adresa = %b, WriteData= %b, MemRead =%b, ReadData=%b",
MemWrite,Adresa,WriteData,MemRead,ReadData);

initial 
begin
#0 Clock=1'b0;
#5 MemWrite=1'b1; Adresa=24'd10; WriteData=24'd1; MemRead=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0;MemWrite=1'b0;
#5 MemRead=1'b1; Adresa=24'd10;
#5 $stop;
end

DataMemory DM(Adresa, WriteData, Clock, MemWrite, MemRead, ReadData);

endmodule
