module priorityencoder8x3_th;
reg [7:01d;
wire bo,b1,b2;
     priorityencoder8x3 dut (.d(d), .bo(bo), .b1(bl), .b2(b2));
Initial begin
 #10 ;d=8'b00000001;
 #10 ;d=8'b0000001x;
 #10 ;d=8'b000001xx;
 #10 ;d=8'b00001xxx;
 #10 ;d=8'b0001xxxx;
 #10 ;d=8'b001xxxxx;
 #10 ;d=8'b01xxxxxx;
 #10 ;d=8'b1xxxxxxx;
#10;
  $finish;
end

endmodule

