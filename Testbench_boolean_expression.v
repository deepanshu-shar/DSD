`timescale 1ns/1ps

module boolean_expr_tb;

  reg A, B, C, D;
  wire Y;

  boolean_expr dut (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Y(Y)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, boolean_expr_tb);

    A=0; B=0; C=0; D=0; #10;
    A=0; B=0; C=1; D=0; #10;
    A=0; B=1; C=0; D=0; #10;
    A=1; B=0; C=0; D=0; #10;
    A=1; B=1; C=1; D=0; #10;

    $finish;
  end

endmodule
