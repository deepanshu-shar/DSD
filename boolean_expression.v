`timescale 1ns / 1ps
module boolean_expr(input A, input B, input C, output Y);
    assign Y = (A | B) | (A | C);
endmodule
