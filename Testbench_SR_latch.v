module tb_sr_latch; reg s,r; wire q,qn;
sr_latch dut(s,r,q,qn);
initial begin $dumpfile("sr_latch.vcd"); $dumpvars(0, tb_sr_latch);
s=0;r=0; #10;
s=1;r=0; #10;
s=0;r=1; #10;
s=0;r=0; #10;

$finish;
 
end 
endmodule 
