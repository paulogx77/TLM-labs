module tb_top;
  
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  import tb_pkg::*;

  initial begin
    tb_baseline_test test = tb_baseline_test::type_id::create("test", null);
    run_test();
  end
endmodule