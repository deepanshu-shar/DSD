module tb_dec2_4; reg [1:0] a; wire [3:0] y;
dec2_4 dut(a,y);
initial begin $dumpfile("dec2_4.vcd"); $dumpvars(0, tb_dec2_4);
a=0; #10;
a=1; #10;
a=2; #10;
a=3; #10;

$finish;
 
end endmodule