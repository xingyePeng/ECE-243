`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 02:57:19
// Design Name: 
// Module Name: mux_8bits
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


module mux_8bits(I0,I1,S,Q );

input [7:0] I0,I1;
input S;
output reg [7:0] Q;
      always @(I0,I1,S)
         begin 
           if (S==1) 
             begin
             Q=I1;
           end
           
            if(S==0)
              begin 
                Q=I0;
               end 
   end 
endmodule
