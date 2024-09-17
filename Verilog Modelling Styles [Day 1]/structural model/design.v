module logic_gates(
  input wire a,b;
  output reg and_gate,or_gate,not_gate,nand_gate,nor_gate,xor_gate,xnor_gate;
);
  and w1(and_gate,a,b);
  or w2(or_gate,a,b);
  not w3(not_gate,a,b);
  nand w4(nand_gate,a,b);
  nor w5(nor_gate,a,b);
  xor w6(xor_gate,a,b);
  xnor w7(xnor_gate,a,b);
endmodule
