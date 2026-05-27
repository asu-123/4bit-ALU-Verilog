`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 10:29:24
// Design Name: 
// Module Name: umulti
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


module umulti(a3,a2,b0,b1,pdt
    );
    input a3,a2,b0,b1;
    output [3:0]pdt;
    wire [16:0]z;
    wire [3:0]a,b;
    wire [7:0]p;
    
    assign a[0]=1'b1;
    assign a[1]=1'b0;
    assign a[2]=a2;
    assign a[3]=a3;
    
    assign b[0]=b0;
    assign b[1]=b1;
    assign b[2]=1'b1;
    assign b[3]=1'b0;
    
    assign pdt=p[7:4];
    
    assign p[0]=a[0]&b[0];
    fadd fa0(a[0]&b[1],b[0]&a[1],0,p[1],z[0]);
    fadd fa1(a[2]&b[0],b[1]&a[1],0,z[1],z[2]);
    fadd fa2(a[3]&b[0],b[1]&a[2],0,z[3],z[4]);
    fadd fa3(a[0]&b[2],z[1],z[0],p[2],z[5]);
    fadd fa4(a[1]&b[2],z[3],z[2],z[6],z[7]);
    fadd fa5(a[3]&b[1],b[2]&a[2],z[4],z[8],z[9]);
    fadd fa6(a[0]&b[3],z[6],z[5],p[3],z[10]);
    fadd fa7(a[1]&b[3],z[8],z[7],z[11],z[12]);
    fadd fa8(a[3]&b[2],b[3]&a[2],z[9],z[13],z[14]);
    fadd fa9(0,z[11],z[10],p[4],z[15]);
    fadd fa10(z[13],z[15],z[12],p[5],z[16]);
    fadd fa11(a[3]&b[3],z[16],z[14],p[6],p[7]);//
    
endmodule