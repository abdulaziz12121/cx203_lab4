`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:43:41 PM
// Design Name: 
// Module Name: D_Latch
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

module D_Latch(
    input D,         
    input clk,       
    input en,       
    input reset,     
    output logic Q1, 
    output logic Q2  
);

    always @(*) begin
        if (!reset) begin
            
            Q1 = 0;
            Q2 = 1;
        end else if (en && clk) begin
            Q1 = D;
            Q2 = ~D;
        end
    end

endmodule
