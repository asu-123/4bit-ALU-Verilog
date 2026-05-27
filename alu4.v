`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 11:32:40
// Design Name: 
// Module Name: alu4
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


module alu4(a,b,mode,result,remainder
    );
    input [3:0]a,b;
    input [1:0]mode;
    output reg [7:0]result;
    output reg [3:0]remainder;
    
    wire [4:0]sum,sub;
    wire [7:0]mo;
    wire [3:0]do,r;
    
    fulladdar fa1(a,b,sum);
    fullsub fs1(a,b,sub);
    umulti um1(a,b,mo);
    pdiv pd1(a,b,do,r);
    
    always@(*)begin
    	case(mode)
    		2'b00:begin
    			result={3'b000,sum};
    			remainder=4'b0000;
    		end
    		2'b01:begin
    			result={3'b000,sub};
    			remainder=4'b0000;
    		end
    		2'b10:begin
    			result=mo;
    			remainder=4'b0000;
    		end
    		2'b11:begin
    			result=do;
    			remainder=r;
    		end
    		default:begin
    			result<=4'd0;
    			remainder<=4'd0;
    		end
    		
    		
    	endcase
    end
    		
    
    
endmodule
