module univ_add_sub(a,b,m,s,cout); input [3:0] a,b; input m; output [3:0] s; output cout; wire [3:0] t;
assign t = b ^ {4{m}}; assign {cout,s} = a + t + m; 
endmodule
