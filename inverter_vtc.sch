v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -50 -40 -50 {lab=V_IN}
N -110 0 -110 60 {lab=V_IN}
N -110 60 -40 60 {lab=V_IN}
N 0 0 0 30 {lab=V_OUT}
N -110 -50 -110 0 {lab=V_IN}
N 0 -20 0 0 {lab=V_OUT}
N 0 380 0 430 {lab=GND}
N 0 -50 110 -50 {lab=#net1}
N 0 -400 110 -400 {lab=#net1}
N 0 -400 0 -340 {lab=#net1}
N 0 60 110 60 {lab=GND}
N 0 380 110 380 {lab=GND}
N 0 -480 0 -400 {lab=#net1}
N 0 -0 430 -0 {lab=V_OUT}
N -0 340 0 380 {lab=GND}
N -370 -480 0 -480 {lab=#net1}
N 110 200 110 380 {lab=GND}
N -500 -480 -500 -240 {lab=#net1}
N -370 -480 -370 -430 {lab=#net1}
N -500 -480 -370 -480 {lab=#net1}
N -500 -180 -370 -180 {lab=GND}
N -370 -230 -370 -180 {lab=GND}
N -190 -280 -40 -280 {lab=#net2}
N -40 -280 -40 -200 {lab=#net2}
N 110 -200 110 -50 {lab=#net1}
N -190 -260 -190 200 {lab=#net3}
N -190 200 -40 200 {lab=#net3}
N 0 250 0 280 {lab=#net4}
N -110 -0 -90 -0 {lab=V_IN}
N -30 -0 -0 -0 {lab=V_OUT}
N -450 -0 -110 0 {lab=V_IN}
N -0 -200 110 -200 {lab=#net1}
N 110 -400 110 -200 {lab=#net1}
N -0 200 110 200 {lab=GND}
N 110 60 110 200 {lab=GND}
N -0 -280 0 -230 {lab=#net5}
N 0 -170 0 -80 {lab=M2_Source}
N 0 90 0 170 {lab=M1_Source}
N 0 250 90 250 {lab=#net4}
N 0 230 0 250 {lab=#net4}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 60 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -50 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ammeter.sym} 0 310 0 0 {name=Vmeas_NMOS savecurrent=true spice_ignore=0}
C {ammeter.sym} 0 -310 0 0 {name=Vmeas_PMOS savecurrent=true spice_ignore=0}
C {gnd.sym} 0 430 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 430 0 0 0 {name=p1 sig_type=std_logic lab=V_OUT}
C {devices/launcher.sym} 580 380 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 580 420 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/debug_clock_gen.raw tran"
}
C {devices/launcher.sym} 580 460 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_wire.sym} -150 0 0 0 {name=p2 sig_type=std_logic lab=V_IN}
C {vsource.sym} -500 -210 0 0 {name=VDD value=1.5}
C {gnd.sym} -500 -180 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -960 300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} -957.5 -477.5 0 0 {name=s1 only_toplevel=false value="
.include inverter_vtc.save
.control 

*save VDD#branch V_OUT
save all
dc V_IN 0 1.5 0.001 
plot V_OUT
plot i(Vmeas_PMOS)
plot i(Vmeas_NMOS)

*op


write inverter_vtc.raw

.endc
"}
C {vsource.sym} -450 30 0 0 {name=V_IN value=1.5
}
C {gnd.sym} -450 60 0 0 {name=l3 lab=GND
}
C {osc_bias.sym} -340 -350 0 0 {name=x2}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -200 0 0 {name=M7
l=10u
w=8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 200 0 0 {name=M8
l=10u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {res.sym} -60 0 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {sg13g2_pr/annotate_fet_params.sym} 410 -350 0 0 {name=annot1 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} 270 -190 0 0 {name=annot2 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 270 -350 0 0 {name=annot3 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 410 -180 0 0 {name=annot4 ref=M8}
C {lab_wire.sym} 0 -120 0 0 {name=p3 sig_type=std_logic lab=M2_Source}
C {lab_wire.sym} 0 130 0 0 {name=p4 sig_type=std_logic lab=M1_Source}
C {lab_wire.sym} 0 -120 0 0 {name=p5 sig_type=std_logic lab=M2_Source}
