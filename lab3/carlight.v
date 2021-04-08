`timescale 1ns / 1ps



module carlight(clk,rst,R,L,E,LED);
 
        input clk,rst;
        input R,L,E;
        output reg [5:0] LED;
        
        parameter      cl_initial=0,
                         cl_Ron1=1,
                         cl_Ron2=2,
                         cl_Ron3=3,
                         cl_Lon1=4,
                         cl_Lon2=5,
                         cl_Lon3=6,
                         cl_allon=7;
                        
            reg[2:0] cl_state, cl_nextstate;
            
            always @(posedge clk)begin
                   if(rst==1)begin //end
                   
                   //initial state
                   cl_nextstate=cl_initial;
                   end
                  
                  
                   else begin //end
                  
                   //state transitions
                   case(cl_state)// end
      
        // case 1: start from off
                  
                   cl_initial:begin
                      LED<=6'b000000;
                     if(L==0&&R==0&&E==0)                // E'L'R', back to off
                         cl_nextstate<=cl_initial;                  
                        
                       
                     else if(L==0&&R==1&&E==0)                 // E'L'R, Transist to R1
                      cl_nextstate<=cl_Ron1;
                        
                        
                      else if(L==1 && R==0 && E==0)     // E'LR'.Transist to L1
                          cl_nextstate<=cl_Lon1;
                          
                          
                            
                        else if(((~E)&L&R)|E==1)            // E'LR+E,to the emergency
                               cl_nextstate<=cl_allon;
                       
                       end//c1
                      
                        
                  
                        
                        
        //case 2  start from R1
        
                     cl_Ron1:begin    
                        LED<=6'b000100;
                       if(L==0&&R==1&&E==0) 
                       cl_nextstate<=cl_Ron2;                            // E'L'R. Transist from R1 to R2
                        
                        
                        else if(L==1 && R==0 && E==0) 
                             cl_nextstate<=cl_Lon1;                        // E'LR'. Transist from R1 to L1
                              
                        
                        else if(((~E)&L&R)|E==1)                     // E'LR+E, to the emergency
                             cl_nextstate<=cl_allon;
                            
                            
                             
                        else if(L==0&&R==0&&E==0)               // E'L'R', back to off
                      cl_nextstate<=cl_initial;
                        
                      end      //c2       
                  
                      
                      
                      
                        // case 3: start from R2
                        
                           cl_Ron2: begin
                           LED<=6'b000110;
                            if(L==0&&R==1&&E==0)
                             cl_nextstate<= cl_Ron3;                              // E'L'R. Transist from R2 to R3
                             
                        
                            else if(L==1 && R==0 && E==0)  
                          cl_nextstate<=cl_Lon1;                        // E'LR'. Transist from R2 to L1
                              
                        
                             else if(((~E)&L&R)|E==1)                    // E'LR+E, to the emergency
                              cl_nextstate<=cl_allon;
                           
                             
                        else if(L==0&&R==0&&E==0)               // E'L'R', back to off
                        cl_nextstate<=cl_initial;
                         
                     end//c3



                        // caseb 4: start from R3
                        
                         cl_Ron3: begin
                             LED<=6'b000111;
                            if(L==1 && R==0 && E==0)                                
                            cl_nextstate<=cl_Lon1;                        // E'LR'. Transist from R3 to L1
                              
                        
                             else if(((~E)&L&R)|E==1)                     // E'LR+E, to the emergency
                           cl_nextstate<=cl_allon;
                           
                             
                        else if(L==0&&R==0&&E==0)                 // E'L'R', back to off
                        cl_nextstate<=cl_initial;
                         
                     end //4




//******************************* Ends for R, start the L sequence***************************//

     // Start from L1
                     cl_Lon1:begin    
                   LED<=6'b001000;
                    if(L==1 && R==0 && E==0) 
                              cl_nextstate<=cl_Lon2;                        // E'LR'. Transist from L1 to L2
                              
                        
                        else  if(L==0&&R==1&&E==0)
                             cl_nextstate<=cl_Ron1;                              // E'L'R. Transist from L1to R1
                           
                             
                        else if(((~E)&L&R)|E==1)                     // E'LR+E, to the emergency
                              cl_nextstate<=cl_allon;
                            
                          
                             
                        else if(L==0&&R==0&&E==0)                // E'L'R', back to off
                         cl_nextstate<=cl_initial;
                         
                      end             //5
                      
      // Start from L2                     
                        cl_Lon2:begin    
                          LED<=6'b011000;
                    if(L==1 && R==0 && E==0) 
                              cl_nextstate<=cl_Lon3;                        // E'LR'. Transist from L2 to L3
                              
                              
                                   
                        else  if(L==0&&R==1&&E==0)
                              cl_nextstate<=cl_Ron1;                              // E'L'R. Transist from L2to R1
                            
                        
                        else if(((~E)&L&R)|E==1)                     // E'LR+E, to the emergency
                              cl_nextstate<=cl_allon;
                            
                            
                             
                        else if(L==0&&R==0&&E==0)                // E'L'R', back to off
                        cl_nextstate<=cl_initial;
                           
                      end          //6
                      
                         
 // Start from L3                      
                      cl_Lon3:begin    
                       LED<=6'b111000;
                       if(((~E)&L&R)|E==1)                  // E'LR+E, to the emergency
                             cl_nextstate<=cl_allon;
                       
                             
                        else  if(L==0&&R==1&&E==0)
                             cl_nextstate<=cl_Ron1;                                  // E'L'R. Transist from L3 to R1
                          
                        
                        else if(L==0&&R==0&&E==0)               // E'L'R', back to off
                         cl_nextstate<=cl_initial;
                       end    
                   



//******************************* Ends for L, start the ALL ON***************************//
                        cl_allon:begin
                        LED<=6'b111111;
                         if(L==0&&R==0&&E==0)               // E'L'R', back to off
                        cl_nextstate<=cl_initial;
                       
                       end        
              endcase //end case1
            end
             
             
                  
                end //end always
                endmodule
