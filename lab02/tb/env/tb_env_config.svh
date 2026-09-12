class tb_env_config extends uvm_object;
  `uvm_component_utils(tb_env_config)

  uvm_active_passive_enum ifa_is_active = UVM_ACTIVE;
  uvm_active_passive_enum ifb_is_active = UVM_ACTIVE;

  function new(string name = "tb_env_config");
    super.new(name);
  endfunction

endclass