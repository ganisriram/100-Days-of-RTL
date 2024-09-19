`include "design.v"
module fa_tb(a,b,cin,sum,carry);
  input wire sum,carry;
  output reg a,b,cin;
  fa_add dut(a,b,cin,sum,carry);
  initial begin
    $monitor("Time=%0t a=%0b b=%0b cin=%0b sum=%0b carry=%0b",$time,a,b,cin,sum,carry);
    #5 a=0;b=0;cin=0;
    #5 a=0;b=0;cin=1;
    #5 a=0;b=1;cin=0;
    #5 a=0;b=1;cin=1;
    #5 a=1;b=0;cin=0;
    #5 a=1;b=0;cin=1;
    #5 a=1;b=1;cin=0;
    #5 a=1;b=1;cin=1;
    #5;
    $finish;
  end
endmodule
    
