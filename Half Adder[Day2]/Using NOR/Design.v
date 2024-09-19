
module ha_nor(input a,b,output reg sum,carry);
  wire w1,w2,w3;
  assign w1=~(a|a);
  assign w2=~(b|b);
  assign  w3=~(a|b);
  assign carry=~(w1|w2);
  assign summ=~(carry|w3);
endmodule
