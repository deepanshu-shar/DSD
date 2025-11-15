module tb_d_ff; reg d,clk; wire q;
d_ff dut(d,clk,q);
initial begin clk=0; forever #5 clk=~clk; end
initial begin $dumpfile("d_ff.vcd"); $dumpvars(0, tb_d_ff);
d=0; #10;
d=1; #10;
d=0; #10;
d=1; #10;

$finish;
 
end endmodule
