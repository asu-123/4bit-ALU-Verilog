`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 12:01:02
// Design Name: 
// Module Name: fulladdar
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


module fulladdar(
    input  [3:0] A,
    input  [3:0] B,
    output [4:0] SUM
);

assign SUM = A + B;

endmodule
