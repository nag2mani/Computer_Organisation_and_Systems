// D Flip-Flop module
module D_flipflop (
    input D, clk, reset,
    output reg Q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;  // Reset to 0
    else
        Q <= D;  // Assign D to Q on each clock cycle
end

endmodule
