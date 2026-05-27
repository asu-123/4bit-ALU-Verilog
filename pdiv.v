`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 23:12:32
// Design Name: 
// Module Name: pdiv
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


module pdiv(a,b,q,r
    );
    input [3:0]a,b;
    output reg [3:0]q,r;
    
    wire [25:0]w;
    wire [3:0]temp_div,temp_rem;
    
    
    assign w[0]=~b[1]&~b[2]&~b[3];
    assign w[1]=a[3]&~b[0];
    assign w[2]=w[0];
    assign w[3]=(w[0])?w[1]:a[3];
    
    assign w[18]=b[2]|b[3]|w[15];
    assign w[19]=b[3]|w[16];
    assign w[20]=b[0]|b[1];
    assign w[21]=b[2]|w[20];
    assign w[22]=b[3]|w[21];
    
    assign temp_div[3]=w[2]&a[3]&b[0];
    assign temp_div[2]=w[20]&~w[18];
    assign temp_div[1]=w[21]&~w[19];
    assign temp_div[0]=w[22]&~w[17];
    
    sb sb0(a[2],b[0],0,w[18],w[5],w[9]);
    sb sb1(w[3],b[1],w[9],w[18],w[4],w[15]);
    sb sb2(a[1],b[0],0,w[19],w[8],w[10]);
    sb sb3(w[5],b[1],w[10],w[19],w[7],w[11]);
    sb sb4(w[4],b[2],w[11],w[19],w[6],w[16]);
    sb sb5(a[0],b[0],0,w[17],temp_rem[0],w[12]);
    sb sb6(w[8],b[1],w[12],w[17],temp_rem[1],w[13]);
    sb sb7(w[7],b[2],w[13],w[17],temp_rem[2],w[14]);
    sb sb8(w[6],b[3],w[14],w[17],temp_rem[3],w[17]);
    
    always @(*)begin
    	if(b==4'b0000)begin
    		q=4'bXXXX;
    		r=4'b0000;
    	end
    	else begin
    		q=temp_div;
    		r=temp_rem;
    	end
    end    

    		
    
    
endmodule
