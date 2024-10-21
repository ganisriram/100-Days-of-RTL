`include "design.v"
module tb(clk,data,data_d,edge_detect);
input wire edge_detect;
output reg clk,data;
input wire data_d;
posedge_detection dut(.clk(clk), .data(data),
.edge_detect(edge_detect), .data_d(data_d));
always #10 clk=~clk;
initial begin
    $monitor("Time=%0t data=%0b data_d=%0b edge_detect=%0b",$time,data,data_d,edge_detect);
    clk=0;
    #10 data=0;
    #25 data=1;
    #30 data=0;
    #25 data=1;
    #20 data=0;
    #30 data=0;
    #20 data=1;
    #200;
    $finish;
end
endmodule
