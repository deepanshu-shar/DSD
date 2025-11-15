`timescale 1ns / 1ps
module mux2to1(input A, input B, input S, output Y);
    assign Y = (S) ? B : A;
endmodule
