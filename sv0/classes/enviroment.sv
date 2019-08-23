`ifndef ENVIROMENT__SV
`define ENVIROMENT__SV

class enviroment;
  
  mailbox#(trans) mlb;
  driver drv;
  generator gen;

  function new();

  endfunction

  virtual task build;
    mlb=new();
    drv=new(mlb);
    gen=new(mlb);
  endtask

  virtual task run;
    fork
      drv.run();
      gen.run();
    join
  endtask

endclass

`endif
