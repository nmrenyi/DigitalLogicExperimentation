onerror {quit -f}
vlib work
vlog -work work Light.vo
vlog -work work Light.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Light_vlg_vec_tst
vcd file -direction Light.msim.vcd
vcd add -internal Light_vlg_vec_tst/*
vcd add -internal Light_vlg_vec_tst/i1/*
add wave /*
run -all
