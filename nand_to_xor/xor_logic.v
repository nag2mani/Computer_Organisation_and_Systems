//This is for XOR logic.
`include "nand_logic.v"
module xor_logic(a, b, c);
input a,b;
output c;

wire w1, w2, w3;

nand_logic n1(a, b,w1);
nand_logic n2(a, w1,w2);
nand_logic n3(b, w1,w3);
nand_logic n4(w2, w3,c);

endmodule