module 2_to_1_multiplexer(
    input sel,
    input [1:0] data_in,
    output data_out
);

assign data_out = (sel) ? data_in[1] : data_in[0];

endmodule

