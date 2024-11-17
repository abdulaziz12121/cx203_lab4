`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:05:59 PM
// Design Name: 
// Module Name: DLatch
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



module DLatch(
input D,clk, en,reset,
output logic Q1, Q2
    );
    
 logic S,R, clk_en;
//  wire  no_D;
  
//assign no_D=~D;


assign clk_en=(en &clk);

assign S =~(clk_en&D); 

assign R=~(clk_en&~D); 

basic_Latch BL(.R(R),.S(S),.reset(reset),.Qa(Q1),.Qb(Q2));
    

    

endmodule