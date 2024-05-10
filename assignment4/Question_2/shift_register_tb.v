`include "shift_register.v"
module shift_register_tb;
reg [3:0] data_in;
reg shift_left;
reg shift_right;
reg clk;
reg reset;
wire [3:0] data_out;
shift_register shift_register_inst (
    .data_in(data_in),
    .shift_left(shift_left),
    .shift_right(shift_right),
    .clk(clk),
    .reset(reset),
    .data_out(data_out)
);
always #5 clk = ~clk;
initial begin
    data_in = 4'b0000;
    shift_left = 0;
    shift_right = 0;
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #20 shift_left = 1;
    #30 shift_right = 1;
end
always @(posedge clk)
begin
    $display("data_out: %b", data_out);
end
initial #50 $finish;
endmodule
