class tb_agent extends uvm_agent;
  `uvm_component_utils(tb_agent)
  
  tb_driver drv;
  tb_monitor mon;
  tb_sequencer sqr;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function build_phase(uvm_phase phase);
    super.build_phase(phase);

    mon = create::
  endfunction
endclass