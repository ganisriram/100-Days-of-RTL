interface intf(); 
  logic a;
  logic b;
 logic y1;
  logic y2;
  logic y3;
  logic y4;
  logic  y5;
  logic y6;
  
  modport WR_DRV_MP (output a,b);
  modport WR_MON_MP (input a,b);
  modport RD_MON_MP ( input y1,y2,y3,y4,y5,y6);
endinterface
