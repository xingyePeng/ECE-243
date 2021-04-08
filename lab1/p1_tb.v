`timescale 1ns / 1ns


module p1_tb();

   reg I0_tb,I1_tb,I2_tb,I3_tb;
   wire D1_t, D0_t;
   
  p1 p1_tb(I0_tb,I1_tb,I2_tb,I3_tb);
  
  initial begin
  
    //case 0
  I0_tb=0;
  I1_tb=0;
  I2_tb=0;
  I3_tb=0;
    
    //case 1
   #10 I0_tb=1;
   #10 I1_tb=0;
   #10 I2_tb=0;
   #10 I3_tb=0;
    
    //case 2
     #10 I0_tb=0;
    #10  I1_tb=1;
    #10  I2_tb=0;
    #10 I3_tb=0;
 
    
    
    //case 3
    #10 I0_tb=1;
   #10  I1_tb=1;
   #10  I2_tb=0;
   #10  I3_tb=0;
    
    //case 4
   #10  I0_tb=0;
   #10   I1_tb=0;
   #10   I2_tb=1;
   #10   I3_tb=0;
    

    //case 5
   #10  I0_tb=1;
   #10  I1_tb=0;
   #10  I2_tb=1;
   #10  I3_tb=0;
    
    
    //case 6
   #10  I0_tb=0;
   #10  I1_tb=1;
   #10  I2_tb=1;
   #10  I3_tb=0;
    

    //case 7
   #10  I0_tb=1;
   #10  I1_tb=1;
   #10  I2_tb=1;
   #10  I3_tb=0;
    
    //case 8
   #10  I0_tb=0;
   #10  I1_tb=0;
   #10  I2_tb=0;
    #10 I3_tb=1;
    
    //case 9
    #10 I0_tb=1;
    #10 I1_tb=0;
    #10 I2_tb=0;
    #10 I3_tb=1;
    
    //case 10
   #10  I0_tb=0;
   #10  I1_tb=1;
   #10  I2_tb=0;
   #10  I3_tb=1;
    
   //case 11
   #10  I0_tb=1;
   #10  I1_tb=1;
   #10  I2_tb=0;
   #10  I3_tb=1;
    
   //case 12
   #10  I0_tb=0;
   #10  I1_tb=0;
   #10  I2_tb=1;
   #10  I3_tb=1;
    
      //case 13
    #10 I0_tb=1;
   #10  I1_tb=0;
   #10  I2_tb=1;
   #10  I3_tb=1;
    
   //case 14
   #10  I0_tb=0;
   #10  I1_tb=1;
   #10  I2_tb=1;
   #10  I3_tb=1;
    
     //case 15
   #10  I0_tb=1;
   #10  I1_tb=1;
   #10  I2_tb=1;
   #10  I3_tb=1;
    
    end
    endmodule