interface intf(); 
  logic a;
  logic b;
 logic y0;
  logic y1;
  logic y2;
  logic y3;
  
  modport WR_DRV_MP (output a,b);
  modport WR_MON_MP (input a,b);
  modport RD_MON_MP ( input y0,y1,y2,y3);
endinterface
