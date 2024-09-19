module ha_add(a,b,sum,carry);
  input wire a,b,;
  output reg sum,carry;
  assign sum=a^b;
  assign carry=a&b;
endmodule
module fa_add(a,b,cin,sum,carry);
  input wire a,b,cin;
  output reg sum,carry;
  wire w1,w2,w3;
  ha_add f1(a,b,w1,w2);
  ha_add f2(w1,cin,sum,w3);
  assign carry=w2|w3;
endmodule
