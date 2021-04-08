`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:48:21
// Design Name: 
// Module Name: adder_12bits_tb
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


module Adder_12bits_tb();
reg[11:0] A_tb, B_tb;
reg Cin_tb;
wire[11:0] S_tb;
wire Co_tb;

initial begin
      
        A_tb=0;B_tb=0;Cin_tb=0;
        #50;
        A_tb=0;B_tb=0;Cin_tb=1;
        #50;
         A_tb=0;B_tb=1;Cin_tb=0;
          #50;
         A_tb=0;B_tb=1;Cin_tb=1;
          #50;
         A_tb=1;B_tb=0;Cin_tb=0;
           #50;
         A_tb=1;B_tb=0;Cin_tb=1;
           #50;
         A_tb=1;B_tb=1;Cin_tb=0;
          #50;
         A_tb=1;B_tb=1;Cin_tb=1;
endmodule
