`ifndef GENERATOR__SV
`define GENERATOR__SV

class generator;

mailbox#(trans) gen_mlb;
  trans gen_tr;

function new(input mailbox#(trans) mlb);
  this.gen_mlb = mlb;
  gen_tr=new(); //create tr 
endfunction

virtual task build;
  gen_mlb=new();
endtask

virtual task run;
  repeat(10)begin
//    gen_tr=new();
    assert(gen_tr.randomize());
    gen_mlb.put(gen_tr.copy());
  end
endtask

endclass

`endif
