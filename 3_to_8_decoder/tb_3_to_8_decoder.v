`timescale 1ns / 1ns

module tb_3_to_8_decoder;

reg [2:0] encoded_in;
wire [7:0] data_out;

3_to_8_decoder uut (
    .encoded_in(encoded_in),
    .data_out(data_out)
);

initial begin
    $monitor("Encoded In=%b, Data Out=%b", encoded_in, data_out);
    encoded_in = 3'b000; #10;
    encoded_in = 3'b101; #10;
    encoded_in = 3'b111; #10;
    $finish;
end

endmodule

