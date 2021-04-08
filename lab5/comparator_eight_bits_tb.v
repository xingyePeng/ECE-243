`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 01:51:47
// Design Name: 
// Module Name: comparator_eight_bits_tb
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


module comparator_eight_bits_tb();

reg [7:0] A_tb;
reg [7:0] B_tb;
wire AltB_tb,AeqB_tb,AgtB_tb;

comparator_eight_bits comparator(A_tb,B_tb,AltB_tb,AeqB_tb,AgtB_tb);

           initial begin
          
              A_tb<=8'd175;
              B_tb<=8'd110;
              
              #100;
              A_tb<=8'd10;
              B_tb<=8'd200;
              
              
              #100;
              A_tb<=8'd45;
              B_tb<=8'd45;
      end

endmodule
