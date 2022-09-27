`timescale 1ns / 1ps

module inv;

reg y,clk_a,clk_b,clk_c,temp;

initial begin
    clk_a=0;
    clk_b=0;
    clk_c=0;
    y=clk_a&clk_b&clk_c;
    temp=0;
end

always clk_a = #5 ~clk_a;
always clk_b = #10 ~clk_b;
always clk_c = #20 ~clk_c;

always @(posedge clk_a)begin
    temp=clk_a & clk_b;
    y=temp & clk_c;
end

endmodule