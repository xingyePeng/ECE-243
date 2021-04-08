`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 03:08:46
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
reg[7:0] I0_tb,I1_tb;
reg  S_tb;
wire [7:0] Q_tb;

mux_8bits mux(I0_tb,I1_tb,S_tb,Q_tb);

initial
 begin
        
   I1_tb=8'd255;
   I0_tb=8'd100;
   S_tb=0;
        
    #50;
    S_tb<=1;  
    
    #50;
   I1_tb<=8'd24;
   I0_tb<=8'd39;
   
   #50;
    S_tb<=0;
   end  
endmodule
