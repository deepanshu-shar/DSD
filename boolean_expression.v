module boolean_expr(input A, B, C, D, output Y);
  assign Y = (A | B) | (A | C);
endmodule
