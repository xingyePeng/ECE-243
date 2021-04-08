`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/19 12:20:35
// Design Name: 
// Module Name: HLSM
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


module HLSM(Clk,Rst,go,count,done);
    input Clk,Rst,go;
    output reg [4:0] count;
    output reg done;
    
    // to implement state
    reg [3:0] state,statenext;
    parameter SA=1,SB=2,SC=3,SD=4,SE=5,SF=6,SG=7,SH=8;
    
    //local storage
    reg [7:0] temp;
    reg [4:0] i;
    
    //register file
    reg R_en, W_en;
    reg [3:0] R_Addr, W_Addr;
    wire [7:0] R_Data;
    reg [7:0] W_Data;
  (* mark_debug = "true" *)   wire [7:0] debug_Reg0;
  (* mark_debug = "true" *)    wire [7:0] debug_Reg1;
  (* mark_debug = "true" *)   wire [7:0] debug_Reg2;
  (* mark_debug = "true" *)   wire [7:0] debug_Reg3;
  (* mark_debug = "true" *)   wire [7:0] debug_Reg4;
  (* mark_debug = "true" *)   wire [7:0] debug_Reg5;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg6;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg7;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg8;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg9;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg10;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg11;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg12;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg13;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg14;
  (* mark_debug = "true" *)  wire [7:0] debug_Reg15;
    //module RegFile16x8(R_Addr, W_Addr, R_en, W_en, R_Data, W_Data, Clk, Rst);
     RegFile16x8 a1(R_Addr, W_Addr, R_en, W_en, R_Data, W_Data, Clk, Rst, debug_Reg0,debug_Reg1,debug_Reg2, debug_Reg3,debug_Reg4, debug_Reg5, debug_Reg6, debug_Reg7,debug_Reg8,debug_Reg9, debug_Reg10,debug_Reg11, debug_Reg12, debug_Reg13,debug_Reg14, debug_Reg15);
  
    
 always @(state, i, R_Data) begin
            R_Addr <= 0;
            W_Addr <= 0;
            W_Data <= 0;
            if(state==SD) begin
                R_Addr<=i[3:0];
            end
            else if (state==SF)begin
                 W_Addr<=i[3:0];
                 W_Data<=temp-48;
            end
          end
           
              
           //always @(state,go,i,a_i,temp)begin
           always @ (posedge Clk)
           begin
                if(Rst==1) begin
                   state<=SA;
                end
                else begin
                   state<=statenext;
                end
                
               case(state)
                   SB:begin
                      i<=0;
                      count<=0;
                   end
                   SD:begin
                      temp<=R_Data;
                   end
                   SF:begin
                      count<=count+1;
                    
                   end
                   SG:begin
                      i<=i+1;
                   end
                 endcase
                  
        end
        
              always @ (*)begin
                   R_en<=0;
                   W_en<=0;
                   done<=0;
                   case(state)
                   SA:begin
                      if(go==1) statenext<=SB;
                      else statenext<=SA;
                   end
                   SB:begin
                      statenext<=SC;
                   end
                   SC: begin
                      if(i<16)
                        statenext<=SD;
                      else
                        statenext<=SH;
                    end
                    SD:begin
                       R_en<=1;
                       statenext<=SE;
                    end
                    SE:begin
                       if((temp>47)&&(temp<58))
                       statenext<=SF;
                       else
                       statenext<=SG;
                    end
                    SF: begin
                        W_en<=1;
                        statenext<=SG;
                    end
                    SG:begin
                         statenext<=SC;
                    end
                    SH:begin
                         done<=1;
                         statenext<=SA;
                     end
                   endcase
              end
                   
                   
endmodule
