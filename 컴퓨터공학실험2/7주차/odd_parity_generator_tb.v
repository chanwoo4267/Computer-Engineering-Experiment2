`timescale 1ns / 1ps

module inv_tb;

reg aa,bb,cc,dd;
wire pp;

inv u_inv (
.a ( aa),
.b ( bb),
.c ( cc),
.d ( dd),
.p ( pp));

initial aa = 0;
initial bb = 0;
initial cc = 0;
initial dd = 0;

always aa = #80 ~aa;
always bb = #40 ~bb;
always cc = #20 ~cc;
always dd = #10 ~dd;

initial begin
    #1000
    $finish;
end

endmodule