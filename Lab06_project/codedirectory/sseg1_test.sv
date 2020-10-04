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
    wire[6:0] sseg;
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
    A[3:0]=4'b0000; B[3:0]=4'b0000; sel=1'b0; #10;
    A[3:0]=4'b1010; B[3:0]=4'b0101; #10;
    sel=1'b0; #10;
    sel=1'b1; #10;
    A[3:0]=4'b0000; B[3:0]=4'b0000; sel=1'b0; #10;
    A[3:0]=4'b1001; B[3:0]=4'b0111; #10;
    sel=1'b0; #10;
    sel=1'b1; #10;
    $finish;
    end
endmodule
