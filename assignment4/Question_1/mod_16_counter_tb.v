`include "mod_16_counter.v"
// Test bench for mod 16 counter
module mod_16_counter_tb;

// Declare inputs and outputs
reg clk;
reg reset;
wire [3:0] count;

// Instantiate mod 16 counter
mod_16_counter mod_16_counter_inst(
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;  // Toggle clock every 5 time units

// Initialize reset
initial begin
    clk = 0;
    reset = 1;
    #10 reset = 0;  // Deassert reset after 10 time units
end

// Display count value
always @(posedge clk)
begin
    $display("Count: %d", count);
end

// Stop simulation after 50 time units
initial #50 $finish;

endmodule