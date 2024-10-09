module test_bench;
reg clk,rst,J,K;
wire Q_sr, Q_d, Q_t;

  JK_using_SR_D_T dut(J, K, clk, rst, Q_sr, Q_d, Q_t);
initial begin 
        clk = 0;
       forever #5 clk = ~clk;
       end 
       
 initial begin
        rst=1;
        J = 0;
        K = 0;
        #10;
        rst=0;
    end
    
    always begin
        J=0;
        K=0;
        #10;
        J=0;
        K=1;
        #10;
        J=1;
        K=0;
        #10;
        J=1;
        K=1;
