onerror {quit -f}
vlib work
vlog -work work TEF.vo
vlog -work work TEF.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TEF_vlg_vec_tst
vcd file -direction TEF.msim.vcd
vcd add -internal TEF_vlg_vec_tst/*
vcd add -internal TEF_vlg_vec_tst/i1/*
add wave /*
run -all
