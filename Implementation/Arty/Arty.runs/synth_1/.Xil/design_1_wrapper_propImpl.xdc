set_property SRC_FILE_INFO {cfile:C:/Users/ADMIN/OneDrive/GitHub/Optimization_RISC-V/Implementation/RISCVAIoT/SoC/SoCSource/constraints/al_accel.xdc rfile:../../../../RISCVAIoT/SoC/SoCSource/constraints/al_accel.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/ADMIN/OneDrive/GitHub/Optimization_RISC-V/Implementation/RISCVAIoT/SoC/SoCSource/constraints/al_ultra96v2.xdc rfile:../../../../RISCVAIoT/SoC/SoCSource/constraints/al_ultra96v2.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/ADMIN/OneDrive/GitHub/Optimization_RISC-V/Implementation/RISCVAIoT/SoC/SoCSource/constraints/ultra96v2.xdc rfile:../../../../RISCVAIoT/SoC/SoCSource/constraints/ultra96v2.xdc id:3} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.00 [get_ports clk]
set_property src_info {type:XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.00 [get_ports CLK]
set_property src_info {type:XDC file:3 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.00 [get_ports CLK]
set_property src_info {type:XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
foreach port [get_ports -filter {name =~ gpio_rtl_tri_io[*]}] {
set_property IOSTANDARD LVCMOS18 $port
}
