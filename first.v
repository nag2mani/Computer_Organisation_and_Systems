//This is for not logic.
module first(a, b); //Here a is input and b is output.
input a;
output b;
//here input and output taken as wire by default because we have not define it.
assign b = ~a;
endmodule
