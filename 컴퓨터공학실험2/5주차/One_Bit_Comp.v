`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    output alarger,
    output alesser,
    output notequal,
    output equal
    );
assign equal = ~(a ^ b);
assign notequal = a ^ b;
assign alarger = a & (~b);
assign alesser = (~a) & b;
endmodule
