module tb_top;
  import uvm_pkg::*;
  `include "uvm_macro.svh"

  import tb_pkg::*;

  

  tb_if if0;
  
  initial begin
  uvm_config_db#(virtual if0)::set(null, "*", "vif", if0);
  run_test();
  
  end

endmodule