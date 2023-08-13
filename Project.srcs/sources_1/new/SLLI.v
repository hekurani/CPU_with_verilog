`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 01:51:02 PM
// Design Name: 
// Module Name: SLLI
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


module SLLI(
  input[15:0] A,
    input[15:0] B,
    output[15:0] SLLI
    );
reg [15:0] wire_to_be_shifted;
integer i ;
integer my_int ;
initial begin
    my_int = B;
    end
initial begin
for(i = 0;i < my_int ; i=i+1) begin
     if(i == 0)begin
     assign wire_to_be_shifted = A << 1;
     end
     else begin
     assign wire_to_be_shifted = wire_to_be_shifted << 1;
     end;
     if(i==16)begin
     i = my_int+1;
     end
end
end 
assign SLLI = wire_to_be_shifted;


endmodule
