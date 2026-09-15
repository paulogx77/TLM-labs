class ifb_driver extends uvm_driver;
  `uvm_component_utils(ifb_driver)
  virtual tb_if vif;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  // popular interface
    if(!uvm_config_db#(virtual vif)::get(this, "", "vif", vif))
      `uvm_fatal(get_type_name(), "drv - cant find vif")
  endfunction

  virtual task run_phase(uvm_phase phase);
    ifb_item tr;

    forever begin  
    // trasferir os dados da transacao para a interface
      
      seq_item_port.get_next_item(tr);

      @(posedge vif.clk);

      // vif.en <= tr.en;
      
      seq_item_port.item_done();
    end
  endtask

endclass