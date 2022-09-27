`timescale 1ns / 1ps


module inv(
    input a,
    input b,
    input u,
    output d,
    output B
    );
assign B = (a&b) | ((a^b) & u);
assign d = (a ^ b) ^ u;
endmodule
