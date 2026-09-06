class tb_baseline_test extends uvm_test;
  `uvm_component_utils(tb_baseline_test)
  
  tb_env env;

  function new(string name, uvm_component parent=null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    repeat(10) 
      `uvm_info("dbg", "build_phase override", UVM_NONE)


    env = tb_env::type_id::create("env", this);
    uvm_top.print_topology();
  endfunction

  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    repeat(10)
      `uvm_info(get_name(), "[dbg] connect_phase override", UVM_NONE)
    
  endfunction
  
  virtual function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction
endclass