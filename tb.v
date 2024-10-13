`timescale 1ns / 1ns


module tb();

    reg clk, reset;
    wire [2:0] out;
    wire [2:0] binary;
    main gray(.clk(clk), .reset(reset), .out(out), .binary(binary));
    
    always #1 clk = !clk;
    
    initial begin
        clk = 0; reset = 1; #2;
        
        reset = 0; #20;
    end

endmodule
