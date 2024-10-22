include "design.v"

module tb;
    reg clk, rst;
    wire final_out;

    // Instantiate the mod3 counter
    mod3 dut(
        .clk(clk),
        .rst(rst),
        .final_out(final_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test stimulus
    initial begin
        rst = 1;
        #10 rst = 0;
        #100;
        $finish;
    end
endmodule
