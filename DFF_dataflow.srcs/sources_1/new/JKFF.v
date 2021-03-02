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


module JKFFbroken(

  input  j,
  input  k,
  output q,
  input  clk
  );

    wire d;

    assign d = ~j&~k&q | j&~k | j&k&~q;

    DFF JKFF(.d(d),.q(q),.clk(clk));

endmodule
