`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 03:47:59 PM
// Design Name: 
// Module Name: cpuTest
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


module cpuTest();

reg Clock;

integer i;
initial
begin
#15 Clock = 0;
for(i=0; i < 20; i=i+1) //20x nderro nga Clock 0 - 1, 30 tehe pozitive
begin
#15 Clock = 0;
#15 Clock = 1;
end

#10 $stop;
end



cpu cpu32(Clock);
endmodule

