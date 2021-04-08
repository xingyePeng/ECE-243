`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 12:27:32
// Design Name: 
// Module Name: Register_8bits
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


module Register_8bits(Clk, Clr, Ld, I, Q);
 input Clk, Clr, Ld;
    input [7:0] I;
    output reg [7:0] Q;
    
   
    //write your code here
 always@(posedge Clk)
       begin
       if (Clr==1) begin
          Q<=0;
          end
          
        else if(Ld==1)begin
        Q<=I;
         end
         
         else 
         Q<=Q;
      end
endmodule
