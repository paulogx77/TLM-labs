class ifa_agent extends uvm_agent;
  `uvm_component_utils(ifa_agent)
  // what else :?
  //
  ifa_monitor amon;
  ifa_sequencer asqr;
  ifa_driver adrv;
  
  function new(sting name, uvm_component parent);
    super.new(name, parent);
  endfunction
 
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    amon = ifa_monitor::type_id::create("amon", this);

    if (is_active == UVM_ACTIVE) begin
      asqr = ifa_sequencer::type_id::create("asqr", this);
      adrv = ifa_driver::type_id::create("adrv", this);
    end
    
    `uvm_info("agt-dbg", "build phase override", UVM_NONE)
  endfunction

  virtual function void connect_phase(uvm_phase phase);
  endfunction
endclass