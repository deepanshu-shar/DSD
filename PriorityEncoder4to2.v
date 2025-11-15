module pe4_2(a, y, valid);
input [3:0] a;
output reg [1:0] y;
output reg valid;
 
always @(*) begin
    if(a[3]) begin y=2'b11; valid=1; end
    else if(a[2]) begin y=2'b10; valid=1; end
    else if(a[1]) begin y=2'b01; valid=1; end
    else if(a[0]) begin y=2'b00; valid=1; end
    else begin y=2'b00; valid=0; end
end
endmodule
