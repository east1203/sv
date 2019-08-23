
2019-08-23

****** files ******
[classes]:
  trans.sv
  driver_cb.sv
  driver.sv
  generator.sv
  enviroment.sv
  user_cb.sv
cb_pkg.sv
top.sv
Makefile
filelist
bp_bfm.sv ------ (new)

******* structure *******
top_module
  > env
    >drv
      >cb_queue[$]
    >gen
  > user_cb

******* description *******
(new) Drive transaction to interface on posedge clk.

Using system verilog to achieve callback machanism.


