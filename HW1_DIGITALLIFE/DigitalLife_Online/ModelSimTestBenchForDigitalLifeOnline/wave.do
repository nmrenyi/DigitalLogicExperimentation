onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /digitallife_tb/reset
add wave -noupdate /digitallife_tb/clock
add wave -noupdate /digitallife_tb/even_out
add wave -noupdate /digitallife_tb/odd_out
add wave -noupdate /digitallife_tb/natural_out_encoded
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 213
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
WaveRestoreZoom {0 ns} {280 ns}
