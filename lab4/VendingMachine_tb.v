`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:15:58 PM
// Design Name: 
// Module Name: tailLights_tb
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


module VendingMachine_tb();
    reg N_tb, D_tb, Q_tb, Clk_tb, Rst_tb;
    wire [5:0] Number_tb;
    wire C_tb;
    
    VendingMachine VendingMachine_tb(Clk_tb, Rst_tb, Number_tb, C_tb, N_tb, D_tb, Q_tb);
    always begin
        Clk_tb<=0;
        #100;
        Clk_tb<=1;
        #100;
    end
    
    initial
    begin
        Rst_tb<=1;
        N_tb<=0;
        D_tb<=0;
        Q_tb<=0;
        @(posedge Clk_tb);
        #50 Rst_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=0; D_tb<=0; Q_tb<=1;
        @(posedge Clk_tb);
        #50 Rst_tb<=1;
        N_tb<=0;
        D_tb<=0;
        Q_tb<=0;
        @(posedge Clk_tb);
        #50 Rst_tb<=0;
        N_tb<=0; D_tb<=1; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=0; D_tb<=1; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=0; D_tb<=1; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=0; D_tb<=1; Q_tb<=0;
        @(posedge Clk_tb);
        #50 Rst_tb<=1;
        N_tb<=0;
        D_tb<=0;
        Q_tb<=0;
        @(posedge Clk_tb);
        #50 Rst_tb<=0; N_tb<=1; D_tb<=1; Q_tb<=1;
        @(posedge Clk_tb);
        #50 N_tb<=0; D_tb<=0; Q_tb<=1;
        @(posedge Clk_tb);
        #50 N_tb<=0; D_tb<=0; Q_tb<=1;
        @(posedge Clk_tb);
        #50 Rst_tb<=1;
        N_tb<=0;
        D_tb<=0;
        Q_tb<=0;
        @(posedge Clk_tb);
        #50 Rst_tb<=0; N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 N_tb<=1; D_tb<=0; Q_tb<=0;
        @(posedge Clk_tb);
        #50 Rst_tb<=1;
        N_tb<=0;
        D_tb<=0;
        Q_tb<=0;
    end    
endmodule

