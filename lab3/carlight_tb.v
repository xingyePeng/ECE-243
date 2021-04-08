`timescale 1ns /1ps



module carlight_tb( );

reg clk_tb,rst_tb,R_tb,L_tb,E_tb;

wire [5:0] LED_tb;



carlight carlight1(clk_tb,rst_tb,R_tb,L_tb,E_tb,LED_tb);

                  // Generate clock
                    always begin
                    clk_tb = 0;
                    #100;
                     clk_tb = 1;
                     #100;
                        end
      
      
                    initial begin
                        rst_tb=1;
                        R_tb=0;
                        L_tb=0;
                        E_tb=0;
                     
                     #50 rst_tb=0;
              
                      L_tb <= 0; R_tb <= 0; E_tb <= 1;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                    
                      
                     #50 L_tb <= 0; R_tb <= 1; E_tb <= 0;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      
                      
                     #50 L_tb <= 0; R_tb <= 1; E_tb <= 1;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                       @(posedge clk_tb);
                      @(posedge clk_tb);
                      
                      
                      #50 L_tb <= 1; R_tb <= 0; E_tb <= 0;
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                      
                     #50 L_tb <= 1; R_tb <= 0; E_tb <= 1;
                      @(posedge clk_tb);
                       @(posedge clk_tb);
                      @(posedge clk_tb);
                      @(posedge clk_tb);
                     @(posedge clk_tb);
                      
                     #50 L_tb <= 1; R_tb <= 1; E_tb <= 0;
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                      
                      
                    #50 L_tb <= 1; R_tb <= 1; E_tb <= 1;
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                       @(posedge clk_tb);
                      
                      
                      end
                      
                      endmodule