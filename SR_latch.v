module sr_latch(s,r,q,qn);
input s,r;
output q,qn;
assign q = ~(r | qn);
assign qn = ~(s | q);
endmodule
