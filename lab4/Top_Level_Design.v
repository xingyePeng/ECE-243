`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/21 23:50:00
// Design Name: 
// Module Name: Top_Level_Design
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


module Top_Level_Design(CLK100MHZ, BTNU, BTNL, BTNC, BTNR, LED, CA, CB, CC, CD, CE, CF, CG, AN);

 input CLK100MHZ; 
 input BTNU; //BTNU is Reset
 input BTNL, BTNC, BTNR; //BTNL is Nickel, BTNC is Dime, BTNR is Quarter
 output [0:0] LED; //LED[0] is Candy    
 output CA, CB, CC, CD, CE, CF, CG; //segment a, b, ... g   
 output [7:0] AN; //enable each digit of the 8 digits
   
wire Clkout;
wire[5:0] Number_out;
wire s1;
wire s2;
wire s3;
// ClkDiv(Clk, Rst, ClkOut);
ClkDiv a1(CLK100MHZ, 1'b0, Clkout);
//button(clk,a,reset,p);
Button b1(Clkout,BTNL,BTNU,s1);
//button(clk,a,reset,p);
Button b2(Clkout,BTNC,BTNU,s2);
//button(clk,a,reset,p);
Button b3(Clkout,BTNR,BTNU,s3);
//VendingMachine(Clk, Rst, Number, C, N, D, Q);
VendingMachine a2(Clkout, BTNU, Number_out, LED, s1, s2, s3);   
//TwoDigitDisplay(CLK100MHZ, SW, CA,CB,CC,CD,CE,CF,CG,AN);
TwoDigitDisplay a3 (CLK100MHZ, Number_out, CA,CB,CC,CD,CE,CF,CG,AN);   

endmodule
