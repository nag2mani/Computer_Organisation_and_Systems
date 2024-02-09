`timescale 1ns / 1ns

module tb_1_to_4_demultiplexer;

reg sel, data_in;
wire [3:0] data_out;

1_to_4_demultiplexer uut (
    .sel(sel),
    .data_in(data_in),
    .data_out(data_out)
);

initial begin
    $monitor("Select=%b, Data In=%b, Data Out=%b", sel, data_in, data_out);
    sel = 1'b0; data_in = 1'b0; #10;
    sel = 1'b1; data_in = 1'b1; #10;
    sel = 1'b0; data_in = 

