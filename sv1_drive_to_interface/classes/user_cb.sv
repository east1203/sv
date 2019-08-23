`ifndef USER_CB__SV
`define USER_CB__SV

class user_cb extends driver_cb;

virtual task pre_cb(ref trans tr);
  $display("@ %0t : modified A value!!!",$time);
  tr.A = $urandom_range(0,9);
endtask

virtual task post_cb();
  $display("@ %0t : calling post_cb!!!",$time);
endtask

endclass

`endif
