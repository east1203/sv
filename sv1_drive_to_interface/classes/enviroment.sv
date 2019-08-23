`ifndef ENVIROMENT__SV
`define ENVIROMENT__SV

class enviroment;
  
  mailbox#(trans) mlb;
  driver drv;
  generator gen;
  virtual bp_bfm bfm;

  function new(virtual bp_bfm bfm);
    this.bfm=bfm;
  endfunction

  virtual task build;
    mlb=new();
    drv=new(mlb,bfm);
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
