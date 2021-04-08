`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/15 14:15:33
// Design Name: 
// Module Name: button
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


module Button(clk,a,reset,p);
input clk;
input a;
input reset;

output reg p;
 reg [1:0] state,next_state;
 
 always@ (posedge clk)
    begin
    
    if(reset)
    state<=2'b00;
    else 
    state<=next_state;
    
   end
   
   always @(state,a)
   begin
   
   case (state)
   2'b00:begin
         if(a==0)
         next_state<=2'b00;
         else
         next_state<=2'b01;
         p<=0;
        end
        
   2'b01:begin
         if(a==1)
         next_state<=2'b10;
         else
         next_state<=2'b00;
             p<=1;
        
        end
    
        
   2'b10:begin 
         if(a==0)
         next_state<=2'b00;
         else next_state<=2'b10;
            p<=0;
         end
   
   default: begin
         next_state<=2'b00;
          p<=0;
        end
        endcase
      end
    
   
endmodule
