`timescale 1ns / 1ps



module Sevensegs_tb();
  reg [3:0] SW_tb;
      wire CA_tb, CB_tb, CC_tb, CD_tb, CE_tb, CF_tb, CG_tb;

SevenSegment Sevensegs_1(SW_tb, CA_tb, CB_tb, CC_tb, CD_tb, CE_tb, CF_tb, CG_tb);

        //Call SevenSegment module to be tested here
             initial    
              begin

         //case 0
        SW_tb<= 4'b0000;


         //case 1
         #100;
        SW_tb <=4'b0001;
     


         //case 2
           #100;
        SW_tb <= 4'b0010;
      


         //case 3
           #100;
        SW_tb<= 4'b0011;
        
         
         //case 4
           #100;
        SW_tb<= 4'b0100;
       
         //case 5
           #100;
        SW_tb <= 4'b0101;
       

       //case 6
         #100;
        SW_tb <= 4'b0110;
      
         //case 7
           #100;
        SW_tb <= 4'b0111;
       
          //case8
            #100;
        SW_tb <= 4'b1000;
       
           
          //case 9
            #100;
        SW_tb <= 4'b1001;
       
         
    end

endmodule