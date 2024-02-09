`timescale 1ns / 1ns

module tb_8_to_3_encoder;

reg [7:0] data_in;
wire [2:0] encoded_out;

encoder_8to3 uut (
    .data_in(data_in),
    .encoded_out(encoded_out)
);

initial begin
    $monitor("Data In=%b, Encoded Out=%b", data_in, encoded_out);
    data_in = 8'b00000000; #10;
    data_in = 8'b00000001; #10;
    data_in = 8'b00001010; #10;
    data_in = 8'b11111111; #10;
    $finish;
end

endmodule

