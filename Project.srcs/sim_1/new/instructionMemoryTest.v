`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 01:28:19 PM
// Design Name: 
// Module Name: instructionMemoryTest
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


module instructionMemoryTest;

reg[23:0] PC;
wire[23:0] Instruction;

initial
begin
#0 PC=24'd0;
#10 PC=24'd3;
#10 PC=24'd6;
#10 PC=24'd9;
#10 PC=24'd12;
#10 PC=24'd15;
#10 PC=24'd18;
#10 PC=24'd21;
#10 PC=24'd24;
#10 $stop;
end

InstructionMemory IM(PC, Instruction);
endmodule


