`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2019 11:12:39 AM
// Design Name: 
// Module Name: test
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


module test;

    reg mclk;
    reg incr;
    reg rst;
    wire [7:0]   Q;
    reg [30:0]   i;
    
    counter uut(.mclk(mclk), .incr(incr), .rst(rst), .Q(Q));
    
    initial begin
    mclk = 0;
    incr =0;
    rst =1;
    i = 0;
    #10
    forever #10 mclk = ~mclk;
    end
    
    always @(posedge mclk)begin
    if (i < 5)
        i = i + 1;
    else    begin
            rst = 0;
            incr = 1;
    end
    
    end
    

endmodule
