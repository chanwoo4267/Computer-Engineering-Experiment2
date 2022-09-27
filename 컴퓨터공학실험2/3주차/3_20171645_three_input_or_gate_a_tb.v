`timescale 1ns / 1ps

module inv;

reg y,clk_a,clk_b,clk_c,clk;

initial begin
    clk_a=0;
    clk_b=0;
    clk_c=0;
    y=0;
    clk=0;
end

always clk_a = #5 ~clk_a;
always clk_b = #10 ~clk_b;
always clk_c = #20 ~clk_c;
always clk = #1 ~clk;

always @(posedge clk)begin
    y = clk_a | clk_b | clk_c;
end

endmodule