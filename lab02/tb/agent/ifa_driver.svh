class ifa_driver extends uvm_driver;
  `uvm_component_utils(ifa_driver)
  
  virtual tb_if vif;
  // handle para interface static
  function new(string name, umv_component parent);
    super.new(name, parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual tb_if)::get(this, "", "vif", vif))
      `uvm_fatal(get_type_name(), "Fail - cant locate vif")
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    ifa_item tr;
    forever begin
      seq_item_port.get_next_item(tr);
      @(posedge vif.clk);
      // vif.en <= tr.en;
      seq_item_port.item_done();
    end
  endtask
endclass