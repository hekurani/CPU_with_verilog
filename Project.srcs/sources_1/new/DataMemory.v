`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 01:20:44 PM
// Design Name: 
// Module Name: DataMemory
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

module DataMemory(input[23:0] Adresa, input[23:0] WriteData,
 input Clock, input MemWrite, input MemRead, output[23:0] ReadData);

reg[7:0] dMem[127:0];
initial $readmemh("dataMem.mem", dMem);

always @(posedge Clock)
begin
if(MemWrite) 
    begin
        dMem[Adresa + 24'd0] <= WriteData[23:16];
        dMem[Adresa+ 24'd1] <= WriteData[15:8];
        dMem[Adresa+ 24'd2] <= WriteData[7:0];
    end
end


always @(negedge Clock)
begin
$writememh("dataMemory.mem", dMem);
end

assign ReadData = {dMem[Adresa + 24'd0],dMem[Adresa+ 24'd1],dMem[Adresa+ 24'd2]};

endmodule
