`include "NorGate.v"

module AndGate(a, b, c);
    input a, b;
    output c;

    wire  w1, w2;
    
    norGate p1(a, a, w1);
    norGate p2(b, b, w2);
    norGate p3(w1, w2, c);

endmodule