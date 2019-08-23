

program automatic top;
import cb_pkg::*;

enviroment env;

initial begin
  env=new();
  env.build();
  begin
    user_cb ucb;
    ucb=new();
    env.drv.cb_queue.push_back(ucb);
  end
  env.run();
end

endprogram



