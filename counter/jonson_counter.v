module j_cunter(input clk, input reset, output reg [0:3]counter);

always @(posedge clk) begin
if(reset) counter <=4'd0;
else begin
counter[0] <= ~counter[3];
counter[1] <= counter[0];
counter[2] <= counter[1];
counter[3] <= counter[2];
end
end

endmodule

