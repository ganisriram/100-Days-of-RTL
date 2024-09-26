module cmp4bit_test(a,b,x,y,z);
input wire x,y,z;
output reg [3:0]a,b;
  cmp4bit inst(.a(a), .b(b), .x(x), .y(y), .z(z));
initial begin
$monitor("Time=st ab bb x=b y=b fb", $time,a,b,x,y,z);
#10 a 4 b0000;b=4b0000;
#10 a=4b0001;b=4b0000;
#10 a=4 b9000;b=4 60010;
#10;
Sfinish;
end
endmodule

