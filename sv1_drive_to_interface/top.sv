
`include "bp_bfm.sv"

module top;

import cb_pkg::*;

bp_bfm bfm();

enviroment env;

initial begin
  env=new(bfm);
  env.build();
  begin
    user_cb ucb;
    ucb=new();
    env.drv.cb_queue.push_back(ucb);
  end
  env.run();
end



endmodule
