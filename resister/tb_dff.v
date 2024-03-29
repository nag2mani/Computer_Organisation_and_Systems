`include "dff.v"

module tb_dff();
reg d, clk,rst;
wire q;
dff p(d,clk,rst,q);

initial
    begin
    $dumpfile("dfftb.vcd");
    $dumpvars (0, dfftb);
    #100 $finish;
    end

initial
    begin
    clk=1;
    forever #5 clk=~clk;
    end

initial
    begin
    #10 rst=1;
    #10 rst=0;
    #10 d=0;
    #10 d=1;
    end

endmodule
