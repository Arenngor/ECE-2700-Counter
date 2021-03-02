`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2019 10:24:32 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input mclk,
    input incr,
    input rst,
    output [7:0] Q
    );
    
        ClockDivider CLK1(mclk, clk);
           wire [7:0] j;
           wire [7:0] k;
           wire clk;
           wire x = (incr | rst) & mclk;
           
            
           assign j[0] = ~rst & incr;
           assign k[0] = rst | j[0];
           JKFF F0(.clk(clk), .j(j[0]), .k(k[0]), .q(Q[0]));
         
           assign j[1] = ~rst & Q[0] & j[0];
           assign k[1] = rst | j[1];
           JKFF F1(.clk(clk), .j(j[1]), .k(k[1]), .q(Q[1]));
           
           assign j[2] = ~rst & Q[1] & j[1];
           assign k[2] = rst | j[2];
           JKFF F2(.clk(clk), .j(j[2]), .k(k[2]), .q(Q[2]));
           
           assign j[3] = ~rst & Q[2] & j[2];
           assign k[3] = rst | j[3];
           JKFF F3(.clk(clk), .j(j[3]), .k(k[3]), .q(Q[3]));
           
           assign j[4] = ~rst & Q[3] & j[3];
           assign k[4] = rst | j[4];
           JKFF F4(.clk(clk), .j(j[4]), .k(k[4]), .q(Q[4]));
           
           assign j[5] = ~rst & Q[4] & j[4];
           assign k[5] = rst | j[5];
           JKFF F5(.clk(clk), .j(j[5]), .k(k[5]), .q(Q[5]));
           
           assign j[6] = ~rst & Q[5] & j[5];
           assign k[6] = rst | j[6];
           JKFF F6(.clk(clk), .j(j[6]), .k(k[6]), .q(Q[6]));
           
           assign j[7] = ~rst & Q[6] & j[6];
           assign k[7] = rst | j[7];
           JKFF F7(.clk(clk), .j(j[7]), .k(k[7]), .q(Q[7]));
           

endmodule
