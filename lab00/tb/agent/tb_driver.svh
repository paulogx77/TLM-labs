class tb_driver extends uvm_driver;
  `uvm_component_utils(tb_driver)
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("drvrun", "driver on", UVM_NONE)
  endfunction

  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);
  endtask


endclass