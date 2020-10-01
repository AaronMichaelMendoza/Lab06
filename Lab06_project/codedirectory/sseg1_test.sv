`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 12:34:24 PM
// Design Name: 
// Module Name: sseg1_test
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


module sseg1_test();

    reg [3:0] A;
    reg [3:0] B;
    reg sel;
    wire [1:0] seg_un;
    wire dp;
    wire [4:0] sseg;
    wire seg_L;
    wire seg_R;
    
    sseg1 dut(
        .A(A),
        .B(B),
        .sel(sel),
        .seg_un(seg_un),
        .dp(dp),
        .sseg(sseg),
        .seg_L(seg_L),
        .seg_R(seg_R)
        );
        
    initial begin
endmodule
