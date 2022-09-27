`timescale 1ns / 1ps

module inv;

reg y,clk_a,clk_b,clk_c,clk_d;

initial begin
    clk_a=0;
    clk_b=0;
    clk_c=0;
    clk_d=0;
    y=clk_a&clk_b&clk_c&clk_d;
end

always clk_a = #5 ~clk_a;
always clk_b = #10 ~clk_b;
always clk_c = #20 ~clk_c;
always clk_d = #40 ~clk_d;

always @(posedge clk_a)begin
    y=clk_a&clk_b&clk_c&clk_d;
end

endmodule