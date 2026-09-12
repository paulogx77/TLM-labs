class tb_env extends uvm_env;
  `uvm_component_utils(tb_env)
  
  tb_env_config cfg;

  ifa_agent ifa_agent0;
  ifb_agent ifb_agent0;
  tb_scoreboard scb;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    if (!uvm_config_db#(reg_env_config)::get(this, "", "cfg", cfg))
      `uvm_fatal(get_type_name(), "Didn't get reg_env_config from config_db")

    ifa_agent0 = ifa_agent::type_id::create("ifa_agent0", this);
    ifb_agent0 = ifb_agent::type_id::create("ifb_agent0", this);
    scb        = reg_scoreboard::type_id::create("scb", this);
    sub        = reg_subscriber::type_id::create("sub", this);

    ifa_agent0.is_active = cfg.ifa_is_active;
    ifb_agent0.is_active = cfg.ifb_is_active;
  endfunction

  virtual function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    uvm_top.print_topology();
  endfunction

endclass