//This is not logic.
module first(a, b); //Here a is input and b is output.
input a;
input b;
assign b = ~a;
endmodule


//This is and logic.
module first(a,b,c);
input a,b;
output c;
assign c = a & b;
endmodule




