`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:11:39 PM
// Design Name: 
// Module Name: fourbitff
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


module fourbitff_ts;
logic reset,clk,en ; 
logic [3:0]D,Q;

Register df2(clk,en,reset,D, Q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    
 
initial begin 
#5
en =1; reset=0 ; D =4'h5 ; 
#5
en =1; reset=0 ; D =4'h0 ; 
#5
en =1; reset=0 ; D =4'h2 ;
#5
en =1; reset=0 ; D =4'h6 ;
#5
en =0; reset=0 ; D =4'h3 ;  
#5
en =0; reset=0 ; D =4'h4 ;
#5
en =1; reset=1 ; D =4'h7 ;
#5
en =1; reset=0 ; D =4'h8 ;
#5
en =1; reset=0 ; D =4'h2 ;

end    
    

    

    
endmodule
