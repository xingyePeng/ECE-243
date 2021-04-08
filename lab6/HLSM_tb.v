`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/19 13:15:31
// Design Name: 
// Module Name: HLSM_tb
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


module HLSM_tb();
    reg Clk, Rst,go;
    wire [4:0] count;
    wire done;
    
    HLSM a1(Clk,Rst,go,count,done);
    
    always
    begin
       Clk<=0;
       #100;
       Clk<=1;
       #100;
    end
    
    initial
    begin 
        Rst<=1'b1;go<=0;
        @ (posedge Clk)
        #50 Rst<=1'b0;
         @ (posedge Clk);
         @ (posedge Clk);
        #50 go <= 1;
        @ (posedge Clk);
        #50 go <= 0;
    end
    
endmodule
