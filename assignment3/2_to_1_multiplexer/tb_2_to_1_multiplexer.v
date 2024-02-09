`timescale 1ns / 1ns

module tb_2_to_1_multiplexer;

reg sel;
reg [1:0] data_in;
wire data_out;

2_to_1_multiplexer uut (
    .sel(sel),
    .data_in(data_in),
    .data_out(data_out)
);

initial begin
    $monitor("Select=%b, Data In=%b, Data Out=%b", sel, data_in, data_out);
    sel = 1'b0; data_in = 2'b00; #10;
    sel = 1'b1; data_in = 2'b10; #10;
    sel = 1'b0; data_in = 2'b01; #10;
    sel = 1'b1; data_in = 2'b11; #10;
    $finish;
end

endmodule

