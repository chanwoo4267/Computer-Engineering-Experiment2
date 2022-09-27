`timescale 1ns / 1ps

module inv_tb;

reg aa,bb,cc;
wire dd;

inv u_inv (
.a ( aa),
.b ( bb),
.c ( cc),
.d ( dd));

initial aa = 0;
initial bb = 0;
initial cc = 0;

always aa = #10 ~aa;
always bb = #20 ~bb;
always cc = #40 ~cc;

initial begin
    #1000
    $finish;
end

endmodule