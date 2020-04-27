onerror {quit -f}
vlib work
vlog -work work Counter.vo
vlog -work work Counter.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Counter_vlg_vec_tst
vcd file -direction Counter.msim.vcd
vcd add -internal Counter_vlg_vec_tst/*
vcd add -internal Counter_vlg_vec_tst/i1/*
add wave /*
run -all
