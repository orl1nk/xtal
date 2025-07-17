v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 760 -250 1560 150 {flags=graph
y1=-0.0056
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=v_out
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 760 150 1560 550 {flags=graph
y1=-7.1e-07
y2=-9.5e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vdd)
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 760 -1050 1560 -650 {flags=graph
y1=0.016
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.stage_1
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 760 -650 1560 -250 {flags=graph
y1=-0.0015
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.stage_2
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -40 -1050 760 -650 {flags=graph
y1=0.97
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.net1
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -840 -1050 -40 -650 {flags=graph
y1=4.4e-08
y2=0.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=net1}
N -260 0 -260 50 {lab=#net1}
N -260 -0 -130 0 {lab=#net1}
N -20 50 -20 110 {lab=GND}
N 100 -0 150 -0 {lab=V_OUT}
N -20 -80 -20 -50 {lab=VDD}
N -580 -350 -540 -350 {lab=cfg_1}
N -580 -250 -540 -250 {lab=cfg_2}
N -580 -140 -540 -140 {lab=cfg_3}
N -220 -170 -0 -170 {lab=GND}
N 0 -240 0 -170 {lab=GND}
N -40 -240 0 -240 {lab=GND}
N -40 -220 40 -220 {lab=#net2}
N 40 -220 40 -110 {lab=#net2}
N -80 -110 40 -110 {lab=#net2}
N -80 -110 -80 -50 {lab=#net2}
N -40 -200 -40 -130 {lab=#net3}
N -150 -130 -40 -130 {lab=#net3}
N -150 -130 -150 50 {lab=#net3}
N -150 50 -80 50 {lab=#net3}
C {vsource.sym} -540 -10 0 0 {name=VDD value=1.5}
C {gnd.sym} -540 20 0 0 {name=l1 lab=GND}
C {gnd.sym} -20 110 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -540 -40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -260 80 0 0 {name=V_IN value="SIN(100m 100m 32768)"}
C {gnd.sym} -260 110 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -440 240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} 320 -440 0 0 {name=s1 only_toplevel=false value="
.control 

*save VDD#branch V_OUT
save all
*dc V_IN 0 1.5 0.001 
tran 0.00001m 0.1m
plot V_OUT
*op
write clock_gen.raw

.endc
"}
C {devices/launcher.sym} 220 180 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 220 240 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/clock_gen.raw tran"
}
C {clock_gen.sym} -50 0 0 0 {name=x1}
C {lab_pin.sym} 150 0 2 0 {name=p4 sig_type=std_logic lab=V_OUT}
C {osc_bias.sym} -190 -290 0 0 {name=x2}
C {lab_pin.sym} -20 -80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -370 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} -220 -170 0 0 {name=l4 lab=GND}
C {vsource.sym} -540 -320 0 0 {name=V_CFG_1 value=0}
C {vsource.sym} -540 -220 0 0 {name=V_CFG_2 value=1.5}
C {vsource.sym} -540 -110 0 0 {name=V_CFG_3 value=1.5}
C {gnd.sym} -540 -290 0 0 {name=l5 lab=GND}
C {gnd.sym} -540 -190 0 0 {name=l6 lab=GND}
C {gnd.sym} -540 -80 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -580 -350 0 0 {name=p5 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -580 -250 0 0 {name=p6 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -580 -140 0 0 {name=p7 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} -40 -320 2 0 {name=p8 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -40 -300 2 0 {name=p9 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -40 -280 2 0 {name=p10 sig_type=std_logic lab=cfg_3}
C {devices/launcher.sym} 220 300 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
