
 class transaction;
   rand bit a;
   rand bit b;
        bit y1;
       bit y2;
       bit y3;
       bit  y4;
       bit y5;
       bit y6;
  function void display(input string tag);
    $display("Time:%0t [%0s]: a:%0b b:%0b y1:%0b y2:%0b y3:%0b y4:%0b y5:%0b y6:%0b ",$time,tag,a,b,y1,y2,y3,y4,y5,y6);
  endfunction
endclass

