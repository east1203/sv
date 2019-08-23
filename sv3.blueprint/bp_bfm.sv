`ifndef BP_BFM__SV
`define BP_BFM__SV

interface bp_bfm;

logic clk;
logic reset_n;
logic [7:0] A;
logic [7:0] B;
logic [2:0] op;

initial begin
  clk=0;
  forever #10 clk = ~clk;
end
initial begin
  repeat(100) @(posedge clk);
  $finish;
end
task reset;
  reset_n=0;
  @(negedge clk);
  @(negedge clk);
  reset_n=1;
endtask



endinterface

`endif



