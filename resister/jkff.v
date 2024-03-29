module jkff(j,k,clk, rst, q);

input j,k, clk, rst;
output reg q;
always @(posedge clk)
begin
if(rst)
q<=0;
else
begin
case({j,k})
2'600: q<=q;
2' b01: q<=0;
2'b10:q<=1;
2 ' b11: q<=(~q) ;
default: q<=9;
endcase
end
end
endmodule