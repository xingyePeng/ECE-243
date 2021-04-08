`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/12 01:50:17
// Design Name: 
// Module Name: comparator_eight_bits
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


module comparator_eight_bits(A, B, AltB, AeqB, AgtB);
 input [7:0] A;
 input [7:0] B;
    output  AltB, AeqB, AgtB;
    reg AltB;
    reg AeqB;
    reg AgtB;
    
  always@(A or B) 
       begin
         if(A==B)
         begin 
         AltB<=1'b0;
         AeqB<=1'b1;
         AgtB<=1'b0;
       end
         
         else if(A>B)
           begin 
            AltB<=1'b0;
            AeqB<=1'b0;
            AgtB<=1'b1;
          end
          
           else if(A<B)
           begin 
            AltB<=1'b1;
            AeqB<=1'b0;
            AgtB<=1'b0;
          end
    end

endmodule
