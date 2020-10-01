`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 12:23:41 PM
// Design Name: 
// Module Name: sseg1
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


module sseg1(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [1:0] seg_un,
    output dp,
    output[4:0] sseg,
    output seg_L,
    output seg_R
    );
    wire[3:0] num;
    
mux2_4b mux0(
    .in0(A),
    .in1(B),
    .sel(sel),
    .out(num)
    );
    
sseg_decoder sseg0(
    .num(num),
    .sseg(sseg)
    );
    
assign sel_L=~sel;
assign sel_R=sel;
assign seg_un[3:2] = 2'b11;
assign dp = 1;

endmodule
