`timescale 1ns / 1ps

module Controller (Clk, Rst, go, temp1_gt_temp2, i_lt_32, done, muxsel, R_en,
                  i_clr, i_ld, temp1_clr, temp1_ld, temp2_clr, temp2_ld, sum_clr, sum_ld);
    input Clk, Rst, go;
    input temp1_gt_temp2, i_lt_32;
    output reg muxsel, R_en, done;
    output reg i_clr, i_ld, temp1_clr, temp1_ld, temp2_clr, temp2_ld, sum_clr, sum_ld;
    
    //declare state and statenext with correct number of bits
    reg [3:0] state, statenext;
    parameter SA=0, SB=1, SC=2, SD=3, SE=4, SF=5, SG=6, SH=7, SI=8, SJ=9;
    //encode state here. Use 0,1,2, ... ,10 for SA, SB, ..., SJ  
            
       always @ (posedge Clk)
       begin
          if(Rst == 1) begin
                state <= SA;
          end
          else begin
                state <= statenext;
          end
       end
            
        always @ (*) begin  //* used for any input changes in this block
            muxsel   <= 0; R_en <= 0; done <= 0;
            i_clr <= 0; i_ld <= 0; 
            temp1_clr <= 0; temp1_ld <= 0; 
            temp2_clr <= 0; temp2_ld <= 0;
            sum_clr <= 0; sum_ld <= 0;
           //with the above, you can now write the signal 
           //only in the state(s) that you want to set it to 1
            case(state)
                SA:begin
                    if(go==1)
                        statenext<=SB;
                    else
                        statenext<=SA;
                end
                SB:begin
                    i_clr<=1;
                    temp1_clr<=1;
                    temp2_clr<=1;
                    sum_clr<=1;
                    statenext<=SC;
                end
                SC:begin
                    if(i_lt_32==1)
                        statenext<=SD;
                    else
                        statenext<=SJ;
                end
                SD:begin
                    R_en<=1;
                    temp1_ld<=1;
                    i_ld<=1;
                    statenext<=SE;
                end
                SE:begin
                    R_en<=1;
                    temp2_ld<=1;
                    statenext<=SF;
                end
                SF:begin
                    if(temp1_gt_temp2==1)
                        statenext<=SG;
                    else
                        statenext<=SH;
                end
                SG:begin
                    sum_ld<=1;
                    muxsel<=1;
                    statenext<=SI;
                end
                SH:begin
                    sum_ld<=1;
                    muxsel<=0;
                    statenext<=SI;
                end
                SI:begin
                    i_ld<=1; 
                    statenext<=SC;
                end
                SJ:begin
                    done<=1;
                    statenext <= SA; 
                end
               default: begin
                    statenext <= SA;
               end                                                                  
         endcase
      end
    
endmodule
