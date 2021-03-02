`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 09:02:17 AM
// Design Name: 
// Module Name: rotateLED
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


module rotateLED(
output [7:0]    Q,
input [7:0]     D0,
input           rst,
input           shift,
input           mclk

    );
    
    wire clk;
    ClockDivider(mclk, clk);
    
    genvar i;
    
    generate begin
    for (i = 0; i < 8; i = i + 1) begin
        if (i == 0)
        Dregister D1(.clk(clk), .shift(shift), .rst(rst), .D0(D0[0]), .d(Q[7]), .q(Q[i]));
        else
        Dregister D2(.clk(clk), .shift(shift), .rst(rst), .D0(D0[i]), .d(Q[i-1]), .q(Q[i]));
        end
        end
    endgenerate
endmodule
