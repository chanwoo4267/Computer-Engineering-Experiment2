`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    input c,
    input d,
    output abigger,
    output asmaller,
    output same
    );
assign abigger = (b & (~c) & (~d)) | (a & (~c)) | (a & b & (~d));
assign asmaller = ((~a) & (~b) & d) | ((~b) & c & d) | ((~a) & c);
assign same = (b ^~ d) & (a ^~ c);
endmodule
