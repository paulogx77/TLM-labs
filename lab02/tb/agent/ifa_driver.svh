class ifa_driver extends uvm_driver;

    function new(string name, umv_component parent);
      super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
      super.run_phase(phase);
     
    endtask


endclass