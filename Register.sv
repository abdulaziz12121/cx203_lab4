`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:24:35 PM
// Design Name: 
// Module Name: Register
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

module Register(input clk,en,reset,
input [3:0]D,  
output [3:0]Q);

//logic [3:0]D,Q;
D_flip_2 D0(D[0],clk,en,reset,Q[0]);
D_flip_2 D1(D[1],clk,en,reset,Q[1]);
D_flip_2 D2(D[2],clk,en,reset,Q[2]);
D_flip_2 D3(D[3],clk,en,reset,Q[3]);

endmodule
