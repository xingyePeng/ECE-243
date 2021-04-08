`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 08:17:35 AM
// Design Name: 
// Module Name: tailLights
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


module VendingMachine(Clk, Rst, Number, C, N, D, Q);
    input Clk, Rst, N, D, Q;
    output reg [5:0] Number, C;
    parameter S_0=0, S_5=1, S_10=2,  S_15=3,  S_20=4, S_25=5, S_30=6, S_35=7, S_40=8, S_45=9, S_50=10;
    reg [3:0] State, StateNext;
    always @ (State, N, D, Q) begin
        case (State)
            S_0: begin
                Number <= 6'd0;
                C<=1'b0;
                if (N == 1 && D == 0 && Q == 0) 
                    StateNext <= S_5;
                else if (N == 0 && D == 1 && Q == 0) 
                    StateNext <= S_10;
                else if (N == 0 && D == 0 && Q == 1) 
                    StateNext <= S_25;
                else
                    StateNext <= S_0;
            end
            S_5: begin
                Number<=6'b000101;
                C<=0;
                if (N == 1 && D == 0 && Q == 0) 
                    StateNext <= S_10;
                else if (N == 0 && D == 1 && Q == 0) 
                    StateNext <= S_15;
                else if (N == 0 && D == 0 && Q == 1) 
                    StateNext <= S_30;
                else
                    StateNext <= S_5;
            end     
            S_10:
            begin
                Number<=6'b001010;
                C<=0;
                if (N == 1 && D == 0 && Q == 0) 
                    StateNext <= S_15;
                else if (N == 0 && D == 1 && Q == 0) 
                    StateNext <= S_20;
                else if (N == 0 && D == 0 && Q == 1) 
                    StateNext <= S_35;
                else
                    StateNext <= S_10;
            end
            S_15:
            begin
                Number<=6'b001111;
                C<=0;
                if (N == 1 && D == 0 && Q == 0) 
                    StateNext <= S_20;
                else if (N == 0 && D == 1 && Q == 0) 
                    StateNext <= S_25;
                else if (N == 0 && D == 0 && Q == 1) 
                    StateNext <= S_40;
                else
                    StateNext <= S_15;
            end
            S_20:
            begin
                Number<=6'b010100;
                C<=0;
                if (N == 1 && D == 0 && Q == 0) 
                    StateNext <= S_25;
                else if (N == 0 && D == 1 && Q == 0) 
                    StateNext <= S_30;
                else if (N == 0 && D == 0 && Q == 1) 
                    StateNext <= S_45;
                else
                    StateNext <= S_20;
            end
            S_25:
            begin
                Number<=6'b011001;
                C<=0;
                if (N == 1 && D == 0 && Q == 0) 
                    StateNext <= S_25;
                else if (N == 0 && D == 1 && Q == 0) 
                    StateNext <= S_35;
                else if (N == 0 && D == 0 && Q == 1) 
                    StateNext <= S_50;
                else
                    StateNext <= S_25;
            end
            S_30:
            begin
                Number<=6'b000000;
                C<=1;
                StateNext<=S_30;
            end
            S_35:
            begin
                Number<=6'b000101;
                C<=1;
                StateNext<=S_35;
            end
            S_40:
            begin
                Number<=6'b001010;
                C<=1;
                StateNext<=S_40;
            end
            S_45:
            begin
                Number<=6'b001111;
                C<=1;
                StateNext<=S_45;
            end
            S_50:
            begin
                Number<=6'b010100;
                C<=1;
                StateNext<=S_50;
            end     
        endcase
    end
    always @ (posedge Clk)
    begin   
        if(Rst==1)
            State<=S_0;
        else
            State<=StateNext;
    end
        
endmodule
