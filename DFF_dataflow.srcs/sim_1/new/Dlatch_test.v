`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 11:14:32 AM
// Design Name: 
// Module Name: JKFF
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


module Dlatch_test;

        reg j;
        reg k;
        reg clk;
        
        wire q;
        
        integer idx;
        
        wire [11:0] jvals = 8'b0110_1010;
        wire [11:0] kvals = 8'b0111_0001;
        
        JKFF uut (
                .clk(clk),
                .j(j),
                .k(k),
                .q(q)
         );
         
         initial begin
         
                j = 0;
                k = 1;
                idx = 0;
                clk = 1;
                
                forever #10 clk=~clk;
         end
         
         always @(posedge clk) begin
                idx = (idx + 1) % 8;
                
                j = jvals[idx];
                k = kvals[idx];
         end


endmodule
