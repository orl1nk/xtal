v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 800 -400 1600 0 {flags=graph
y1=-4.9e-19
y2=0.59
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/xo_transient_tb.raw
sim_type=tran
color=4
node=v_out}
B 2 800 30 1600 430 {flags=graph
y1=-9.8e-08
y2=-2.8e-08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1
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
N 120 400 120 440 {lab=GND}
N -520 -40 -520 400 {lab=GND}
N -310 -250 -310 400 {lab=GND}
N -520 400 -310 400 {lab=GND}
N -30 -490 -30 -450 {lab=#net1}
N -520 -490 -30 -490 {lab=#net1}
N -520 -490 -520 -100 {lab=#net1}
N -310 -250 -30 -250 {lab=GND}
N 150 -320 270 -320 {lab=#net2}
N -160 30 40 30 {lab=#net3}
N 40 30 40 60 {lab=#net3}
N -160 200 40 200 {lab=V_OUT}
N 40 140 40 200 {lab=V_OUT}
N 120 200 120 400 {lab=GND}
N -310 400 120 400 {lab=GND}
N 270 -320 270 -230 {lab=#net2}
N 270 -170 270 -0 {lab=#net4}
N 40 200 40 270 {lab=V_OUT}
C {gnd.sym} 120 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 340 -410 0 0 {name=s1 only_toplevel=false 
value="

.control 

save V_OUT VDD#branch
tran 0.0005m 2s
plot V_OUT
write xo_transient_tb.raw

.endc
"}
C {devices/code_shown.sym} -520 760 0 0 {name=MODEL only_toplevel=true
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
C {vsource.sym} -520 -70 0 0 {name=VDD value="PULSE(0 1.5 1u)"}
C {devices/launcher.sym} 460 420 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/xo_transient_tb.raw tran"
}
C {osc_bias.sym} 0 -370 0 0 {name=x1}
C {xtal_model.sym} -170 120 1 0 {name=x2}
C {xo_core.sym} 190 100 0 0 {name=x3}
C {vsource.sym} -470 540 0 0 {name=V_CFG_1 value=0}
C {vsource.sym} -470 640 0 0 {name=V_CFG_2 value=1.5}
C {vsource.sym} -280 550 0 0 {name=V_CFG_3 value=1.5}
C {gnd.sym} -470 570 0 0 {name=l2 lab=GND}
C {gnd.sym} -470 670 0 0 {name=l3 lab=GND}
C {gnd.sym} -280 580 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -470 510 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -470 610 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -280 520 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 150 -400 2 0 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 150 -380 2 0 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} 150 -360 2 0 {name=p6 sig_type=std_logic lab=cfg_3}
C {ammeter.sym} 270 -200 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 40 270 2 0 {name=p7 sig_type=std_logic lab=V_OUT}
