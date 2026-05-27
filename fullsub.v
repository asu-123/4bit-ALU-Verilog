`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 12:28:56
// Design Name: 
// Module Name: fullsub
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

module fullsub(
    input  [3:0] A,
    input  [3:0] B,
    output [4:0] DIFF
);

assign DIFF = A - B;

endmodule
