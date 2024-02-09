`include "NorGate.v"

module XnorGate(a, b, c);
    input a, b;
    output c;

    wire w1, w2, w3;

    norGate p1(a, b, w1);
    norGate p2(a, w1, w2);
    norGate p3(w1, b, w3);
    norGate p4(w2, w3, c);
endmodule