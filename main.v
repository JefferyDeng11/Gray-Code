`timescale 1ns / 1ns


module main(input clk, reset, output [2:0] out, [2:0] binary);

    reg [2:0] counter = 3'b000;
    always @ (posedge clk) begin
        if(reset) begin
            counter <= 0;
        end
        
        else begin
            counter <= counter + 1;
        end    
    end
 
    assign binary = counter;   
    assign out[2] = counter[2];
    assign out[1] = !counter[2] && counter[1] || counter[2] && !counter[1];
    assign out[0] = counter[1] && !counter[0] || !counter[1] && counter[0];
    
endmodule
