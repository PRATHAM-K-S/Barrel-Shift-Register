`include "mux_4_1.v"

module barrel_shit_reg(
    input [3:0] in,
    input [1:0] sel,
    output [3:0] out
    );
    mux_4_1 m1({in[3],in[0],in[1],in[2]},sel,out[3]);
    mux_4_1 m2({in[2],in[3],in[0],in[1]},sel,out[2]);
    mux_4_1 m3({in[1],in[2],in[3],in[0]},sel,out[1]);
    mux_4_1 m4({in[0],in[1],in[2],in[3]},sel,out[0]);
endmodule