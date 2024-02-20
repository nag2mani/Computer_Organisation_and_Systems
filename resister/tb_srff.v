`include "srff.v"

module tb_srff();
reg s,r, clk,rst;
wilre q;
srff p(s,r, clk,rst,q);
initial
begin
$dumpfile ("srfftb.vcd");
$dumpvars;
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
#10 s=1;r=0;
#10 s=1;r=1;
#10 5=0;r=0;
#10 5=0;r=1;
#200 $finish;
end
endmodule


