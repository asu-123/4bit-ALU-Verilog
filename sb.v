`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 23:17:29
// Design Name: 
// Module Name: sb
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


module sb (
    input  a,
    input  b,
    input  bin,
    input ctrl,
    output op,
    output bout
);

    wire sub;
    assign sub = a ^ b ^ bin;
    assign bout = (~a & b) | (~a & bin) | (b & bin);
    
    assign op=(ctrl)?a:sub;

endmodule

