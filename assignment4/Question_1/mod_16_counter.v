`include "jk_flipflop.v"

// Mod 16 synchronous counter using J-K flip-flops
module mod_16_counter (
    input wire clk,     // Clock input
    input wire reset,   // Reset input
    output reg [3:0] count  // 4-bit output representing the count
);

reg jk_in, jk_out;
reg [3:0] temp;

// Instantiate J-K flip-flops
jk_flipflop jk_ff_0 (
    .J(1'b1),
    .K(1'b0),
    .clk(clk),
    .reset(reset),
    .Q(jk_out)
);

// Output of the first flip-flop goes to the input of the next flip-flop
assign jk_in = jk_out;

// Instantiate additional J-K flip-flops
genvar i;
generate
    for (i = 1; i < 4; i = i + 1) begin : jk_ff_loop
        jk_flipflop jk_ff (
            .J(jk_in),
            .K(1'b0),
            .clk(clk),
            .reset(reset),
            .Q(jk_out)
        );
        assign jk_in = jk_out;
    end
endgenerate

// Convert binary to Gray code
always @(*) begin
    case (jk_out)
        4'b0000: temp = 4'b0000;
        4'b0001: temp = 4'b0001;
        4'b0011: temp = 4'b0011;
        4'b0010: temp = 4'b0010;
        4'b0110: temp = 4'b0100;
        4'b0111: temp = 4'b0101;
        4'b0101: temp = 4'b0111;
        4'b0100: temp = 4'b0110;
        4'b1100: temp = 4'b1000;
        4'b1101: temp = 4'b1001;
        4'b1111: temp = 4'b1011;
        4'b1110: temp = 4'b1010;
        4'b1010: temp = 4'b1100;
        4'b1011: temp = 4'b1101;
        4'b1001: temp = 4'b1111;
        4'b1000: temp = 4'b1110;
        default: temp = 4'b0000;
    endcase
end

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;  // Reset to 0
    else
        count <= temp + 1;  // Increment count on each clock cycle
end

endmodule