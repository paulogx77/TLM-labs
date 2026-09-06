class tb_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(tb_scoreboard)
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

endclass