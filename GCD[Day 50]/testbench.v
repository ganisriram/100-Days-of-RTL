module gcd_tb;
	// Inputs
  reg [6:0] A;
  reg [6:0] B;

	// Outputs
  wire [6:0] GCD;

	// Instantiate the Unit Under Test (UUT)
	gcd uut (
		.A(A), 
		.B(B), 
		.GCD(GCD)
	);

	initial begin
        A=90;B=86;
		#10 A=48; B=12;
		#10 A=65;B=4;
		#10 A=48;B=7;
		#10 A=8;B=2;
		#10 A=125;B=6;
		#10 A=85;B=76;
		#10 A=54;B=44;
		#10 A=95;B=32;
		#10 A=109;B=91;
		#10 A=75;B=34;
      #10 A=12;B=8;
		

	end
   initial 
   begin 
     $dumpfile("dump.vcd");
     $dumpvars(1);
   end
      initial
		begin
		$monitor("A= %d | B=%d | GCD=%d", A,B,GCD);
		#200 $finish;
		end
  
endmodule
