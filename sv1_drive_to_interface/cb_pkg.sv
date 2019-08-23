`ifndef CB_PKG__SV
`define CB_PKG__SV

package cb_pkg;

typedef enum bit[2:0] {
  add_op=3'b001,
  and_op=3'b010,
  xor_op=3'b011,
  mul_op=3'b100
} operation_e;

//`include "bp_bfm.sv"
`include "trans.sv"
`include "driver_cb.sv"
`include "driver.sv"
`include "generator.sv"
`include "enviroment.sv"
`include "user_cb.sv"


endpackage

`endif
