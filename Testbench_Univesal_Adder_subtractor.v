module tb_univ_add_sub; reg [3:0] a,b; reg m; wire [3:0] s; wire cout;
univ_add_sub dut(a,b,m,s,cout);
initial begin $dumpfile("univ_add_sub.vcd"); $dumpvars(0, tb_univ_add_sub);
a=5; b=3; m=0; #10;
a=9; b=4; m=1; #10;

$finish;
 
end endmodule
