v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -50 -40 -50 {lab=V_IN}
N -110 0 -110 60 {lab=V_IN}
N -110 60 -40 60 {lab=V_IN}
N 0 0 0 30 {lab=V_OUT_STAGE_1}
N -110 -50 -110 0 {lab=V_IN}
N 0 -20 0 0 {lab=V_OUT_STAGE_1}
N 0 380 0 430 {lab=GND}
N 0 -50 110 -50 {lab=#net1}
N 0 -400 110 -400 {lab=#net1}
N 0 -400 0 -340 {lab=#net1}
N 0 60 110 60 {lab=GND}
N 0 380 110 380 {lab=GND}
N 0 -480 0 -400 {lab=#net1}
N -0 340 0 380 {lab=GND}
N -500 -480 0 -480 {lab=#net1}
N -110 -0 -90 -0 {lab=V_IN}
N -30 -0 -0 -0 {lab=V_OUT_STAGE_1}
N 110 -400 110 -50 {lab=#net1}
N 110 60 110 380 {lab=GND}
N -500 -480 -500 -240 {lab=#net1}
N 0 -280 0 -240 {lab=#net2}
N 0 -180 0 -80 {lab=M2_Source}
N 0 90 0 160 {lab=M1_Source}
N 0 220 0 280 {lab=#net3}
N -670 0 -670 20 {lab=V_IN1}
N -450 0 -110 0 {lab=V_IN}
N -450 0 -450 20 {lab=V_IN}
N -560 -0 -450 0 {lab=V_IN}
N -670 -0 -610 -0 {lab=V_IN1}
N 250 0 250 30 {lab=V_OUT_STAGE_2}
N 250 -20 250 0 {lab=V_OUT_STAGE_2}
N 250 -50 360 -50 {lab=#net1}
N 250 -480 360 -480 {lab=#net1}
N 250 60 360 60 {lab=GND}
N 250 430 360 430 {lab=GND}
N 250 -480 250 -340 {lab=#net1}
N 250 340 250 430 {lab=GND}
N 360 -480 360 -50 {lab=#net1}
N 250 -280 250 -240 {lab=#net4}
N 250 -180 250 -80 {lab=#net5}
N 250 90 250 160 {lab=#net6}
N 250 220 250 280 {lab=#net7}
N 0 -480 250 -480 {lab=#net1}
N 0 430 250 430 {lab=GND}
N 180 -50 210 -50 {lab=V_OUT_STAGE_1}
N 180 -0 180 60 {lab=V_OUT_STAGE_1}
N 180 60 210 60 {lab=V_OUT_STAGE_1}
N -0 -0 180 -0 {lab=V_OUT_STAGE_1}
N 180 -50 180 -0 {lab=V_OUT_STAGE_1}
N 560 0 560 30 {lab=V_OUT}
N 560 -20 560 0 {lab=V_OUT}
N 560 -50 670 -50 {lab=#net1}
N 560 60 670 60 {lab=GND}
N 670 -480 670 -50 {lab=#net1}
N 560 0 750 0 {lab=V_OUT}
N 490 -50 520 -50 {lab=V_OUT_STAGE_2}
N 490 0 490 60 {lab=V_OUT_STAGE_2}
N 490 60 520 60 {lab=V_OUT_STAGE_2}
N 490 -50 490 0 {lab=V_OUT_STAGE_2}
N 250 0 490 0 {lab=V_OUT_STAGE_2}
N 560 -480 670 -480 {lab=#net1}
N 360 -480 560 -480 {lab=#net1}
N 560 430 670 430 {lab=GND}
N 360 430 560 430 {lab=GND}
N 360 60 360 430 {lab=GND}
N 560 90 560 430 {lab=GND}
N 670 60 670 430 {lab=GND}
N 560 -480 560 -80 {lab=#net1}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 60 0 0 {name=M1
l=0.2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -50 0 0 {name=M2
l=0.2u
w=3.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ammeter.sym} 0 310 0 0 {name=Vmeas_NMOS savecurrent=true spice_ignore=0}
C {ammeter.sym} 0 -310 0 0 {name=Vmeas_PMOS savecurrent=true spice_ignore=0}
C {gnd.sym} 0 430 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 130 0 0 0 {name=p1 sig_type=std_logic lab=V_OUT_STAGE_1}
C {devices/launcher.sym} 920 250 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 920 280 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/debug_clock_gen.raw tran"
}
C {devices/launcher.sym} 920 320 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_wire.sym} -150 0 0 0 {name=p2 sig_type=std_logic lab=V_IN}
C {vsource.sym} -500 -210 0 0 {name=VDD value=1.5}
C {gnd.sym} -500 -180 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -960 240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} -957.5 -477.5 0 0 {name=s1 only_toplevel=false value="
.include inverter_vtc.save
.control 

*save VDD#branch V_OUT
save all
*dc V_IN 0 1.5 0.001 

*tran 0.0001m 0.5m

*plot i(VDD)
*plot V_IN V_OUT_STAGE_1 V_OUT_STAGE_2 V_OUT
*plot i(Vmeas_PMOS)
*plot i(Vmeas_NMOS)

op


write inverter_vtc.raw

.endc
"}
C {vsource.sym} -450 50 0 0 {name=V_IN value=1.5
spice_ignore=true}
C {gnd.sym} -450 80 0 0 {name=l3 lab=GND
spice_ignore=true}
C {res.sym} -60 0 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1
}
C {sg13g2_pr/annotate_fet_params.sym} -160 -320 0 0 {name=annot1 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} -300 -320 0 0 {name=annot3 ref=M1}
C {lab_wire.sym} 0 -120 0 0 {name=p3 sig_type=std_logic lab=M2_Source}
C {lab_wire.sym} 0 130 0 0 {name=p4 sig_type=std_logic lab=M1_Source}
C {lab_wire.sym} 0 -120 0 0 {name=p5 sig_type=std_logic lab=M2_Source}
C {res.sym} 0 -210 0 0 {name=R2
value=25000k
footprint=1206
device=resistor
m=1
}
C {res.sym} 0 190 0 0 {name=R3
value=25000k
footprint=1206
device=resistor
m=1
}
C {vsource.sym} -670 50 0 0 {name=V_IN1 value="SIN(100m 100m 32768)"
}
C {gnd.sym} -670 80 0 0 {name=l4 lab=GND
}
C {capa.sym} -585 0 3 0 {name=C1
m=1
value=500p
footprint=1206
device="ceramic capacitor"
}
C {lab_wire.sym} -670 0 0 0 {name=p6 sig_type=std_logic lab=V_IN1
}
C {sg13g2_pr/sg13_lv_nmos.sym} 230 60 0 0 {name=M3
l=0.2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 230 -50 0 0 {name=M4
l=0.2u
w=3.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ammeter.sym} 250 310 0 0 {name=Vmeas_NMOS1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 250 -310 0 0 {name=Vmeas_PMOS1 savecurrent=true spice_ignore=0}
C {lab_wire.sym} 380 0 0 0 {name=p7 sig_type=std_logic lab=V_OUT_STAGE_2}
C {res.sym} 250 -210 0 0 {name=R4
value=10000k
footprint=1206
device=resistor
m=1
}
C {res.sym} 250 190 0 0 {name=R5
value=10000k
footprint=1206
device=resistor
m=1
}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 60 0 0 {name=M5
l=0.5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -50 0 0 {name=M6
l=0.5u
w=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 690 0 0 0 {name=p8 sig_type=std_logic lab=V_OUT}
