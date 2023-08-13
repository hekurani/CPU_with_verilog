`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 06:50:21 PM
// Design Name: 
// Module Name: ALU_24Bit
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


module ALU_24Bit(
    input [23:0] A,
    input [23:0] B,
    input [2:0] ALUOp,
    input AInvert,
    input BInvert,
    output Zero,
    output Overflow,
    output CarryOut,
    output [23:0] Result
    );
wire [22:0] coutLess;
wire [22:0] coutOther;
wire [22:0] cout;
mux3ne1 couti(coutOther,coutLess,ALUOp,cout);

ALU1Bit ALU0(A[0], B[0], Result[23],BInvert,AInvert,BInvert ,ALUOp,Result[0], cout[0]);
ALU1Bit ALU1(A[1], B[1], 1'b0, cout[0],AInvert,BInvert, ALUOp,Result[1], cout[1]);
ALU1Bit ALU2(A[2], B[2], 1'b0, cout[1],AInvert,BInvert, ALUOp,Result[2], cout[2]);
ALU1Bit ALU3(A[3], B[3], 1'b0, cout[2],AInvert,BInvert, ALUOp,Result[3], cout[3]);
ALU1Bit ALU4(A[4], B[4], 1'b0, cout[3],AInvert,BInvert, ALUOp,Result[4], cout[4]);
ALU1Bit ALU5(A[5], B[5], 1'b0, cout[4],AInvert,BInvert, ALUOp,Result[5], cout[5]);
ALU1Bit ALU6(A[6], B[6], 1'b0, cout[5],AInvert,BInvert, ALUOp,Result[6], cout[6]);
ALU1Bit ALU7(A[7], B[7], 1'b0, cout[6],AInvert,BInvert, ALUOp,Result[7], cout[7]);
ALU1Bit ALU8(A[8], B[8], 1'b0, cout[7],AInvert,BInvert, ALUOp,Result[8], cout[8]);
ALU1Bit ALU9(A[9], B[9], 1'b0, cout[8],AInvert,BInvert, ALUOp,Result[9], cout[9]);
ALU1Bit ALU10(A[10], B[10], 1'b0, cout[9],AInvert,BInvert, ALUOp,Result[10], cout[10]);
ALU1Bit ALU11(A[11], B[11], 1'b0, cout[10],AInvert,BInvert, ALUOp,Result[11], cout[11]);
ALU1Bit ALU12(A[12], B[12], 1'b0, cout[11],AInvert,BInvert, ALUOp,Result[12], cout[12]);
ALU1Bit ALU13(A[13], B[13], 1'b0, cout[12],AInvert,BInvert, ALUOp,Result[13], cout[13]);
ALU1Bit ALU14(A[14], B[14], 1'b0, cout[13],AInvert,BInvert, ALUOp,Result[14], cout[14]);
ALU1Bit ALU15(A[15], B[15], 1'b0, cout[14],AInvert,BInvert, ALUOp,Result[15], cout[15]);
ALU1Bit ALU16(A[16], B[16], 1'b0, cout[15],AInvert,BInvert, ALUOp,Result[16], cout[16]);
ALU1Bit ALU17(A[17], B[17], 1'b0, cout[16],AInvert,BInvert, ALUOp,Result[17], cout[17]);
ALU1Bit ALU18(A[18], B[18], 1'b0, cout[17],AInvert,BInvert, ALUOp,Result[18], cout[18]);
ALU1Bit ALU19(A[19], B[19], 1'b0, cout[18],AInvert,BInvert, ALUOp,Result[19], cout[19]);
ALU1Bit ALU20(A[20], B[20], 1'b0, cout[19],AInvert,BInvert, ALUOp,Result[20], cout[20]);
ALU1Bit ALU21(A[21], B[21], 1'b0, cout[20],AInvert,BInvert, ALUOp,Result[21], cout[21]);
ALU1Bit ALU22(A[22], B[22], 1'b0, cout[21],AInvert,BInvert, ALUOp,Result[22], cout[22]);
ALU1Bit ALU23(A[23], B[23], 1'b0, cout[22],AInvert,BInvert, ALUOp,Result[23], CarryOut);
    
assign Zero = ~(Result[0] | Result[1] | 
                Result[2] | Result[3] | 
                Result[4] | Result[5] | 
                Result[6] | Result[7] | 
                Result[8] | Result[9] | 
                Result[10] | Result[11] | 
                Result[12] | Result[13] | 
                Result[14] | Result[15] | 
                Result[16] | Result[17] | 
                Result[18] | Result[19] | 
                Result[20] | Result[21] | 
                Result[22] | Result[23]);  

assign Overflow = cout[22] ^ CarryOut;     
//assign less = {Result[23],23'b00000000000000000000000};    
endmodule
