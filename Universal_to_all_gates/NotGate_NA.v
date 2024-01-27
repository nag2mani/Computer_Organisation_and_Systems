`include "NotAndGate.v"

module notGate(a, b);
    input a;
    output b;

    notandgate n1(a, a, b);

endmodule