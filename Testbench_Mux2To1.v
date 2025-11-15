`timescale 1ns / 1ps
module tb_mux2to1;
    reg A, B, S;
    wire Y;

    mux2to1 uut (.A(A), .B(B), .S(S), .Y(Y));

    initial begin
        $dumpfile("mux2to1.vcd");
        $dumpvars(0, tb_mux2to1);

        $display("A B S | Y");
        $display("---------");

        A=0; B=0; S=0; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=0; B=1; S=0; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=1; B=0; S=0; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=1; B=1; S=0; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=0; B=0; S=1; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=0; B=1; S=1; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=1; B=0; S=1; #10; $display("%b %b %b | %b", A, B, S, Y);
        A=1; B=1; S=1; #10; $display("%b %b %b | %b", A, B, S, Y);

        $finish;
    end
endmodule
