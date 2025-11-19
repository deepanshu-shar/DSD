`timescale 1ns/1ps

module boolean_expr_tb;

  reg A, B, C;
  wire Y;

  boolean_expr dut (
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
  );

  initial begin
    $display("A B C | Y");
    $display("-------------");

    A=0; B=0; C=0; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=0; B=0; C=1; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=0; B=1; C=0; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=0; B=1; C=1; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=1; B=0; C=0; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=1; B=0; C=1; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=1; B=1; C=0; #10; $display("%b %b %b | %b", A,B,C,Y);
    A=1; B=1; C=1; #10; $display("%b %b %b | %b", A,B,C,Y);

    $finish;
  end

endmodule
