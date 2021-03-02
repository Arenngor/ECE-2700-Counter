`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 08:57:08 AM
// Design Name: 
// Module Name: Dregister
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


module Dregister(
output          q,
input           D0,
input           d,
input           rst,
input           shift,
input           clk

    );
    wire a, b, c;
    
    assign a = D0 & rst;
    assign b = ~rst & shift & d;
    assign c = ~shift & ~rst & q;
    
        DFF dff(.d(a|b|c),.q(q),.clk(clk));
        
endmodule
