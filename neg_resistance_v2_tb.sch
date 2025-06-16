v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 110 -10 150 {lab=GND}
N -190 -30 -190 50 {lab=A}
N 30 110 160 110 {lab=GND}
N -190 -30 -10 -30 {lab=A}
N 30 -0 30 110 {lab=GND}
N -10 110 30 110 {lab=GND}
N 30 -150 160 -150 {lab=B}
N 160 -150 160 20 {lab=B}
N -190 110 -10 110 {lab=GND}
N -190 -100 -140 -100 {lab=A}
N -190 -50 -190 -30 {lab=A}
N -80 -100 30 -100 {lab=B}
N 30 -80 30 -60 {lab=B}
N 160 50 160 110 {lab=GND}
N -320 -60 -320 110 {lab=GND}
N 30 -150 30 -100 {lab=B}
N -190 -50 -140 -50 {lab=A}
N -190 -100 -190 -50 {lab=A}
N -80 -50 -20 -50 {lab=B}
N -20 -80 -20 -50 {lab=B}
N -20 -80 30 -80 {lab=B}
N 30 -100 30 -80 {lab=B}
N -190 -220 -190 -100 {lab=A}
N -190 80 -190 110 {lab=GND}
N -230 110 -190 110 {lab=GND}
N 30 -220 30 -150 {lab=B}
N -90 -220 -70 -220 {lab=#net1}
N -170 -220 -160 -220 {lab=A}
N -170 -180 -130 -180 {lab=A}
N -170 -220 -170 -180 {lab=A}
N -190 -220 -170 -220 {lab=A}
N -90 -180 -40 -180 {lab=#net1}
N -90 -220 -90 -180 {lab=#net1}
N -100 -220 -90 -220 {lab=#net1}
N -10 -220 30 -220 {lab=B}
N 30 -30 50 -30 {lab=GND}
N 50 -30 50 -0 {lab=GND}
N 30 0 50 0 {lab=GND}
N -130 -230 -130 -220 {lab=A}
N -160 -230 -130 -230 {lab=A}
N -160 -230 -160 -220 {lab=A}
N -40 -230 -40 -220 {lab=#net1}
N -70 -230 -70 -220 {lab=#net1}
N -70 -230 -40 -230 {lab=#net1}
N -320 -510 -320 -120 {lab=#net2}
N -250 -510 -230 -510 {lab=#net2}
N -230 -510 -230 -450 {lab=#net2}
N -230 -510 30 -510 {lab=#net2}
N 30 -510 30 -450 {lab=#net2}
N -190 -420 -190 -370 {lab=#net3}
N -230 -370 -190 -370 {lab=#net3}
N -230 -390 -230 -370 {lab=#net3}
N -190 -420 -10 -420 {lab=#net3}
N -250 -420 -230 -420 {lab=#net2}
N -250 -510 -250 -420 {lab=#net2}
N -320 -510 -250 -510 {lab=#net2}
N 30 -420 50 -420 {lab=#net2}
N 50 -510 50 -420 {lab=#net2}
N 30 -510 50 -510 {lab=#net2}
N 30 -390 30 -220 {lab=B}
N -230 -350 -230 -330 {lab=#net3}
N -230 -250 -230 110 {lab=GND}
N -320 110 -230 110 {lab=GND}
N -190 -350 -190 -300 {lab=#net3}
N -230 -350 -190 -350 {lab=#net3}
N -230 -370 -230 -350 {lab=#net3}
N -240 -300 -230 -300 {lab=GND}
N -240 -300 -240 -250 {lab=GND}
N -240 -250 -230 -250 {lab=GND}
N -230 -270 -230 -250 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 10 -30 0 0 {name=M1
l=0.8u
w=0.2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} -190 50 0 0 {name=C1
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 160 50 0 0 {name=C2
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -110 -100 3 0 {name=C0
m=1
value=1.35p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -10 150 0 0 {name=l1 lab=GND}
C {vsource.sym} -320 -90 0 0 {name=VDD value=1.2 savecurrent=false}
C {isource.sym} -110 -50 1 0 {name=I1 value="dc 0 ac 1"}
C {code_shown.sym} 170 -470 0 0 {name=s1 only_toplevel=false 
value="
.control 

save all
save all save @n.xm1.nsg13_lv_nmos[gm]
op
write neg_resistance_v2_tb.raw
set appendwrite
ac lin 1000 30.0k 36.0k
plot real(A-B) xlimit 30.0k 36.0k ylabel 'Negative Resistance'
write neg_resistance_v2_tb.raw

.endc
"}
C {lab_pin.sym} -190 -50 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -20 -80 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/code_shown.sym} -330 220 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -130 -200 3 0 {name=M2
l=1u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -40 -200 3 0 {name=M3
l=1u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/launcher.sym} 380 -200 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 380 -130 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_get_value.sym} 100 -80 0 1 {name=r4 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {sg13g2_pr/sg13_lv_pmos.sym} -210 -420 0 1 {name=M4
l=0.5u
w=0.25u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 10 -420 0 0 {name=M5
l=0.25u
w=0.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -210 -300 0 1 {name=M6
l=0.5u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
