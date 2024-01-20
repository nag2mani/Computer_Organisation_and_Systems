//This is for Xnor logic.
module xnor_logic(a, b, c);
input a,b;
output c;
assign c = ~(a ^ b);  // for nor logic ~(A & B)
endmodule