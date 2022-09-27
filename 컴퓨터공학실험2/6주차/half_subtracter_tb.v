`timescale 1ns / 1ps

module inv_tb;

reg aa,bb;
wire dd, BB;

inv u_inv (
.a ( aa),
.b ( bb),
.d ( dd),
.B ( BB));

initial aa = 0;
initial bb = 0;

always aa = #10 ~aa;
always bb = #20 ~bb;

initial begin
    #1000
    $finish;
end

endmodule