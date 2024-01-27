`include "XorGate_NA.v" 

module tb_xor;

reg a, b;
wire c;
xorGate x(a, b, c);

initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #2 a=1'b0; b=1'b0;
    #2 a=1'b0; b=1'b1;
    #2 a=1'b1; b=1'b0;
    #2 a=1'b1; b=1'b1;
end

initial begin
    $dumpfile ("out.vcd");
    $dumpvars;
    #50 $finish;
end

endmodule