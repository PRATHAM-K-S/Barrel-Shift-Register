`timescale 1ns/1ps
`include "barrel_shift_reg.v"

module test;
reg [3:0] in;
reg [1:0] sel;
wire [3:0] out;
barrel_shit_reg dut(in,sel,out);
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);
    in = 4'b1110;
    sel = 2'b00;#10 
    sel = 2'b01;#10
    sel = 2'b10;#10
    sel = 2'b11;#10
    $finish;
end
endmodule