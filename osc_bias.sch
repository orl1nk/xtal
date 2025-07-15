v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -270 160 -270 {lab=VDD}
N 160 -270 160 -210 {lab=VDD}
N 200 -180 200 -130 {lab=vp_bias}
N 160 -130 200 -130 {lab=vp_bias}
N 160 -150 160 -130 {lab=vp_bias}
N 140 -180 160 -180 {lab=VDD}
N 140 -270 140 -180 {lab=VDD}
N 160 -110 160 -90 {lab=vp_bias}
N 200 -110 200 -60 {lab=vp_bias}
N 160 -110 200 -110 {lab=vp_bias}
N 160 -130 160 -110 {lab=vp_bias}
N 150 -60 160 -60 {lab=#net1}
N 160 -30 160 10 {lab=#net2}
N 160 -270 700 -270 {lab=VDD}
N 200 -180 660 -180 {lab=vp_bias}
N 160 10 160 30 {lab=#net2}
N 200 10 200 60 {lab=#net2}
N 160 10 200 10 {lab=#net2}
N 150 60 160 60 {lab=#net1}
N 150 -60 150 60 {lab=#net1}
N 160 110 160 140 {lab=#net3}
N 200 110 200 170 {lab=#net3}
N 160 110 200 110 {lab=#net3}
N 160 90 160 110 {lab=#net3}
N 150 170 160 170 {lab=#net1}
N 150 60 150 170 {lab=#net1}
N 700 -270 700 -210 {lab=VDD}
N 700 -180 720 -180 {lab=VDD}
N 720 -270 720 -180 {lab=VDD}
N 700 -270 720 -270 {lab=VDD}
N -80 -270 140 -270 {lab=VDD}
N -80 330 160 330 {lab=GND}
N 700 -150 700 -50 {lab=I_BIAS_OUT}
N 160 220 160 230 {lab=#net1}
N 160 290 160 330 {lab=GND}
N 150 170 150 220 {lab=#net1}
N 150 220 160 220 {lab=#net1}
N 160 200 160 220 {lab=#net1}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -180 0 1 {name=M1
l=10u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -60 0 1 {name=M3
l=15u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 60 0 1 {name=M4
l=15u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 170 0 1 {name=M5
l=15u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -180 0 0 {name=M2
l=10u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {lab_pin.sym} 440 -180 1 0 {name=p1 sig_type=std_logic lab=vp_bias}
C {sg13g2_pr/annotate_fet_params.sym} 537.5 -145 0 0 {name=annot1 ref=M2}
C {iopin.sym} -80 -270 2 0 {name=p2 lab=VDD}
C {iopin.sym} -80 330 2 0 {name=p3 lab=GND}
C {iopin.sym} 700 -50 1 0 {name=p4 lab=I_BIAS_OUT}
C {ammeter.sym} 160 260 0 0 {name=Vmeas_ref_path savecurrent=true spice_ignore=0}
