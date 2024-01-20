//test bench is used for verifying the correctness of your hardware design which is written in first.v
//This is for not logic.

`include "first.v"  //for importing the first.v module.
module first_tb();
reg a;  //In reg you can hold the value for some time and all the input should be reg.
wire b; //wire elements must be continuously driven by something, and cannot store a value. Henceforth, they are assigned values using continuous assignment statements.

first f1(a, b); //f1 is instance name. We should use same local variable as in other module.

initial begin
    $monitor("input = %b, output=%b\n", a, b);
    #2 a=1'b0; //#2 is after 2 unit of time.
    #2 a=1'b1;
end

initial begin
    $dumpfile("out.vcd"); //This VCD file will contain information about signal value changes during the simulation.
    $dumpvars;  //The $dumpvars system task is used to specify which variables should be included in the VCD file. It tells the simulator to record the changes in the values of the selected variables during the simulation.
    #10 $finish; //This simulation will terminate after a delay of 5 time units.
end

endmodule

//Note: reg elements can be used as output within an actual module declaration. But,reg elements cannot be connected to the output port of a module instantiation. Thus, a reg can drive a wire as RHS of an assign statement. On the other way round, a wire can drive a reg in as RHS of a procedural block.