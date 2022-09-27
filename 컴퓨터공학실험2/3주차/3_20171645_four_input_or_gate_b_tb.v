`timescale 1ns / 1ps

module inv;

reg y,clk_a,clk_b,clk_c,clk_d,clk,temp1,temp2;

initial begin
    clk_a=0;
    clk_b=0;
    clk_c=0;
    clk_d=0;
    y=0;
    clk=0;
    temp1=0;
    temp2=0;
end

always clk_a = #5 ~clk_a;
always clk_b = #10 ~clk_b;
always clk_c = #20 ~clk_c;
always clk_d = #40 ~clk_d;
always clk = #1 ~clk;

always @(posedge clk)begin
    temp1 = clk_a | clk_b;
    temp2 = temp1 | clk_c;
    y = temp2 | clk_d;
end

endmodule