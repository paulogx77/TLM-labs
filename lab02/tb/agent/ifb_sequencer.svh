class ifb_sequencer extends uvm_sequencer #(ifb_item);
  `uvm_component_utils(ifb_sequencer)

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

endclass