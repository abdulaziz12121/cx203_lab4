`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:38:12 PM
// Design Name: 
// Module Name: ff_ts
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


module ff_ts;
logic reset,clk,en,D,Q1,Q2 ; 

D_flip_2 df2(D,clk,en,reset, Q1,Q2);

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    
 
initial begin 
en =1; reset=0 ; D =1; 
#5
en =1; reset=0 ; D =0; 
#5
en =0; reset=0 ; D =1;
#5
en =0; reset=1 ; D =0;  
#5
en =1; reset=0 ; D =1;
#5
en =1; reset=0 ; D =1;
#5
en =1; reset=0 ; D =0;



end    
    

    
endmodule
