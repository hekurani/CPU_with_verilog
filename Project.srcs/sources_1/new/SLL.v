`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 12:38:13 PM
// Design Name: 
// Module Name: SLL
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




module SLL(
    input[23:0] A,
    input[23:0] B,
    input [3:0] shamt,
    output[23:0] ShiftLeft
    );
reg [23:0] wire_shift;
wire [23:0] shamtExtended;
wire[23:0] result;

integer i = 0;
wire[23:0] my_Int;


assign shamtExtended = {20'b0,shamt};

Adder24Bit test(B,shamtExtended,my_Int);

//initial begin
    //my_int = B;
    //end
/*
initial begin
for(i = 0;i < my_Int ; i=i+1) begin
     if(B>24'd8) begin
        assign wire_shift=24'b000000000000000000000000;
        
     end
     if(i == 0)begin
     assign wire_shift = A << 1;
     end
     else begin
     assign wire_shift = wire_shift << 1;
     end;
     if(i==23)begin
     assign i = my_Int+1;
     end
end
end 
*/
/*
initial begin
if(my_Int>24'd23) begin
assign wire_shift=24'd0;
i=100;
end

while (i < my_Int)
    begin
    wire_shift= A<<1;     
    end
    i=i+1;
end
*/
assign A= A<<my_Int;
assign ShiftLeft = A;
endmodule
