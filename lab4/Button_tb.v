`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/22 12:29:59
// Design Name: 
// Module Name: Button_tb
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


module Button_tb( );
reg clk_tb;
reg a_tb;
reg reset_tb;

wire p_tb;

Button p1 (clk_tb,a_tb,reset_tb,p_tb);


 always begin
                    clk_tb = 0;
                    #100;
                     clk_tb = 1;
                     #100;
                        end
                       
                       
  initial begin
                        reset_tb=1; 
                        a_tb=0;
                       
                       #50 reset_tb=0;
                       a_tb=1;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      
                       #50 a_tb=0;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      
                       #50 a_tb=1;
                      @(posedge clk_tb);
                      
                      #50  a_tb=0;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
              end
endmodule


