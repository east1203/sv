`ifndef DRIVER_CB__SV
`define DRIVER_CB__SV

class driver_cb;


virtual task pre_cb(ref trans tr);
//do nothings
endtask

virtual task post_cb();
//do nothings
endtask

endclass

`endif
