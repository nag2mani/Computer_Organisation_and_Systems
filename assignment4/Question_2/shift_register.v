`include "D_flipflop.v"

// 4-bit Universal Shift Register module
module shift_register (
    input wire [3:0] data_in,  // Input data
    input wire shift_left,      // Shift left control signal
    input wire shift_right,     // Shift right control signal
    input wire clk,             // Clock input
    input wire reset,           // Reset input
    output reg [3:0] data_out   // Output data
);

reg [3:0] temp;

// Instantiate D Flip-Flops
D_flipflop DFF0 (
    .D(data_in[0]),
    .clk(clk),
    .reset(reset),
    .Q(data_out[0])
);
D_flipflop DFF1 (
    .D(shift_left ? data_out[0] : data_in[1]),
    .clk(clk),
    .reset(reset),
    .Q(data_out[1])
);
D_flipflop DFF2 (
    .D(shift_left ? data_out[1] : data_in[2]),
    .clk(clk),
    .reset(reset),
    .Q(data_out[2])
);
D_flipflop DFF3 (
    .D(shift_left ? data_out[2] : data_in[3]),
    .clk(clk),
    .reset(reset),
    .Q(data_out[3])
);

// Shift right logic
always @(*) begin
    if (shift_right)
        temp = {data_in[3], data_in[0], data_in[1], data_in[2]};
    else
        temp = data_out;
end

// Assign the output data
always @(posedge clk or posedge reset) begin
    if (reset)
        data_out <= 4'b0000;  // Reset to 0
    else if (shift_right || shift_left)
        data_out <= temp;  // Assign shifted data
end

endmodule


