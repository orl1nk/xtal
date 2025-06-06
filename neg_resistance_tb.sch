v {xschem version=3.4.6 file_version=1.2}
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
N -320 -370 30 -370 {lab=#net1}
N -190 -100 -140 -100 {lab=A}
N -190 -50 -190 -30 {lab=A}
N -80 -100 30 -100 {lab=B}
N 30 -80 30 -60 {lab=B}
N 160 50 160 110 {lab=GND}
N -320 -60 -320 110 {lab=GND}
N 30 -150 30 -100 {lab=B}
N -80 -220 -80 -150 {lab=B}
N -190 -50 -140 -50 {lab=A}
N -190 -100 -190 -50 {lab=A}
N -80 -50 -20 -50 {lab=B}
N -20 -80 -20 -50 {lab=B}
N -20 -80 30 -80 {lab=B}
N 30 -100 30 -80 {lab=B}
N -190 -220 -190 -100 {lab=A}
N -190 80 -190 110 {lab=GND}
N -320 110 -190 110 {lab=GND}
N 30 -310 30 -150 {lab=B}
N -320 -370 -320 -120 {lab=#net1}
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
C {isource.sym} 30 -340 0 0 {name=I0 value=10m}
C {vsource.sym} -320 -90 0 0 {name=VDD value=1.2 savecurrent=false}
C {res.sym} -110 -220 1 0 {name=R1
value=20Meg
footprint=1206
device=resistor
m=1}
C {isource.sym} -110 -50 3 0 {name=I1 value="dc 0 ac 1"}
C {code_shown.sym} 180 -430 0 0 {name=s1 only_toplevel=false 
value="
.control 

save all
op
*ac lin 1000 30.0k 36.0k
*plot real(A-B) xlimit 30.0k 36.0k ylabel 'Negative Resistance'
write neg_resistance_tb.raw

.endc
"}
C {lab_pin.sym} -190 -50 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -20 -80 0 0 {name=p2 sig_type=std_logic lab=B}
C {devices/code_shown.sym} -330 220 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {sg13g2_pr/annotate_fet_params.sym} 250 -160 0 0 {name=annot2 ref=M1}
