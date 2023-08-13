`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2023 12:47:20 PM
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(input[1:0] ALUOp, input[3:0] Funct,output reg[3:0] Operacioni);

always @(ALUOp)
begin

case(ALUOp)

2'b00:
//ls/ss/addi
begin
assign Operacioni = 4'b0010;
end

// beq/bne
2'b01:
begin
assign Operacioni = 4'b1010;
end

2'b10:
begin
    //and
    case(Funct)
    4'b0000:
    begin
    assign Operacioni = 4'b0000;
    end
    //or
    4'b0001:
    begin
    assign Operacioni = 4'b0001;
    end
    //add
    4'b0010:
    begin
    assign Operacioni = 4'b0010;
    end
    //sub
    4'b0011:
    begin
    assign Operacioni = 4'b1010;
    end
    //slt
    4'b0100:
    begin
    assign Operacioni = 4'b0011;
    end
    //xor
    4'b0110:
    begin
    assign Operacioni = 4'b0101;
    end
    //sll
    4'b0111:
    begin
    assign Operacioni = 4'b0110;
    end
    endcase
end

2'b11:
//mul
    begin
    case(Funct)
    4'b0101:
    begin
    assign Operacioni=4'b0100;
    end
    endcase
end

endcase
end

endmodule
