`include "D_flipflop.v"
module shift_register (
    input wire [3:0] data_in,
    input wire shift_left, 
    input wire shift_right, 
    input wire clk,    
    input wire reset,
    output reg [3:0] data_out 
);
reg [3:0] temp;
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
always @(*) begin
    if (shift_right)
        temp = {data_in[3], data_in[0], data_in[1], data_in[2]};
    else
        temp = data_out;
end
always @(posedge clk or posedge reset) begin
    if (reset)
        data_out <= 4'b0000; 
    else if (shift_right || shift_left)
        data_out <= temp; 
end
endmodule


