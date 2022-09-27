`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    input c,
    input d,
    output e
    );
assign e = a | b | c | d;
endmodule
