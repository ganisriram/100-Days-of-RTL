`include "d_sync_counter.v"
module d_sync_counter_test(input wire[3:0]q,qbar, output reg clk);
  d_sync_counter inst(.clk(clk), .q(q), .qbar(qbar));
  always #10 clk=~clk;
  initial begin
    $monitor("Time=%0t=>q=%d qbar=%d",$time,q,qbar);
    clk=0;
    #10;
    #350;
    $finish;
  end
endmodule
