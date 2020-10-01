`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aaron Mendoza
// 
// Create Date: 10/01/2020 11:46:28 AM
// Design Name: 
// Module Name: mux2_4b_test
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


module mux2_4b_test();
    reg [3:0] in0;
    reg [3:0] in1;
    reg sel;
    wire [3:0] out;
    
mux2_4b dut(
    .in0(in0),
    .in1(in1),
    .sel(sel),
    .out(out)
    );
    
initial begin
in0=4'b0001;in1=4'b0000;sel=0;#10;
in0=4'b0001;in1=4'b0000;sel=1;#10;
in0=4'b1010;in1=4'b0101;sel=0;#10;
in0=4'b1010;in1=4'b0101;sel=1;#10;
$finish;
end

endmodule
