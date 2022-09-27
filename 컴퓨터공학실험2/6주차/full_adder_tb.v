`timescale 1ns / 1ps

module inv_tb;

reg aa,bb,uu;
wire dd, BB;

inv u_inv (
.a ( aa),
.b ( bb),
.u ( uu),
.d ( dd),
.B ( BB));

initial aa = 0;
initial bb = 0;
initial uu = 0;

always aa = #10 ~aa;
always bb = #20 ~bb;
always uu = #40 ~uu;

initial begin
    #1000
    $finish;
end

endmodule