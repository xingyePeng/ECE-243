`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:55:51
// Design Name: 
// Module Name: Adder12_tb
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


module Adder12_tb( );


reg[11:0] A_tb, B_tb;
reg Cin_tb;
wire[11:0] S_tb;
wire Co_tb;

Adder12 Adder(A_tb, B_tb,Cin_tb,S_tb, Co_tb);
initial begin
      
        A_tb<=12'hc23;B_tb<=12'h0b4;Cin_tb=0;
        #50;
      A_tb<=12'hc23;B_tb<=12'h0b4;Cin_tb=1;
        #50;
       A_tb<=12'h023;B_tb<=12'h0b4;Cin_tb=1;
          #50;
            A_tb<=12'hfff;B_tb<=12'h000;Cin_tb=1;
          #50;
           A_tb<=12'hfff;B_tb<=12'h00f;Cin_tb=0;
        
         end
endmodule
