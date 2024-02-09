module encoder_8to3(
    input [7:0] data_in,
    output [2:0] encoded_out
);

assign encoded_out = ~|data_in;

endmodule

