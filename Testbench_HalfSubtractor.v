module tb_half_subtractor; reg a,b; wire diff,borrow;
half_subtractor dut(a,b,diff,borrow);
initial begin $dumpfile("half_subtractor.vcd"); $dumpvars(0, tb_half_subtractor);
a=0;b=0; #10;
a=0;b=1; #10;
a=1;b=0; #10;
a=1;b=1; #10;

$finish;
 
end endmodule