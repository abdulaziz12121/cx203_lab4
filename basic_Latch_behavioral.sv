`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:26:09 PM
// Design Name: 
// Module Name: basic_Latch_behavioral
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


module basic_Latch_behavioral(
input R,input S,input reset,output reg Qa,output reg Qb);
    
    
    always@(*)begin 
    if(!reset)
    begin
    Qa=0;
    Qb=0;
    end
    else begin 
    Qa=~(R&Qb);
    Qb=~(S&Qa);
    end  
end 
endmodule
