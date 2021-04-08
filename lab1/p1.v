`timescale 1ns / 1ns

     module p1(I0,I1,I2,I3,D1,D0);

       input  I0,I1,I2,I3;
       output D1,D0;
        reg D1,D0;
        
        always @( I0,I1,I2,I3)begin
             D1<=I2|I3;
             D0<=I3|(-I2&I1);
             
             end
           endmodule