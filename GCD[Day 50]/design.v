module gcd(
  input wire [6:0] A, B,
  output reg [6:0] GCD);
  reg [6:0] Ain, Bin;
always @(*)
begin
Ain = A; Bin = B;
while( Ain != Bin)
begin
if ( Ain < Bin )
Bin = Bin-Ain;
else
Ain = Ain - Bin;
end
GCD = Ain;
end
endmodule 
