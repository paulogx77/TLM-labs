class tb_baseline_test extends uvm_test;
  `uvm_component_utils(tb_baseline_test)

  tb_env env;
  tb_env_config cfg;

  function new(string name);
    super.new(name);
  endfunction

  virtual function void set_cfg();
    cfg.ifa_is_active = UVM_ACTIVE;
    cfg.ifb_is_active = UVM_ACTIVE;
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    cfg = tb_env_config::type_id::create("cfg");
    set_cfg();

    uvm_config_db#(tb_env_config)::set(null, "*", "cfg", cfg);
    env = tb_env::type_id::create("env", this);
  endfunction

endclass