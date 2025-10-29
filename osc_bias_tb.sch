v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 190 0 220 {lab=GND}
N -270 -140 -270 -30 {lab=#net1}
N 100 10 160 10 {lab=#net2}
N 100 30 140 30 {lab=#net3}
N 100 -10 280 -10 {lab=#net4}
N 280 -10 280 30 {lab=#net4}
N -270 -140 -80 -140 {lab=#net1}
N -80 190 0 190 {lab=GND}
N -80 60 -80 190 {lab=GND}
N -270 190 -80 190 {lab=GND}
N 280 90 280 190 {lab=GND}
N -270 30 -270 190 {lab=GND}
N 0 190 280 190 {lab=GND}
C {vsource.sym} -270 0 0 0 {name=VDD value=1.5}
C {devices/code_shown.sym} -610 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 290 -250 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 290 -210 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} -610 -400 0 0 {name=s1 only_toplevel=false 
value="
.include osc_bias_tb.save
.save i(vmeas)
.control 

save all

*tran 1ms 0.5s
*plot i(vmeas)

op
write osc_bias_tb.raw
*set appendwrite

.endc
"}
C {devices/launcher.sym} 290 -160 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_bias_tb.sch"
}
C {osc_bias.sym} -50 -60 0 0 {name=x1}
C {vsource.sym} -620 -40 0 0 {name=V_CFG_1 value=0
spice_ignore=true}
C {vsource.sym} -620 60 0 0 {name=V_CFG_2 value="PULSE(1.5 0 200m)"
spice_ignore=true}
C {vsource.sym} -430 -30 0 0 {name=V_CFG_3 value="PULSE(1.5 0 300m)"
spice_ignore=true}
C {gnd.sym} -620 -10 0 0 {name=l2 lab=GND
spice_ignore=true}
C {gnd.sym} -620 90 0 0 {name=l3 lab=GND
spice_ignore=true}
C {gnd.sym} -430 0 0 0 {name=l4 lab=GND
spice_ignore=true}
C {lab_pin.sym} -620 -70 0 0 {name=p1 sig_type=std_logic lab=cfg_1
spice_ignore=true}
C {gnd.sym} 0 220 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -620 30 0 0 {name=p2 sig_type=std_logic lab=cfg_2
spice_ignore=true}
C {lab_pin.sym} -430 -60 0 0 {name=p3 sig_type=std_logic lab=cfg_3
spice_ignore=true}
C {lab_pin.sym} 100 -90 0 1 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 100 -70 0 1 {name=p5 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 100 -50 0 1 {name=p6 sig_type=std_logic lab=cfg_2}
C {sg13g2_pr/annotate_fet_params.sym} 660 -240 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 500 -240 0 0 {name=annot2 ref=M2}
C {vsource.sym} -610 290 0 0 {name=V_CFG_4 value=0
}
C {vsource.sym} -610 390 0 0 {name=V_CFG_5 value=1.5}
C {vsource.sym} -420 300 0 0 {name=V_CFG_6 value=1.5}
C {gnd.sym} -610 320 0 0 {name=l1 lab=GND}
C {gnd.sym} -610 420 0 0 {name=l6 lab=GND}
C {gnd.sym} -420 330 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -610 260 0 0 {name=p7 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -610 360 0 0 {name=p8 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -420 270 0 0 {name=p9 sig_type=std_logic lab=cfg_3}
C {ammeter.sym} 280 60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource.sym} -420 390 0 0 {name=V_CFG_7 value=0}
C {gnd.sym} -420 420 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -420 360 0 0 {name=p10 sig_type=std_logic lab=enable_bias}
C {lab_pin.sym} -130 -90 0 0 {name=p11 sig_type=std_logic lab=enable_bias}
