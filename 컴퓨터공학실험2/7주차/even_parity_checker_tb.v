`timescale 1ns / 1ps

module inv_tb;

reg aa,bb,cc,dd,pp;
wire ppec;

inv u_inv (
.a ( aa),
.b ( bb),
.c ( cc),
.d ( dd),
.p ( pp),
.pec ( ppec));

initial aa = 0;
initial bb = 0;
initial cc = 0;
initial dd = 0;
initial pp = 0;

always aa = #80 ~aa;
always bb = #40 ~bb;
always cc = #20 ~cc;
always dd = #10 ~dd;
always pp = #5 ~pp;

initial begin
    #1000
    $finish;
end

endmodule