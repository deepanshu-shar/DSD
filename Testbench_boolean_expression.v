`timescale 1ns / 1ps
module tb_boolean_expr;
    reg A, B, C;
    wire Y;

    // Instantiate design under test
    boolean_expr uut (.A(A), .B(B), .C(C), .Y(Y));

    initial begin
        $dumpfile("boolean_expr.vcd");
        $dumpvars(0, tb_boolean_expr);

        $display("A B C | Y");
        $display("---------");

        A=0; B=0; C=0; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=0; B=0; C=1; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=0; B=1; C=0; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=0; B=1; C=1; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=1; B=0; C=0; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=1; B=0; C=1; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=1; B=1; C=0; #10; $display("%b %b %b | %b", A, B, C, Y);
        A=1; B=1; C=1; #10; $display("%b %b %b | %b", A, B, C, Y);

        $finish;
    end
endmodule
