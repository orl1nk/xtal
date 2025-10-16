v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 70 -20 70 {lab=XO1}
N -40 70 -40 110 {lab=XO1}
N 150 60 150 70 {lab=#net1}
N 10 60 10 70 {lab=XO1}
N -20 60 -20 70 {lab=XO1}
N -20 60 10 60 {lab=XO1}
N -40 110 10 110 {lab=XO1}
N -90 260 -90 290 {lab=XO1}
N 270 400 370 400 {lab=VSS}
N 240 290 240 400 {lab=VSS}
N 240 140 370 140 {lab=XO2}
N 370 140 370 310 {lab=XO2}
N 370 340 370 400 {lab=VSS}
N 240 190 240 230 {lab=XO2}
N 240 260 270 260 {lab=VSS}
N 270 260 270 400 {lab=VSS}
N 240 400 270 400 {lab=VSS}
N -90 400 240 400 {lab=VSS}
N -90 350 -90 400 {lab=VSS}
N -90 260 200 260 {lab=XO1}
N -90 190 -90 260 {lab=XO1}
N -90 190 -50 190 {lab=XO1}
N 190 190 240 190 {lab=XO2}
N 240 140 240 190 {lab=XO2}
N -160 400 -90 400 {lab=VSS}
N 240 70 240 140 {lab=XO2}
N 240 -160 240 -90 {lab=I_BIAS_IN}
N 200 70 240 70 {lab=XO2}
N 240 -30 240 70 {lab=XO2}
N -90 70 -40 70 {lab=XO1}
N -90 70 -90 190 {lab=XO1}
N 150 110 200 110 {lab=XO2}
N 200 70 200 110 {lab=XO2}
N 180 70 200 70 {lab=XO2}
N 40 70 120 70 {lab=#net2}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 90 1 1 {name=M2
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 10 90 3 0 {name=M3
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 260 0 0 {name=M1
l=0.5u
w=5.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 370 340 0 0 {name=C2
m=1
value=8p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -90 320 0 0 {name=C1
m=1
value=8p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -160 400 2 0 {name=p1 lab=VSS}
C {sg13g2_pr/annotate_fet_params.sym} 500 250 0 0 {name=annot1 ref=M1}
C {ammeter.sym} 240 -60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ipin.sym} 240 -160 1 0 {name=p4 lab=I_BIAS_IN}
C {iopin.sym} -50 190 0 0 {name=p2 lab=XO1}
C {iopin.sym} 190 190 2 0 {name=p3 lab=XO2}
