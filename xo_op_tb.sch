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
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/osc_core_transient_v3_tb.raw
sim_type=tran}
B 2 800 30 1600 430 {flags=graph
y1=-7e-08
y2=8.1e-22
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/osc_core_transient_v3_tb.raw
sim_type=tran
color=5
node=i(vdd)}
N 120 400 120 440 {lab=GND}
N -520 -40 -520 400 {lab=GND}
N -310 -290 -310 400 {lab=GND}
N -520 400 -310 400 {lab=GND}
N -30 -490 -30 -450 {lab=#net1}
N -520 -490 -30 -490 {lab=#net1}
N -520 -490 -520 -100 {lab=#net1}
N -310 -290 -30 -290 {lab=GND}
N 150 -320 270 -320 {lab=#net2}
N -160 30 40 30 {lab=#net3}
N 40 30 40 60 {lab=#net3}
N -160 200 40 200 {lab=#net4}
N 40 140 40 200 {lab=#net4}
N 120 200 120 400 {lab=GND}
N -310 400 120 400 {lab=GND}
N 270 -320 270 -230 {lab=#net2}
N 270 -170 270 -0 {lab=#net5}
N -510 510 -470 510 {lab=cfg_1}
N -510 610 -470 610 {lab=cfg_2}
N -320 520 -280 520 {lab=cfg_3}
N 340 90 490 90 {lab=output_debug}
C {gnd.sym} 120 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 350 -380 0 0 {name=s1 only_toplevel=false 
value="
.include xo_op_tb.save
.control 
*.save @n.x3.xm1.nsg13_lv_nmos[gm]
save all

op
write xo_op_tb.raw

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
C {vsource.sym} -520 -70 0 0 {name=VDD value=1.5}
C {devices/launcher.sym} 460 420 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_core_transient_v3_tb.raw tran"
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
C {lab_pin.sym} -510 510 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -510 610 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -320 520 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 150 -400 2 0 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 150 -380 2 0 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} 150 -360 2 0 {name=p6 sig_type=std_logic lab=cfg_3}
C {ammeter.sym} 270 -200 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/ngspice_get_value.sym} 230 240 0 1 {name=r4 node=@n.x3.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {lab_pin.sym} 490 90 2 0 {name=p7 sig_type=std_logic lab=output_debug}
