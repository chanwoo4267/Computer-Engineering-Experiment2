`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    input c,
    input d,
    output w,
    output x,
    output y,
    output z
    );
assign w = (b & d) | (b & c) | a;
assign x = (b & (~d)) | (b & c) | a;
assign y = ((~b) & c) | (b & (~c) & d) | a;
assign z = d;
endmodule
