class tb_baseline_test extends uvm_test;
  `uvm_component_utils(tb_baseline_test)
  
  tb_env env;

  function new(string name, uvm_component parent=null);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    env = tb_env::type_id::create("env", this);
  endfunction


endclass