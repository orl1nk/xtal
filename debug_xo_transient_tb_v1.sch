v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 800 -400 1600 0 {flags=graph
y1=0.0034
y2=0.0037
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/debug_xo_transient_tb.raw
sim_type=tran
color=4
node=v_out}
B 2 800 30 1600 430 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
color=7
node=i(vdd)}
B 2 800 -800 1600 -400 {flags=graph
y1=1
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/debug_xo_transient_tb.raw
sim_type=tran
color=4
node=net3}
N 120 400 120 440 {lab=GND}
N -520 -40 -520 400 {lab=GND}
N -520 400 -310 400 {lab=GND}
N -520 -490 -520 -100 {lab=#net1}
N -310 -90 -310 400 {lab=GND}
N -160 30 40 30 {lab=#net2}
N 40 30 40 60 {lab=#net2}
N -160 200 40 200 {lab=V_OSC}
N 40 140 40 200 {lab=V_OSC}
N 120 200 120 400 {lab=GND}
N -310 400 120 400 {lab=GND}
N 40 200 40 270 {lab=V_OSC}
N -310 -490 -310 -460 {lab=#net1}
N -520 -490 -310 -490 {lab=#net1}
N -310 -490 330 -490 {lab=#net1}
N -310 -260 -310 -90 {lab=GND}
N -130 -330 -80 -330 {lab=#net3}
N -80 -330 -80 -40 {lab=#net3}
N -80 -40 270 -40 {lab=#net3}
N 270 -40 270 -0 {lab=#net3}
N -310 -90 330 -90 {lab=GND}
N 330 -280 330 -90 {lab=GND}
N 330 -490 330 -320 {lab=#net1}
N -130 -310 -110 -310 {lab=#net4}
N -130 -290 -110 -290 {lab=#net5}
C {gnd.sym} 120 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 360 -600 0 0 {name=s1 only_toplevel=false 
value="

.control 
*save all
save V_OSC V_OUT VDD#branch 
tran 0.005m 0.5s
plot V_OUT
write debug_xo_transient_tb.raw

.endc
"}
C {devices/code_shown.sym} -900 360 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 460 340 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 460 380 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} -520 -70 0 0 {name=VDD value="PULSE(0 1.5 1m 1n)"}
C {devices/launcher.sym} 460 420 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/debug_xo_transient_tb.raw tran"
}
C {osc_bias.sym} -280 -380 0 0 {name=x1}
C {xtal_model.sym} -170 120 1 0 {name=x2}
C {xo_core.sym} 190 100 0 0 {name=x3}
C {vsource.sym} -850 140 0 0 {name=V_CFG_1 value=0}
C {vsource.sym} -850 240 0 0 {name=V_CFG_2 value=0}
C {vsource.sym} -660 150 0 0 {name=V_CFG_3 value=1.5}
C {gnd.sym} -850 170 0 0 {name=l2 lab=GND}
C {gnd.sym} -850 270 0 0 {name=l3 lab=GND}
C {gnd.sym} -660 180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -850 110 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -850 210 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -660 120 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} -130 -410 2 0 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -130 -390 2 0 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -130 -370 2 0 {name=p6 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 40 270 2 0 {name=p7 sig_type=std_logic lab=V_OSC}
C {lab_pin.sym} 30 -320 0 0 {name=p8 sig_type=std_logic lab=V_OSC}
C {lab_pin.sym} 330 -300 2 0 {name=p9 sig_type=std_logic lab=V_OUT}
C {clock_gen_v1.sym} 180 -300 0 0 {name=x4
}
