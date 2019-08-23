
`include "bp_bfm.sv"

module top;

import cb_pkg::*;

bp_bfm bfm();

enviroment env;

initial begin
  env=new(bfm);
  env.build();

  `ifdef BLUEPRINT
    begin
      //error_trans replace trans;
      //error_trans's A inside [0:9],B inside [0:9]
      error_trans err_tr; 
      err_tr=new();
      env.gen.gen_tr=err_tr; //hierarchy reference
      $display("@ %0t : **** BLUEPRINT ****",$time);
    end
  `endif

  `ifdef CALLBACK
  begin
    user_cb ucb;
    ucb=new();
    env.drv.cb_queue.push_back(ucb);
  end
  `endif
  env.run();
end



endmodule
