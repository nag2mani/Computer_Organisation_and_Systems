`include "NotGate_NA.v"

module tb_not;

reg a;
wire b;
notGate f1(a, b);

initial begin
    $monitor("inout=%b, output=%b\n", a, b);
    #2 a=1'b0;
    #2 a=1'b1;
end

initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #2 $finish;

end

endmodule