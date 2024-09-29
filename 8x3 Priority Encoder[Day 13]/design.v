module priorityencoderex3 (d,b0,b1,b2);
input [7:0]d;
output bo,b1,b2;
  assign b2=d[7]|d[6]| [d[5]|d[4];
  assign bl=d[7] |[d[6] | (-d[5]& ~d[4] &d[3]) | (-d[5] &~d[4] &d[2]);
  assign bo=d[7]| ((~d[6]) &d[5])| ((-d[6]) & (~d[4]) &d[3]) | ((~d[6])& (~d[4])& (-d[2])& d[1]):
endmodule
