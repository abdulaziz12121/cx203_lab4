`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:05:32 PM
// Design Name: 
// Module Name: basic_Latch
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

module basic_Latch(
input R,input S,input reset,output Qa,output Qb
    );
    logic no_re,w1;

    assign no_re=~reset;
    
    assign w1=~(S&Qb);
    
    assign Qb=~(R&Qa);
    
    assign Qa=(no_re&w1);
    //assign Qa=(Qa&no_re);

endmodule
