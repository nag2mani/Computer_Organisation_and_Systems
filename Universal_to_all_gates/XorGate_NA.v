`include "NotAndGate.v"

module xorGate(a, b, c);
    input a, b;
    output c;

    wire w1, w2, w3;

    notandgate n1(a, b, w1);
    notandgate n2(a, w1, w2);
    notandgate n3(w1, b, w3);
    notandgate n4(w2, w3, c);
endmodule