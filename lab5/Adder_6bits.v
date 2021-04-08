`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 12:31:52
// Design Name: 
// Module Name: Adder_6bits
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


module Adder_6bits(A, B, Cin, S, Co );  
    input [5:0] A, B;
    input Cin;
    output reg [5:0] S;
    output reg Co;
  
  always @(A,B,Cin) begin
  
     {Co, S}=A+B+Cin;
end
endmodule
