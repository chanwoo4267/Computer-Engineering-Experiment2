`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    input c,
    output d
    );
assign d = a | b | c;
endmodule
