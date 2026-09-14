class ifa_monitor extends uvm_monitor;
  `uvm_component_utils(ifa_monitor)
  virtual tb_if vif;

  uvm_analysis_port #(ifa_item) ap;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    ap = new("ap", this);
//uvm_config_db#(virtual tb_if)::get(contexto, nome_instancia, nome usado no set, a variavel q vai receber))
    if (!uvm_config_db#(virtual tb_if)::get(this, "", "vif", vif))
      `uvm_fatal(get_type_name(), "fail - cant find vif")
  endfunction

  virtual task run_phase(uvm_phase phase);
    ifa_item tr;
    forever begin
    // aqui eu deveria pegar os dados da interface e armazenar em tr
  
    tr = ifa_item::type_id::create("tr");
    ap.write(tr);  
    end
  endtask
endclass