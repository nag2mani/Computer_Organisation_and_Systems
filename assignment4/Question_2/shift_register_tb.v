`include "shift_register.v"

// Test bench for the 4-bit Universal Shift Register
module shift_register_tb;

// Declare inputs and outputs
reg [3:0] data_in;
reg shift_left;
reg shift_right;
reg clk;
reg reset;
wire [3:0] data_out;

// Instantiate the shift register
shift_register shift_register_inst (
    .data_in(data_in),
    .shift_left(shift_left),
    .shift_right(shift_right),
    .clk(clk),
    .reset(reset),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;  // Toggle clock every 5 time units

// Initialize inputs
initial begin
    data_in = 4'b0000;
    shift_left = 0;
    shift_right = 0;
    clk = 0;
    reset = 1;
    #10 reset = 0;  // Deassert reset after 10 time units
    #20 shift_left = 1;  // Shift left after 20 time units
    #30 shift_right = 1;  // Shift right after 30 time units
end

// Display data_out value
always @(posedge clk)
begin
    $display("data_out: %b", data_out);
end

// Stop simulation after 50 time units
initial #50 $finish;

endmodule