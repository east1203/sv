`ifndef ERROR_TRANS
`define ERROR_TRANS

class error_trans extends trans;

constraint c_data {
  A inside {[0:9]};
  B inside {[0:9]};
}



endclass


`endif
