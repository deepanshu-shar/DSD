module tb_full_subtractor; reg a,b,bin; wire diff,borrow;
full_subtractor dut(a,b,bin,diff,borrow);
initial begin $dumpfile("full_subtractor.vcd"); $dumpvars(0, tb_full_subtractor);
a=0;b=0;bin=0; #10;
a=0;b=1;bin=1; #10;
a=1;b=0;bin=1; #10;
a=1;b=1;bin=1; #10;

$finish;
 
end endmodule