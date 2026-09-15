class ifb_monitor extends uvm_monitor;
  `uvm_component_utils(ifb_monitor)
  // pega a trasnacao e envia na analysis port
  virtual tb_if vif;
  
  uvm_analysis_port#(ifb_item) ap;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual tb_if)::get(this, "", "vif", vif))
      `uvm_fatal(get_type_name(), "mon - vif nao encontrada")
  
  endfunction

  virtual task run_phase(uvm_phase phase);
    ifb_item tr;
    forever begin
     // tr <= vif
    tr = ifb_item::type_id::create("tr");
    ap.write(tr);
    end
  
  endtask


endclass