module 1_to_4_demultiplexer(
    input sel,
    input data_in,
    output [3:0] data_out
);

assign data_out = (sel == 1'b0) ? 4'b0001 : 4'b1110;

endmodule

