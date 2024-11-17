
// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
//`include "design.sv"
`include "Interface.sv"
`include "Transaction.sv"
`include "generator.sv"
`include "Write_driver.sv"
`include "Write_monitor.sv"
`include "Read_monitor.sv"
`include "Ref_model.sv"
`include "Scoreboard.sv"
`include "Env.sv"
`include "Test.sv"


module top;
  intf duv_if();
  test test_h;
  decoder2x4 dut(.a(duv_if.a), .b(duv_if.b), .y0(duv_if.y0), .y1(duv_if.y1), .y2(duv_if.y2), .y3(duv_if.y3));
  initial begin
    $dumpfile("dump.vcd");
     $dumpvars;
  end
  initial begin
    test_h=new(duv_if,duv_if,duv_if);
    test_h.build_run();
    #200;
     
    $finish;
  end
endmodule
  
               
