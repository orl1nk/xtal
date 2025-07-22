v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 30 -210 120 {lab=GND}
N 0 120 170 120 {lab=GND}
N 0 120 0 150 {lab=GND}
N 170 -10 170 30 {lab=#net1}
N 170 90 170 120 {lab=GND}
N -210 -140 -210 -30 {lab=#net2}
N 100 -10 170 -10 {lab=#net1}
N -80 120 -0 120 {lab=GND}
N -210 -140 290 -140 {lab=#net2}
N -80 60 -80 120 {lab=GND}
N -210 120 -80 120 {lab=GND}
N 290 -140 290 -60 {lab=#net2}
N 290 -30 300 -30 {lab=#net2}
N 300 -140 300 -30 {lab=#net2}
N 290 -140 300 -140 {lab=#net2}
N 290 0 290 130 {lab=GND}
N 170 130 290 130 {lab=GND}
N 170 120 170 130 {lab=GND}
N 480 90 480 140 {lab=GND}
N 290 140 480 140 {lab=GND}
N 290 130 290 140 {lab=GND}
N 480 60 500 60 {lab=GND}
N 500 60 500 140 {lab=GND}
N 480 140 500 140 {lab=GND}
N 250 10 250 20 {lab=#net3}
N 100 10 250 10 {lab=#net3}
N 250 -30 250 10 {lab=#net3}
N 480 -140 480 30 {lab=#net2}
N 300 -140 480 -140 {lab=#net2}
N 100 30 100 100 {lab=#net4}
N 100 100 430 100 {lab=#net4}
N 430 60 430 100 {lab=#net4}
N 430 60 440 60 {lab=#net4}
C {vsource.sym} -210 0 0 0 {name=VDD value=1.5}
C {devices/code_shown.sym} -610 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 290 -260 0 0 {name=h3
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
C {ammeter.sym} 170 60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/launcher.sym} 290 -160 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_bias_tb.sch"
}
C {osc_bias.sym} -50 -60 0 0 {name=x1}
C {vsource.sym} -620 -40 0 0 {name=V_CFG_1 value=0}
C {vsource.sym} -620 60 0 0 {name=V_CFG_2 value="PULSE(1.5 0 200m)"}
C {vsource.sym} -430 -30 0 0 {name=V_CFG_3 value="PULSE(1.5 0 300m)"}
C {gnd.sym} -620 -10 0 0 {name=l2 lab=GND}
C {gnd.sym} -620 90 0 0 {name=l3 lab=GND}
C {gnd.sym} -430 0 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -620 -70 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {gnd.sym} 0 150 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -620 30 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -430 -60 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 100 -90 0 1 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 100 -70 0 1 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} 100 -50 0 1 {name=p6 sig_type=std_logic lab=cfg_3}
C {sg13g2_pr/sg13_lv_nmos.sym} 460 60 0 0 {name=M1
l=10u
w=0.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -30 0 0 {name=M2
l=10u
w=0.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/annotate_fet_params.sym} 660 -240 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 500 -240 0 0 {name=annot2 ref=M2}
