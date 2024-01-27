`include "NorGate.v"

module OrGate(a, b, c);
    input a, b;
    output c;
    
    wire w1;

    norGate p1(a, b, w1);
    norGate p2(w1, w1, c);

endmodule