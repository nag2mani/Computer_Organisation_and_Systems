//This is to test not logic.

`include "not_logic.v"
module not_logic_tb();

reg a;
wire b;

not_logic f1(a, b);

initial begin
    $monitor("input = %b, output=%b\n", a, b);
    #2 a=1'b0;
    #2 a=1'b1;
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #10 $finish;
end

endmodule