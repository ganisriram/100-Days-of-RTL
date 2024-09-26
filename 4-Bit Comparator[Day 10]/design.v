module cmp4bit(a,b,x,y,z);
input wire [3:0]a,b;
output reg x,y,z;
  assign x=(~(a[3]^b[3]))&(~(a[2]^b[2]))&(~(a[1]^b[1]))&(~(a[0]^b[0]));
  assign y=~a[3]&b[3]|(~(a[3]^b[3]))&~a[2]&b[2]|~(a[3]^b[3])&(~(a[2]^b[2]))&~a[1]&b[1]|(~(a[3]^b[3]))&~(a[2]^b[2])&~(a[1]^b[1])&a[0]&b[0];
  assign z=a[3]&~b[3]|~(a[3]^b[3])&a[2]&~b[2]|(a[3]^b[3])&(~(a[2]^b[2]))&a[1]&~b[1]|(~(a[3]^b[3]))&~(a[2]^b[2])&~(a[1]^b[1])&a[0]&~b[0]; 
endmodule
