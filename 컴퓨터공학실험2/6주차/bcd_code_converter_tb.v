`timescale 1ns / 1ps

module inv_tb;

reg aa,bb,cc,dd;
wire ww,xx,yy,zz;

inv u_inv (
.a ( aa),
.b ( bb),
.c ( cc),
.d ( dd),
.w ( ww),
.x ( xx),
.y ( yy),
.z ( zz));

initial aa = 0;
initial bb = 0;
initial cc = 0;
initial dd = 0;

always aa = #10 ~aa;
always bb = #20 ~bb;
always cc = #40 ~cc;
always dd = #80 ~dd;

initial begin
    #1000
    $finish;
end

endmodule