`include "NorGate.v"

module XorGate(a, b, c);
    input a, b;
    output c;

    wire w1, w2, w3, w4;

    norGate p1(a, a, w1);
    norGate p2(b, b, w2);
    norGate p3(a, b, w3);
    norGate p4(w1, w2, w4);
    norGate p5(w4, w3, c);

endmodule