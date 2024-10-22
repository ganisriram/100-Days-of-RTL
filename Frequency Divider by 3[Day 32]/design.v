
module frq_div_3(
    input wire clk,
    input wire rst,
    output wire final_out
);

    reg [1:0] mod_count;
    reg dff_q;

    // Counter logic on positive edge of clock or reset
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            mod_count <= 2'b00;
        end
        else begin
            if(mod_count == 2'b10)
                mod_count <= 2'b00;
            else
                mod_count <= mod_count + 1;
        end
    end

    // Output logic on negative edge of clock or positive edge of reset
    always @(negedge clk or posedge rst) begin
        if(rst)
            dff_q <= 1'b0;
        else
            dff_q <= mod_count[1];
    end

    // Final output assignment
    assign final_out = mod_count[1] | dff_q;

endmodule
