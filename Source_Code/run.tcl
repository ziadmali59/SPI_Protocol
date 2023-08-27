create_project SPI F:/Digital_Design_Course/Source_Code -part xc7a35ticpg236-1L -force

add_files Memory.v P2s.v S2P.v SPI_Slave.v SPI_Top.v SPI_TB.v TEST1.mem basys_master.xdc

synth_design -rtl -top SPI_Top > elab.log

write_schematic elaborated_schematic.pdf -format pdf -force 

launch_runs synth_1 > synth.log

wait_on_run synth_1
open_run synth_1

write_schematic synthesized_schematic.pdf -format pdf -force 

write_verilog -force SPI_Netlist.v

launch_runs impl_1 -to_step write_bitstream 

wait_on_run impl_1
open_run impl_1

open_hw

connect_hw_server