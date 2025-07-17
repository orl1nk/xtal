v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
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
N -160 200 40 200 {lab=#net4}
N 40 140 40 200 {lab=#net4}
N 120 200 120 400 {lab=GND}
N -310 400 120 400 {lab=GND}
N 270 -320 270 -230 {lab=#net2}
N 270 -170 270 -0 {lab=#net5}
N -940 220 -900 220 {lab=cfg_1}
N -940 320 -900 320 {lab=cfg_2}
N -750 230 -710 230 {lab=cfg_3}
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
C {devices/code_shown.sym} -980 500 0 0 {name=MODEL only_toplevel=true
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
C {vsource.sym} -900 250 0 0 {name=V_CFG_1 value=0}
C {vsource.sym} -900 350 0 0 {name=V_CFG_2 value=1.5}
C {vsource.sym} -710 260 0 0 {name=V_CFG_3 value=1.5}
C {gnd.sym} -900 280 0 0 {name=l2 lab=GND}
C {gnd.sym} -900 380 0 0 {name=l3 lab=GND}
C {gnd.sym} -710 290 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -940 220 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -940 320 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -750 230 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 150 -400 2 0 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 150 -380 2 0 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} 150 -360 2 0 {name=p6 sig_type=std_logic lab=cfg_3}
C {ammeter.sym} 270 -200 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/ngspice_get_value.sym} 230 240 0 1 {name=r4 node=@n.x3.xm1.nsg13_lv_nmos[gm]
descr="gm="}
