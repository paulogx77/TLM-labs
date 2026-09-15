class ifa_item extends uvm_sequence_item;
  `uvm_object_utils(ifa_item)
  
  //object
  
  function new(string name = "ifa_item");
    super.new(name);
  endfunction

  // phases doesn`t exists here
endclass