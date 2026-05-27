`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 12:32:36
// Design Name: 
// Module Name: alu4_tb
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


module alu4_tb(
    );
    reg [3:0]a,b;
    reg [1:0]mode;
    wire [7:0]result;
    wire [3:0]remainder;
    
    alu4 dut(.a(a),.b(b),.mode(mode),.result(result),.remainder(remainder));
    
    initial begin

    	a=4'b1100;
    	b=4'b0011;
    	mode=2'b00;
    	#10;
    	a=4'b0011;
    	b=4'b0100;
    	mode=2'b01;
    	#10;
    	a=4'b1111;
    	b=4'b1111;
    	mode=2'b10;
    	#10;
    	a=4'b1100;
    	b=4'b0000;
    	mode=2'b11;
    	#10;
    	$finish;
    end
endmodule
