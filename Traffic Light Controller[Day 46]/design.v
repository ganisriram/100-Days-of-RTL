module Traffic_Light_Controller(
    input clk,rst,
    output reg [2:0]light_M1,
  output reg [2:0]light_MT,
  output reg [2:0]light_M2,
  output reg [2:0]light_s,
  output reg [3:0] count,
  output reg [2:0] current_state
	 );
	 
    parameter  S1=0, S2=1, S3 =2, S4=3, S5=4,S6=5;
    reg [3:0]count;
  reg[2:0] current_state;
    parameter  sec7=7,sec5=5,sec2=2,sec3=3;
	 
    always@(posedge clk or posedge rst)
        begin
        if(rst==1)
        begin
        current_state<=S1;
        count<=0;
        end
        else 
          case(current_state)
                S1: if(count<sec7)
                        begin
                        current_state<=S1;
                        count<=count+1;
                        end
                    else
                        begin
                        current_state<=S2;
                        count<=0;
                        end
                S2: if(count<sec2)
                        begin
                        current_state<=S2;
                        count<=count+1;
                        end
                    else
                        begin
                        current_state<=S3;
                        count<=0;
                        end
              S3: if(count<sec5)
                        begin
                        current_state<=S3;
                        count<=count+1;
                        end
                    else
                        begin
                        current_state<=S4;
                        count<=0;
                        end
                S4:if(count<sec2)
                        begin
                        current_state<=S4;
                        count<=count+1;
                        end
                    else
                        begin
                        current_state<=S5;
                        count<=0;
                        end
                S5:if(count<sec3)
                        begin
                        current_state<=S5;
                        count<=count+1;
                        end
                    else
                        begin
                        current_state<=S6;
                        count<=0;
                        end
                S6:if(count<sec2)
                        begin
                        current_state<=S6;
                        count<=count+1;
                        end
                    else
                        begin
                        current_state<=S1;
                        count<=0;
                        end
                default: ps<=S1;
                endcase
            end   

  always@(current_state)    
            begin   
              case(current_state)          
                    S1:
                    begin
                       light_M1<=3'b001;
                       light_M2<=3'b001;
                       light_MT<=3'b100;
                       light_S<=3'b100;
                    end
                    S2:
                    begin 
                       light_M1<=3'b001;
                       light_M2<=3'b010;
                       light_MT<=3'b100;
                       light_S<=3'b100;
                    end
                    S3:
                    begin
                       light_M1<=3'b001;
                       light_M2<=3'b100;
                       light_MT<=3'b001;
                       light_S<=3'b100;
                    end
                    S4:
                    begin
                       light_M1<=3'b010;
                       light_M2<=3'b100;
                       light_MT<=3'b010;
                       light_S<=3'b100;
                    end
                    S5:
                    begin
                       light_M1<=3'b100;
                       light_M2<=3'b100;
                       light_MT<=3'b100;
                       light_S<=3'b001;
                    end
                    S6:
                    begin 
                       light_M1<=3'b100;
                       light_M2<=3'b100;
                       light_MT<=3'b100;
                       light_S<=3'b010;
                    end
  default:
                    begin 
                       light_M1<=3'b000;
                       light_M2<=3'b000;
                       light_MT<=3'b000;
                       light_S<=3'b000;
                    end
                  endcase
            end                         
endmodule
