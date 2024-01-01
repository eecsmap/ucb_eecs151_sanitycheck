build:
	vivado -nolog -nojournal -mode batch -source build.tcl

test:
	iverilog -g2012 -o testbench.tbi testbench.v z1top.v
	vvp testbench.tbi -fst

clean:
	$(RM) -r .Xil
	$(RM) webtalk* usage_statistics_webtalk*
	$(RM) *.fst *.tbi *.bit *.dcp
