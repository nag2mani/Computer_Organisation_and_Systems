`include "NotAndGate.v"

module andGate(a, b, c);
    input a, b;
    output c;

    wire w1;

    notandgate n1(a, b, w1);
    notandgate n2(w1, w1, c);

endmodule
