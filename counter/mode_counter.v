module tff(clk,rst,t,q,b_q);
  input t,clk,rst;
  output wire b_q;
  output reg q;
  
  assign b_q = ~q;
  
  always @(posedge clk)
    begin
      if(rst)
        q<=0;
      else
        begin
          if(t==1)
            q<=(~q);
          else
            q<=q;
          
        end
    end
endmodule



module mode_counter(clk, reset, mode, counter);

parameter sz=4;

input clk,reset,mode;
output wire [sz-1:0]counter;




wire [sz-1:0]q_b;
wire [sz-1:0] t;
wire inv_mode;

wire [sz-2:0]ad1, ad2, xr1;

assign t[0] =1'd1;

tff t1(clk,reset,t[0],counter[0],q_b[0]);


genvar i;
for (i=1; i<sz; i=i+1) begin

if (i==1) begin
assign ad1[i-1] = counter[i-1] & ~mode;
assign ad2[i-1] = q_b[i-1] & mode;
assign xr1[i-1] = ad1[i-1] ^ ad2[i-1];
end
else begin
assign ad1[i-1] = counter[i-1] & ad1[i-2];
assign ad2[i-1] = q_b[i-1] & ad2[i-2];
assign xr1[i-1] = ad1[i-1] ^ ad2[i-1];
end
 tff t1(clk,reset,xr1[i-1],counter[i],q_b[i]);
end



endmodule