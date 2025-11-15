`timescale 1ns/1ps

module tb;
reg a, b, c, d;
reg [1:0] sel;
wire y;

mux4x1 uut(sel, a, b, c, d, y);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    a = 0; b = 1; c = 0; d = 1;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    sel = 2'b00; #10;

    $finish;
end
endmodule
