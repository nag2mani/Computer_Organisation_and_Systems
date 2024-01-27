`include "NorGate.v"

module NotGate(a, b);
    input a;
    output b;

    norGate p1(a, a, b);
endmodule