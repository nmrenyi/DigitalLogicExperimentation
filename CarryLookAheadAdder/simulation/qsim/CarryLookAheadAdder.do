onerror {quit -f}
vlib work
vlog -work work CarryLookAheadAdder.vo
vlog -work work CarryLookAheadAdder.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CarryLookAheadAdder_vlg_vec_tst
vcd file -direction CarryLookAheadAdder.msim.vcd
vcd add -internal CarryLookAheadAdder_vlg_vec_tst/*
vcd add -internal CarryLookAheadAdder_vlg_vec_tst/i1/*
add wave /*
run -all
