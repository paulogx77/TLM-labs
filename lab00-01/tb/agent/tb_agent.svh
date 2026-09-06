class tb_agent extends uvm_agent;
  `uvm_component_utils(tb_agent)
  
  tb_driver drv;
  tb_monitor mon;
  tb_sequencer sqr;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    sqr = tb_sequencer::type_id::create("sqr", this);
    drv = tb_driver::type_id::create("drv", this);
    mon = tb_monitor::type_id::create("mon", this);
  endfunction
endclass