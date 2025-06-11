v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 110 -10 150 {lab=GND}
N -80 -150 30 -150 {lab=B}
N -190 -220 -140 -220 {lab=A}
N -190 -30 -190 50 {lab=A}
N 30 110 160 110 {lab=GND}
N -190 -30 -10 -30 {lab=A}
N 30 -0 30 110 {lab=GND}
N -10 110 30 110 {lab=GND}
N 30 -150 160 -150 {lab=B}
N 160 -150 160 20 {lab=B}
N -190 110 -10 110 {lab=GND}
N -320 -370 30 -370 {lab=V}
N -190 -100 -140 -100 {lab=A}
N -10 -100 30 -100 {lab=B}
N 160 50 160 110 {lab=GND}
N -320 -60 -320 110 {lab=GND}
N 30 -150 30 -100 {lab=B}
N -80 -220 -80 -150 {lab=B}
N -190 -60 -190 -30 {lab=A}
N 30 -100 30 -60 {lab=B}
N -190 -220 -190 -100 {lab=A}
N -190 80 -190 110 {lab=GND}
N -320 110 -190 110 {lab=GND}
N -320 -370 -320 -120 {lab=V}
N -190 -60 -130 -60 {lab=A}
N -190 -100 -190 -60 {lab=A}
N -70 -60 -10 -60 {lab=B}
N -10 -100 -10 -60 {lab=B}
N -80 -100 -10 -100 {lab=B}
N 30 -370 30 -310 {lab=V}
N 30 -250 30 -150 {lab=B}
C {sg13g2_pr/sg13_lv_nmos.sym} 10 -30 0 0 {name=M1
l=1.0u
w=0.13u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} -190 50 0 0 {name=C1
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 160 50 0 0 {name=C2
m=1
value=6p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -110 -100 3 0 {name=C0
m=1
value=1.35p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -10 150 0 0 {name=l1 lab=GND}
C {res.sym} -110 -220 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {code_shown.sym} 180 -430 0 0 {name=s1 only_toplevel=false 
value="
.control 
save all
save @n.xm1.nsg13_lv_nmos[gm]
op
write neg_resistance_tb.raw
set appendwrite
ac lin 1000 30.0k 36.0k
plot real(A-B) xlimit 30.0k 36.0k ylabel 'Negative Resistance'
write neg_resistance_tb.raw

.endc
"}
C {lab_pin.sym} -190 -50 0 0 {name=p1 sig_type=std_logic lab=A}
C {devices/code_shown.sym} -330 220 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/ngspice_get_value.sym} 0 30 0 1 {name=r4 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {sg13g2_pr/annotate_fet_params.sym} 190 -130 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 320 -180 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 320 -140 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {isource.sym} 30 -280 0 0 {name=I0 value=10n}
C {isource.sym} -100 -60 1 0 {name=I1 value="dc 0 ac 1"}
C {lab_pin.sym} -10 -100 0 0 {name=p2 sig_type=std_logic lab=B}
C {vsource.sym} -320 -90 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} -320 -320 0 0 {name=p3 sig_type=std_logic lab=V}
