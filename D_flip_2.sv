`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:57:57 PM
// Design Name: 
// Module Name: D_flip_2
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


module D_flip_2(
input D,clk,en,reset,output Q1,Q2
    );
logic q1,q2;

DLatch DL1(.D(D),.clk(clk),.en(en),.reset(reset),.Q1(q1),.Q2(q2));

DLatch DL2(.D(q1),.clk(~clk),.en(en),.reset(reset),.Q1(Q1),.Q2(Q2));

endmodule