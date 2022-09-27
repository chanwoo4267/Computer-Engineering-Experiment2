`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    output s,
    output c
    );
assign c = a & b;
assign s = a ^ b;
endmodule
