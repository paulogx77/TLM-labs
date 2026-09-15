class ifb_agent extends uvm_agent;
  `uvm_component_utils(ifa_agent)
  // what else :?
  //
  ifb_monitor bmon;
  ifb_sequencer bsqr;
  ifb_driver bdrv;
  
  function new(sting name, uvm_component parent);
    super.new(name, parent);
  endfunction
 
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    bmon = ifb_monitor::type_id::create("bmon", this);

    if (is_active == UVM_ACTIVE) begin
      bsqr = ifb_sequencer::type_id::create("bsqr", this);
      bdrv = ifb_driver::type_id::create("bdrv", this);
    end
    
    `uvm_info("agtB-dbg", "build phase override", UVM_NONE)
  endfunction

  virtual function void connect_phase(uvm_phase phase);
  endfunction
endclass