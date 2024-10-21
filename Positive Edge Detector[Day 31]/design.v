module posedge_detection( clk,data,data_d,edge_detect);
input wire clk, data;
output reg edge_detect;
output reg data_d;
always @(posedge clk) begin
    data_d<=data;
end
assign edge_detect=data & ~data_d;
endmodule
