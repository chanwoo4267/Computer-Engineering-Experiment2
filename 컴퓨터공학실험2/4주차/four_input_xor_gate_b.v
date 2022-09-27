`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
    );
assign e = a^b;
assign f = e^c;
assign g = f^d;
endmodule
