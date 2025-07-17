v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -270 160 -210 {lab=VDD}
N 200 -180 200 -130 {lab=VP_BIAS}
N 160 -130 200 -130 {lab=VP_BIAS}
N 160 -150 160 -130 {lab=VP_BIAS}
N 80 -180 160 -180 {lab=VDD}
N 80 -270 80 -180 {lab=VDD}
N 160 -70 160 -50 {lab=VP_BIAS}
N 200 -70 200 -20 {lab=VP_BIAS}
N 160 -70 200 -70 {lab=VP_BIAS}
N 160 10 160 50 {lab=#net1}
N 160 -270 700 -270 {lab=VDD}
N 620 -180 660 -180 {lab=VP_BIAS}
N 160 50 160 70 {lab=#net1}
N 200 50 200 100 {lab=#net1}
N 160 50 200 50 {lab=#net1}
N 160 150 160 180 {lab=#net2}
N 200 150 200 210 {lab=#net2}
N 160 150 200 150 {lab=#net2}
N 160 130 160 150 {lab=#net2}
N 70 210 160 210 {lab=GND}
N 700 -270 700 -210 {lab=VDD}
N 700 -180 720 -180 {lab=VDD}
N 720 -270 720 -180 {lab=VDD}
N 700 -270 720 -270 {lab=VDD}
N 80 -270 160 -270 {lab=VDD}
N 70 470 160 470 {lab=GND}
N 150 260 160 260 {lab=VN_BIAS}
N 160 240 160 260 {lab=VN_BIAS}
N 700 190 700 360 {lab=I_BIAS_OUT}
N 580 -20 660 -20 {lab=cfg_bias_1}
N 620 -180 620 -130 {lab=VP_BIAS}
N 200 -180 620 -180 {lab=VP_BIAS}
N 620 -130 910 -130 {lab=VP_BIAS}
N 910 -170 910 -130 {lab=VP_BIAS}
N 910 -130 1200 -130 {lab=VP_BIAS}
N 1200 -170 1200 -130 {lab=VP_BIAS}
N 970 -270 1240 -270 {lab=VDD}
N 1240 -270 1240 -200 {lab=VDD}
N 950 -270 950 -200 {lab=VDD}
N 720 -270 950 -270 {lab=VDD}
N 950 -170 970 -170 {lab=VDD}
N 970 -270 970 -170 {lab=VDD}
N 950 -270 970 -270 {lab=VDD}
N 1240 -170 1260 -170 {lab=VDD}
N 1260 -270 1260 -170 {lab=VDD}
N 1240 -270 1260 -270 {lab=VDD}
N 950 190 1240 190 {lab=I_BIAS_OUT}
N 950 -140 950 -40 {lab=#net3}
N 1240 -140 1240 -40 {lab=#net4}
N 1240 20 1240 190 {lab=I_BIAS_OUT}
N 1160 -10 1200 -10 {lab=cfg_bias_3}
N 950 20 950 190 {lab=I_BIAS_OUT}
N 700 190 950 190 {lab=I_BIAS_OUT}
N 870 -10 910 -10 {lab=cfg_bias_2}
N 720 -180 720 -20 {lab=VDD}
N 950 -10 970 -10 {lab=VDD}
N 970 -170 970 -10 {lab=VDD}
N 1240 -10 1260 -10 {lab=VDD}
N 1260 -170 1260 -10 {lab=VDD}
N 160 280 160 310 {lab=VN_BIAS}
N 200 280 200 340 {lab=VN_BIAS}
N 160 280 200 280 {lab=VN_BIAS}
N 160 260 160 280 {lab=VN_BIAS}
N 160 -130 160 -70 {lab=VP_BIAS}
N 160 370 160 390 {lab=#net5}
N 160 450 160 470 {lab=GND}
N 700 -150 700 -50 {lab=#net6}
N 700 -20 720 -20 {lab=VDD}
N 700 10 700 190 {lab=I_BIAS_OUT}
N 200 280 380 280 {lab=VN_BIAS}
N 70 100 160 100 {lab=GND}
N 70 340 160 340 {lab=GND}
N 70 100 70 210 {lab=GND}
N 70 210 70 340 {lab=GND}
N 70 340 70 470 {lab=GND}
N -80 470 70 470 {lab=GND}
N 70 -20 160 -20 {lab=GND}
N 70 -20 70 100 {lab=GND}
N -80 -270 80 -270 {lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -180 0 1 {name=M1
l=10u
w=0.25u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -20 0 1 {name=M3
l=10u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 100 0 1 {name=M4
l=10u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 210 0 1 {name=M5
l=10u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -180 0 0 {name=M2
l=10u
w=0.25u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {sg13g2_pr/annotate_fet_params.sym} 337.5 15 0 0 {name=annot1 ref=M2}
C {iopin.sym} -80 -270 2 0 {name=p2 lab=VDD}
C {iopin.sym} -80 470 2 0 {name=p3 lab=GND}
C {iopin.sym} 700 360 1 0 {name=p4 lab=I_BIAS_OUT}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -20 0 0 {name=M6
l=5u
w=0.25u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {iopin.sym} 580 -20 2 0 {name=p5 lab=cfg_bias_1}
C {sg13g2_pr/sg13_lv_pmos.sym} 930 -170 0 0 {name=M7
l=10u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -170 0 0 {name=M8
l=10u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_pmos.sym} 930 -10 0 0 {name=M9
l=10u
w=0.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {iopin.sym} 870 -10 2 0 {name=p6 lab=cfg_bias_2}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -10 0 0 {name=M10
l=10u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {iopin.sym} 1160 -10 2 0 {name=p7 lab=cfg_bias_3}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 340 0 1 {name=M11
l=10u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ammeter.sym} 160 420 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {sg13g2_pr/annotate_fet_params.sym} 460 20 0 0 {name=annot2 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} 1350 -260 0 0 {name=annot3 ref=M7}
C {opin.sym} 380 280 0 0 {name=p8 lab=VN_BIAS}
C {opin.sym} 380 -180 1 0 {name=p9 lab=VP_BIAS}
