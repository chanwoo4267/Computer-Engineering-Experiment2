`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    output c
    );
assign c = (~a) & (~b);
endmodule
