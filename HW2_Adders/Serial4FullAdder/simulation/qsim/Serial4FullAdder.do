onerror {quit -f}
vlib work
vlog -work work Serial4FullAdder.vo
vlog -work work Serial4FullAdder.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Serial4FullAdder_vlg_vec_tst
vcd file -direction Serial4FullAdder.msim.vcd
vcd add -internal Serial4FullAdder_vlg_vec_tst/*
vcd add -internal Serial4FullAdder_vlg_vec_tst/i1/*
add wave /*
run -all
