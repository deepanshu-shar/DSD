`timescale 1ns/1ps

module tb;
reg clk, rst;
wire [3:0] q;

counter uut(clk, rst, q);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    rst = 1; #12;
    rst = 0;

    #200;
    $finish;
end
endmodule
