# Five_stage_pipelined_RISC-5

>Designed a 32-bit pipelined processor by subdividing the 
single-cycle processor into five pipeline stages 
i.e,fetch, decode, execute, memory write and register write back.
Thus, five instructions can execute simultaneously, 
one in each stage. Because each stage has only 
one-fifth of the entire logic, the clock frequency is 
approximately five times faster.

>Implemented modules for each stage in Verilog.

>Checked pipeline hazards and implemented hazard unit.

>Built Top-level Pipeline module and test bench for the same.

>Simulated and verified the design for a given set of instructons using Modelsim-Altera.
