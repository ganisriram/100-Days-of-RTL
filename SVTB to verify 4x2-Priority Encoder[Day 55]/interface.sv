interface intf;
  logic a;
  logic b;
  logic c;
  logic d;
  logic y1;
  logic y2;
  modport WR_DRV_MP(output a,b,c,d);
  modport WR_MON_MP(input a,b,c,d);
  modport RD_MON_MP(input y1,y2);
endinterface
