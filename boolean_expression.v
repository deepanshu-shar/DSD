module boolean_expr(input A, B, C, output Y);
  assign Y = (A | B) | (A | C);
endmodule
