`ifndef TRANS__SV
`define TRANS__SV

class trans;

rand bit [7:0] A;
rand bit [7:0] B;
rand operation_e op;
string name;

function new(string name="trans");
  this.name=name;
endfunction


constraint c_data {
  A inside {[10:20]};
  B inside {[30:40]};
}

constraint c_op {
  op dist {
    add_op:=1,
    and_op:=1,
    xor_op:=1,
    mul_op:=1
  };
}

function print();
  $display("@%0t : %s :",$time,name);
  $display("@%0t : A is %d",$time,A);  
  $display("@%0t : B is %d",$time,B);  
  $display("@%0t : op is %3b",$time,op);//enum do not need transform to bit[2:0]
endfunction



endclass

`endif
