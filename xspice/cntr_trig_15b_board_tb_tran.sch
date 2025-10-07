v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 2340 -1530 4150 -840 {flags=graph,private_cursor
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clock
reset_n
trigger
b0
b1
b2
b3
b4
b5
b6
b7
b8
b9
b10
b11
b12
b13
b14"
color="4 12 7 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
hilight_wave=-1}
T {Testbench for transient analysis - 5-Bit Counter} 550 -1690 0 0 1 1 {}
N 740 -840 740 -800 {
lab=GND}
N 740 -1140 740 -1100 {
lab=VDD}
N 740 -1040 740 -1000 {
lab=GND}
N 740 -940 740 -900 {lab=clock}
N 740 -720 740 -680 {lab=reset_n}
N 740 -620 740 -580 {lab=GND}
N 1200 -1090 1240 -1090 {lab=clock}
N 1200 -1000 1240 -1000 {lab=reset_n}
N 1400 -1010 1560 -1010 {lab=b3}
N 1400 -1000 1460 -1000 {lab=b2}
N 1400 -990 1450 -990 {lab=b1}
N 1400 -980 1440 -980 {lab=b0}
N 1320 -1250 1320 -1230 {lab=VDD}
N 1320 -960 1320 -940 {lab=GND}
N 1400 -1020 1530 -1020 {lab=b4}
N 1400 -1030 1510 -1030 {lab=b5}
N 1400 -1160 1440 -1160 {lab=trigger}
N 1440 -980 1440 -940 {lab=b0}
N 1440 -940 1470 -940 {lab=b0}
N 1450 -990 1450 -960 {lab=b1}
N 1450 -960 1470 -960 {lab=b1}
N 1460 -1000 1460 -980 {lab=b2}
N 1460 -980 1470 -980 {lab=b2}
N 1400 -1040 1490 -1040 {lab=b6}
N 1400 -1050 1710 -1050 {lab=b7}
N 1400 -1070 1650 -1070 {lab=b9}
N 1400 -1060 1680 -1060 {lab=b8}
N 1400 -1080 1630 -1080 {lab=b10}
N 1400 -1090 1590 -1090 {lab=b11}
N 1400 -1100 1570 -1100 {lab=b12}
N 1400 -1110 1550 -1110 {lab=b13}
N 1400 -1120 1470 -1120 {lab=b14}
C {devices/vsource.sym} 740 -1070 0 0 {name=VDD value="1.5"}
C {devices/gnd.sym} 740 -1000 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 740 -1140 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 740 -870 0 0 {name=vclk value="pulse(0 1.5 0 10p 10p \{0.5/fclk\} \{1/fclk\})"
}
C {devices/lab_wire.sym} 740 -940 0 0 {name=p2 sig_type=std_logic lab=clock}
C {devices/gnd.sym} 740 -800 0 0 {name=l1 lab=GND}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1640 -1350 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1640 -1250 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/cntr_trig_15b_board_tb_tran.raw tran"
}
C {code_shown.sym} -470 -1760 0 0 {name=NGSPICE
only_toplevel=false
value="
*True Mixed Signal Simulation (.xspice)
.include /foss/designs/SG13G2_ASIC-Design-Template/xspice/cntr_trig_15b_board/cntr_trig_15b_board.xspice

.param temp=27
.param fclk=8000000
.options savecurrents
.control
save all

* Transient Analysis
tran 1n 1000u
write cntr_trig_15b_board_tb_tran.raw

plot v(clock) v(enable) v(reset_n)
plot v(b3) v(b2) v(b1) v(b0)

* Writing Data
set wr_singlescale
set wr_vecnames

let clock = clock
let reset_n = reset_n
let b0 = b0
let b1 = b1
let b2 = b2
let b3 = b3
let b4 = b4
let b5 = b5

wrdata /foss/designs/SG13G2_ASIC-Design-Template/python/plot_simulations/data/counter_board_tb_tran.txt clock enable reset_n b0 b1 b2 b3

set appendwrite

* Operating Point Analysis
op
remzerovec
write cntr_trig_15b_board_tb_tran.raw

quit
.endc"}
C {devices/lab_wire.sym} 740 -720 0 0 {name=p1 sig_type=std_logic lab=reset_n}
C {devices/gnd.sym} 740 -580 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 1200 -1090 0 0 {name=p3 sig_type=std_logic lab=clock}
C {devices/lab_wire.sym} 1200 -1000 0 0 {name=p4 sig_type=std_logic lab=reset_n}
C {devices/vsource.sym} 740 -650 0 0 {name=vrst value=0
}
C {devices/code_shown.sym} 80 -390 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1320 -940 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 1320 -1250 0 0 {name=l5 lab=VDD}
C {devices/launcher.sym} 1640 -1300 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1560 -1010 0 1 {name=p6 sig_type=std_logic lab=b3}
C {devices/lab_wire.sym} 1470 -980 0 1 {name=p7 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1470 -960 0 1 {name=p8 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1470 -940 0 1 {name=p9 sig_type=std_logic lab=b0}
C {devices/lab_wire.sym} 1530 -1020 0 1 {name=p5 sig_type=std_logic lab=b4}
C {devices/lab_wire.sym} 1510 -1030 0 1 {name=p10 sig_type=std_logic lab=b5}
C {devices/lab_wire.sym} 1440 -1160 0 1 {name=p12 sig_type=std_logic lab=trigger}
C {cntr_trig_15b_board.sym} 1320 -1170 0 0 {name=x1}
C {devices/lab_wire.sym} 1490 -1040 0 1 {name=p11 sig_type=std_logic lab=b6}
C {devices/lab_wire.sym} 1470 -1120 0 1 {name=p13 sig_type=std_logic lab=b14}
C {devices/lab_wire.sym} 1550 -1110 0 1 {name=p14 sig_type=std_logic lab=b13}
C {devices/lab_wire.sym} 1570 -1100 0 1 {name=p15 sig_type=std_logic lab=b12}
C {devices/lab_wire.sym} 1590 -1090 0 1 {name=p16 sig_type=std_logic lab=b11}
C {devices/lab_wire.sym} 1630 -1080 0 1 {name=p17 sig_type=std_logic lab=b10}
C {devices/lab_wire.sym} 1650 -1070 0 1 {name=p18 sig_type=std_logic lab=b9}
C {devices/lab_wire.sym} 1680 -1060 0 1 {name=p19 sig_type=std_logic lab=b8
}
C {devices/lab_wire.sym} 1710 -1050 0 1 {name=p20 sig_type=std_logic lab=b7}
