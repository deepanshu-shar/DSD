`timescale 1ns / 1ps
module tb_not_gate;
    reg a;
    wire y;

    not_gate uut(a, y);

    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, tb_not_gate);
        $display("A | Y");
        $display("-----");

        a=0; #10; $display("%b | %b", a, y);
        a=1; #10; $display("%b | %b", a, y);
        $finish;
    end
endmodule
