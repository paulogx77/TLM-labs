module tb_top;
  
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  initial begin
    run_test("tb_baseline_test");
  end
endmodule