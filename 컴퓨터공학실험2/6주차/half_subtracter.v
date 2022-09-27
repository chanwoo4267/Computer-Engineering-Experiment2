`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    output d,
    output B
    );
assign B = (~a) & b;
assign d = a ^ b;
endmodule
