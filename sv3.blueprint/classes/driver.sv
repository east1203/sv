`ifndef DRIVER__SV
`define DRIVER__SV

class driver;

driver_cb cb_queue[$];

trans driver_tr;
mailbox#(trans) gen2drv;

virtual bp_bfm bfm;

function new(input mailbox#(trans) mlb,virtual bp_bfm bfm);
  this.gen2drv=mlb;
  this.bfm=bfm;
endfunction


virtual task run();
  while(1) begin
    gen2drv.get(driver_tr);
    foreach(cb_queue[i]) cb_queue[i].pre_cb(driver_tr);
    drive_one_pkg(driver_tr);
    foreach(cb_queue[i]) cb_queue[i].post_cb();
  end

endtask

virtual task drive_one_pkg(trans tr);
  $display("@ %0t : driver one pkg!!!",$time);
  tr.print();
  @(posedge bfm.clk);
  bfm.A = tr.A;
  bfm.B = tr.B;
  bfm.op = tr.op;
endtask


endclass

`endif
