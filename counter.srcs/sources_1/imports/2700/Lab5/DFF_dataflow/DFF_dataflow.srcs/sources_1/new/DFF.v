`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 10:46:26 AM
// Design Name: 
// Module Name: DFF_dataflow
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


module DFF(
    input d,
    output q,
    input clk
    );
    
        wire q1;
        wire clkb = ~clk;
        
        dlatch d1(.d(d),.q(q1),.clk(clk));
        dlatch d2(.d(q1),.q(q),.clk(clkb));
    
endmodule
