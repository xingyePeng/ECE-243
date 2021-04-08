`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:57:09
// Design Name: 
// Module Name: Adder12
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


module Adder12(A, B, Cin, S, Co );


   
    input [11:0] A, B;
    input Cin;
    output reg [11:0] S;
    output reg Co;
  
  always @(A,B,Cin) begin
  
     {Co, S}=A+B+Cin;
end

endmodule