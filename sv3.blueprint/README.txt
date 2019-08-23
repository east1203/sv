
2019-08-23

****** files ******
[classes]:
  trans.sv
  error_trans.sv ------ (new)
  driver_cb.sv
  driver.sv
  generator.sv
  enviroment.sv
  user_cb.sv
cb_pkg.sv
top.sv
Makefile
filelist
bp_bfm.sv 
define.sv -------- (new)


******* structure *******
top_module
  > env
    >drv
      >cb_queue[$]
    >gen

******* description *******

(new) blueprint----- hierarchy reference to replace previous trans using error_trans.

Drive transaction to interface on posedge clk.

Using system verilog to achieve callback machanism.


