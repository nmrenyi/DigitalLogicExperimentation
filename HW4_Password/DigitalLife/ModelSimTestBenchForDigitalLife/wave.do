onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /digitallife_tb/reset
add wave -noupdate /digitallife_tb/clock
add wave -noupdate /digitallife_tb/natural_out_hex
add wave -noupdate /digitallife_tb/natural_out
add wave -noupdate /digitallife_tb/even_out
add wave -noupdate /digitallife_tb/odd_out
add wave -noupdate /digitallife_tb/natural_out_encoded
add wave -noupdate /digitallife_tb/even_out_encoded
add wave -noupdate /digitallife_tb/odd_out_encoded
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 212
configure wave -valuecolwidth 38
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {275 ns}
