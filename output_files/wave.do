onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /pipeline_tb/dut/clk
add wave -noupdate /pipeline_tb/dut/rst
add wave -noupdate -expand -group sim:/pipeline_tb/dut/fetch -radix hexadecimal /pipeline_tb/dut/pcsrce
add wave -noupdate -expand -group sim:/pipeline_tb/dut/fetch -radix hexadecimal /pipeline_tb/dut/pctargete
add wave -noupdate -expand -group sim:/pipeline_tb/dut/fetch -radix hexadecimal /pipeline_tb/dut/pcd
add wave -noupdate -expand -group sim:/pipeline_tb/dut/fetch -radix hexadecimal /pipeline_tb/dut/instrd
add wave -noupdate -expand -group sim:/pipeline_tb/dut/fetch -radix hexadecimal /pipeline_tb/dut/pcplus4d
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode -radix hexadecimal /pipeline_tb/dut/pce
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode -radix hexadecimal /pipeline_tb/dut/pcplus4e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/rd_e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/alucontrole
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/alusrce
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/branche
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/memwritee
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/regwritee
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/resultsrce
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/rd1_e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/rd2_e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/decode /pipeline_tb/dut/imm_ext_e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/alu_resultm
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/memwritem
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/rd_m
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/pcplus4m
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/regwritem
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/resultsrcm
add wave -noupdate -expand -group sim:/pipeline_tb/dut/execute /pipeline_tb/dut/writedatam
add wave -noupdate -expand -group sim:/pipeline_tb/dut/writeback /pipeline_tb/dut/regwritew
add wave -noupdate -expand -group sim:/pipeline_tb/dut/writeback /pipeline_tb/dut/rdw
add wave -noupdate -expand -group sim:/pipeline_tb/dut/writeback /pipeline_tb/dut/resultw
add wave -noupdate -expand -group sim:/pipeline_tb/dut/memory /pipeline_tb/dut/pcplus4w
add wave -noupdate -expand -group sim:/pipeline_tb/dut/memory /pipeline_tb/dut/resultsrcw
add wave -noupdate -expand -group sim:/pipeline_tb/dut/memory /pipeline_tb/dut/alu_resultw
add wave -noupdate -expand -group sim:/pipeline_tb/dut/memory /pipeline_tb/dut/readdataw
add wave -noupdate /pipeline_tb/dut/rs1_e
add wave -noupdate /pipeline_tb/dut/rs2_e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/regwritem
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/forwardae
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/forwardbe
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/regwritew
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/rd_m
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/rd_w
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/rs1_e
add wave -noupdate -expand -group sim:/pipeline_tb/dut/forwarding_block/hazard -radix hexadecimal /pipeline_tb/dut/forwarding_block/rs2_e
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {330 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 298
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {849 ps}
