`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2022 05:38:01 PM
// Design Name: 
// Module Name: mux4Test
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


module mux4Test;
reg h1; reg h2; reg h3; reg h4; 
reg [1:0] s;
 wire dalja; 

initial 
$monitor("Hyrja1=%b,Hyrja2=%b,Hyrja3=%b,Hyrja4=%b,Sinjali=%b,Dalja=%b",h1,h2,h3,h4,s,dalja);


initial begin 
#0 h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b0; s=2'b00;
#1 h1=1'b0; h2=1'b0; h3=1'b0; h4=1'b1; s=2'b01;
#1 h1=1'b0; h2=1'b0; h3=1'b1; h4=1'b0; s=2'b10;
#1 h1=1'b0; h2=1'b0; h3=1'b1; h4=1'b1; s=2'b11;
#1 h1=1'b0; h2=1'b1; h3=1'b0; h4=1'b0; s=2'b00;
#1 h1=1'b0; h2=1'b1; h3=1'b0; h4=1'b1; s=2'b01;
#1 h1=1'b0; h2=1'b1; h3=1'b1; h4=1'b0; s=2'b10;
#1 h1=1'b0; h2=1'b1; h3=1'b1; h4=1'b1; s=2'b11;
#1 h1=1'b1; h2=1'b0; h3=1'b0; h4=1'b0; s=2'b00;
#1 h1=1'b1; h2=1'b0; h3=1'b0; h4=1'b1; s=2'b01;
#1 h1=1'b1; h2=1'b0; h3=1'b1; h4=1'b0; s=2'b10;
#1 h1=1'b1; h2=1'b0; h3=1'b1; h4=1'b1; s=2'b11;
#1 h1=1'b1; h2=1'b1; h3=1'b0; h4=1'b0; s=2'b00;
#1 h1=1'b1; h2=1'b1; h3=1'b0; h4=1'b1; s=2'b01;
#1 h1=1'b1; h2=1'b1; h3=1'b1; h4=1'b0; s=2'b10;
#1 h1=1'b1; h2=1'b1; h3=1'b1; h4=1'b1; s=2'b11;
$stop;
end

mux4ne1 test2(.h1(h1),.h2(h2),.h3(h3),.h4(h4),.s(s),.dalja(dalja));
endmodule
 