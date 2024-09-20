`include "design.v"
module half_nand_tb(output reg a,b,input wire differ,borrow);
  half_nand dut(a,b,differ,borrow);
  initial begin
    $monitor("Time=%0t a=%b b=%b differ=%b borrow=%b",$time,a,b,differ,borrow);
    #5 a=0;b=0;
    #5 a=0;b=1;
    #5 a=1;b=0;
    #5 a=1;b=1;
  end
    endmodule
