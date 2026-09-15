class ifb_item extends uvm_sequence_item;
  `uvm_object_utils(ifb_item)
  
  function new(string name = "ifb_item");
    super.new(name);
  endfunction
endclass