# Cadence Genus(TM) Synthesis Solution, Version 19.11-s087_1, built Aug 13 2019 11:48:07

# Date: Mon Sep 23 19:20:05 2024
# Host: Entuple-Client-2 (x86_64 w/Linux 3.10.0-1160.31.1.el7.x86_64) (2cores*4cpus*1physical cpu*AMD EPYC 7571 512KB)
# OS:   Red Hat Enterprise Linux Server release 7.9 (Maipo)

read_lib /cad/FOUNDRY/digital/90nm/dig/lib/slow.lib
read_hdl abp_uart_gln.v
read_hdl apb_uart_gln.v
elaborate
elaborate
create_clock -name clk -period 2
set_clock_transition -rise 0.01 [get_clocks "clk"]
set_clock_transition -fall 0.01 [get_clocks "clk"]
set_clock_uncentainity 0.05 [get_clocks "clk"]
set_clock_uncertainty 0.05 [get_clocks "clk"]
set_input -max 1.0 [get_port "rst"] -clock [get_clocks "clk"]
set_input_delay -max 1.0 [get_clocks "clk"]
set_input_delay -max 1.0
syn_generic
write_hdl
syn_map
write_map
syn_map
write_hdl
syn_map
write_hdl
report_area
syn_opt
write_hdl syn.v
write_hdl > syn.v
write_sdc > syn.sdc
report_gates
report_gates -power
report_timing
check_timing_intent
report timing -lint
report_timing
gui_show