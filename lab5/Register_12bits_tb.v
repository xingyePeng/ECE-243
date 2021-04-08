`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 03:06:03
// Design Name: 
// Module Name: Register_12bits_tb
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


module Register_12bits_tb();
   reg Clk_tb, Clr_tb, Ld_tb;
   reg [11:0] I_tb;
   wire [11:0] Q_tb;
   
    Register_12bits register(Clk_tb, Clr_tb, Ld_tb, I_tb, Q_tb);
     always begin
                    Clk_tb = 0;
                    #100;
                     Clk_tb = 1;
                     #100;
              
           end
           
     initial begin
               
                Clr_tb<=1;
                Ld_tb<=0;
                I_tb<=12'h000;
                
                #100;
                 Clr_tb<=0;
                 I_tb<=12'habc;
                 
                 #250;
                 Ld_tb<=1;
                 
                 #300;
                I_tb<=12'hfff;
         end
endmodule
