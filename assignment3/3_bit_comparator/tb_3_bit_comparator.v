`timescale 1ns / 1ns

module tb_3_bit_comparator;

reg [2:0] A, B;
wire equal, A_greater, B_greater;

comparator_3bit uut (
    .A(A),
    .B(B),
    .equal(equal),
    .A_greater(A_greater),
    .B_greater(B_greater)
);

initial begin
    $monitor("A=%b, B=%b, Equal=%b, A Greater=%b, B Greater=%b", A, B, equal, A_greater, B_greater);
    A = 3'b000; B = 3'b000; #10;
    A = 3'b001; B = 3'b010; #10;
    A = 3'b011; B = 3'b010; #10;
    A = 3'b101; B = 3'b110; #10;
    A = 3'b111; B = 3'b111; #10;
    $finish;
end

endmodule

