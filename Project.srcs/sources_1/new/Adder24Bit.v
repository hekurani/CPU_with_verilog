`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 07:13:15 PM
// Design Name: 
// Module Name: Adder24Bit
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


module Adder24Bit(
input [23:0] A, input [23:0] B, output [23:0] result 
    );
wire [23:0] cout;
    
Adder1Bit Adder1(A[0],B[0],1'b0,result[0],cout[0]);
Adder1Bit Adder2(A[1],B[1],cout[0],result[1],cout[1]);
Adder1Bit Adder3(A[2],B[2],cout[1],result[2],cout[2]);
Adder1Bit Adder4(A[3],B[3],cout[2],result[3],cout[3]);  
Adder1Bit Adder5(A[4],B[4],cout[3],result[4],cout[4]);
Adder1Bit Adder6(A[5],B[5],cout[4],result[5],cout[5]);
Adder1Bit Adder7(A[6],B[6],cout[5],result[6],cout[6]);
Adder1Bit Adder8(A[7],B[7],cout[6],result[7],cout[7]);  
Adder1Bit Adder9(A[8],B[8],cout[7],result[8],cout[8]);
Adder1Bit Adder10(A[9],B[9],cout[8],result[9],cout[9]);
Adder1Bit Adder11(A[10],B[10],cout[9],result[10],cout[10]);
Adder1Bit Adder12(A[11],B[11],cout[10],result[11],cout[11]);    
Adder1Bit Adder13(A[12],B[12],cout[11],result[12],cout[12]);
Adder1Bit Adder14(A[13],B[13],cout[12],result[13],cout[13]);
Adder1Bit Adder15(A[14],B[14],cout[13],result[14],cout[14]);
Adder1Bit Adder16(A[15],B[15],cout[14],result[15],cout[15]);  
Adder1Bit Adder17(A[16],B[16],cout[15],result[16],cout[16]);
Adder1Bit Adder18(A[17],B[17],cout[16],result[17],cout[17]);
Adder1Bit Adder19(A[18],B[18],cout[17],result[18],cout[18]);
Adder1Bit Adder20(A[19],B[19],cout[18],result[19],cout[19]);  
Adder1Bit Adder21(A[20],B[20],cout[19],result[20],cout[20]);
Adder1Bit Adder22(A[21],B[21],cout[20],result[21],cout[21]);
Adder1Bit Adder23(A[22],B[22],cout[21],result[22],cout[22]);
Adder1Bit Adder24(A[23],B[23],cout[22],result[23],cout[23]);   
endmodule
