module tb_pe4_2; reg [3:0] a; wire [1:0] y; wire valid;
pe4_2 dut(a, y, valid);
initial begin $dumpfile("pe4_2.vcd"); $dumpvars(0, tb_pe4_2);
a=4'b0000; #10;
a=4'b0001; #10;
a=4'b0010; #10;
a=4'b0100; #10;
a=4'b1000; #10;
a=4'b1010; #10;

$finish;
 
end endmodule