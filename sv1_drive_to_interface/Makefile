#############################################
# Verilog \ SystemVerilog simulation script # 
# 2019-07-27																#
#############################################

files = filelist
comp_log = comp.log
sim_log = sim.log
defines = 
cov_opt = line+tgl+fsm+cond

compile_options = -sverilog +v2k  -f filelist	\
									-debug_all	\
					+vcs+vcdpluson -timescale="1ns/1ps" \
				+define+${defines}	\
					-l ${comp_log}
runtime_options = 	\
				-cm ${cov_opt}	\
				-l ${sim_log}

compile_option=-sverilog -f filelist
run: vcs sim

vcs:
	vcs ${compile_options}


sim:
	./simv ${runtime_options}
	
urg:
	urg -dir simv.vdb -report both

dve:
	dve -vpd *.vpd&

.PHONY:clean
clean:
	rm -rf csrc simv ucli.key simv.daidir
	rm -rf simv.vdb vc_hdrs.h
	rm -rf *.log
	rm -rf *.vpd
	rm -rf DVE*
