//This is to test and logic.

`include "and_logic.v"
module and_logic_tb;

reg a, b;
wire c;
and_logic it_is_instance_of_first_module(a, b, c);

initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #2 a=1'b0; b=1'b0;
    #2 a=1'b1; b=1'b0;
    #2 a=1'b0; b=1'b1;
    #2 a=1'b1; b=1'b1;
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #20 $finish;
end

endmodule
