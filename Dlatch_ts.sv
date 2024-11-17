`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:40:33 PM
// Design Name: 
// Module Name: Dlatch_ts
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


module Dlatch_ts;

logic reset,clk,en,D,Q1,Q2 ; 

DLatch dl(D,clk,en,reset, Q1,Q2);


initial begin 
en =1; reset=0 ; D =1; clk=0;
#5
en =1; reset=0 ; D =0; clk=0;
#5
en =0; reset=0 ; D =1;clk=~clk ; 
#5
en =0; reset=1 ; D =0; clk=~clk ; 
#5
en =1; reset=0 ; D =1;clk=~clk ;
#5
en =1; reset=0 ; D =1;clk=~clk ;
#5
en =1; reset=0 ; D =0;clk=~clk ;



end    
    
endmodule