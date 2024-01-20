//This is for Nand logic.
module first(a, b, c);
input a,b;
output c;
assign c = ~(a & b);  // for nor logic ~(A & B)
endmodule
