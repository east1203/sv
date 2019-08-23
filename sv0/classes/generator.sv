`ifndef GENERATOR__SV
`define GENERATOR__SV

class generator;

mailbox#(trans) gen_mlb;

function new(input mailbox#(trans) mlb);
  this.gen_mlb = mlb;
endfunction

virtual task build;
  gen_mlb=new();
endtask

virtual task run;
  trans gen_tr;
  repeat(10)begin
    gen_tr=new();
    assert(gen_tr.randomize());
    gen_mlb.put(gen_tr);
  end
endtask

endclass

`endif
