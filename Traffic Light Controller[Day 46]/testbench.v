
module Traffic_Light_Controller_TB;
reg clk,rst;
wire [2:0]light_M1;
wire [2:0]light_S;
wire [2:0]light_MT;
wire [2:0]light_M2;
wire [3:0] count;
  wire [2:0]current_state;
  always #10 clk=~clk;
  Traffic_Light_Controller dut(.clk(clk) , .rst(rst) , .light_M1(light_M1) , .light_S(light_S)  ,.light_M2(light_M2),.light_MT(light_MT), .count(count), .current_state(current_state)  );
initial begin
  #10 clk=0;
  #10 rst=1;
  #20 rst=0;
  #1000;
  $finish;
  
end
endmodule

