#compilation
vlog tb.v
#elloaboration
vsim tb
#addition of wave form
add wave -position insertpoint sim:/tb/dut/*
#run the simulation
run -all

