module comparator_3bit(
    input [2:0] A,
    input [2:0] B,
    output equal,
    output A_greater,
    output B_greater
);

assign equal = (A == B);
assign A_greater = (A > B);
assign B_greater = (A < B);

endmodule

