module tb_jk_ff; reg j,k,clk; wire q;
jk_ff dut(j,k,clk,q);
initial begin clk=0; forever #5 clk=~clk; end
initial begin $dumpfile("jk_ff.vcd"); $dumpvars(0, tb_jk_ff);
j=0;k=0; #10;
j=1;k=0; #10;
j=0;k=1; #10;
j=1;k=1; #10;

$finish;
 
end endmodule