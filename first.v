//This is for not logic.
module first(a, b); //Here a is input and b is output.
input a;
output b;
assign b = ~a;
endmodule





//This is for and logic.
module first(a, b, c);
input a, b;
output c;
assign c = a & b;
endmodule




//This is for or logic.
module first(a, b, c);
input a, b;
output c;
assign c = a | b;
endmodule



//This is for XOR logic.
module first(a, b, c);
input a,b;
output c;
assign c = a ^ b;
endmodule





//This is for NOR logic.
module first(a, b, c);
input a,b;
output c;
assign c = ~(a | b);  // for nor logic ~(A | B)
endmodule





//This is for Nand logic.
module first(a, b, c);
input a,b;
output c;
assign c = ~(a & b);  // for nor logic ~(A & B)
endmodule

