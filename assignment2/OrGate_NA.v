`include "NotAndGate.v"

module orGate(a, b, c);

    input a, b;
    output c;

    wire w1, w2;

    notandgate n1(a, a, w1);
    notandgate n2(b, b, w2);
    notandgate n3(w1, w2, c);

endmodule