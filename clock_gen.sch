v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -80 -40 -80 {lab=#net1}
N -110 -30 -110 30 {lab=#net1}
N -110 30 -40 30 {lab=#net1}
N 0 -30 0 0 {lab=stage_1}
N -110 -80 -110 -30 {lab=#net1}
N -0 -50 0 -30 {lab=stage_1}
N -110 -30 -90 -30 {lab=#net1}
N -30 -30 -0 -30 {lab=stage_1}
N -260 -30 -220 -30 {lab=IN}
N -160 -30 -110 -30 {lab=#net1}
N 230 -30 230 30 {lab=stage_1}
N 230 -80 230 -30 {lab=stage_1}
N 0 230 0 280 {lab=VSS}
N 540 -30 700 -30 {lab=OUT}
N 270 -30 270 0 {lab=stage_2}
N 0 -360 0 -320 {lab=VDD}
N -0 -30 230 -30 {lab=stage_1}
N 500 -30 500 30 {lab=stage_2}
N 500 -80 500 -30 {lab=stage_2}
N 540 -30 540 0 {lab=OUT}
N 540 -320 660 -320 {lab=VDD}
N 540 230 610 230 {lab=VSS}
N 270 -30 500 -30 {lab=stage_2}
N 270 -50 270 -30 {lab=stage_2}
N 540 -50 540 -30 {lab=OUT}
N -0 -80 110 -80 {lab=VDD}
N 110 -230 110 -80 {lab=VDD}
N 0 -320 110 -320 {lab=VDD}
N 270 -80 390 -80 {lab=VDD}
N 390 -220 390 -80 {lab=VDD}
N 540 -80 660 -80 {lab=VDD}
N -0 -230 110 -230 {lab=VDD}
N 110 -320 110 -230 {lab=VDD}
N -0 -320 0 -260 {lab=VDD}
N -0 -200 -0 -110 {lab=#net2}
N -0 60 0 110 {lab=#net3}
N -0 170 -0 230 {lab=VSS}
N -0 30 110 30 {lab=VSS}
N 110 140 110 230 {lab=VSS}
N 0 230 110 230 {lab=VSS}
N 0 140 110 140 {lab=VSS}
N 110 30 110 140 {lab=VSS}
N 270 30 390 30 {lab=VSS}
N 390 140 390 230 {lab=VSS}
N 540 30 610 30 {lab=VSS}
N 610 130 610 230 {lab=VSS}
N -70 140 -40 140 {lab=VN_BIAS}
N 270 -190 270 -110 {lab=#net4}
N 270 -320 270 -250 {lab=VDD}
N 110 -320 270 -320 {lab=VDD}
N 270 -220 390 -220 {lab=VDD}
N 270 -320 390 -320 {lab=VDD}
N -70 -230 -70 -170 {lab=VP_BIAS}
N -110 -230 -70 -230 {lab=VP_BIAS}
N -70 -170 230 -170 {lab=VP_BIAS}
N 230 -220 230 -170 {lab=VP_BIAS}
N 270 60 270 110 {lab=#net5}
N 270 140 390 140 {lab=VSS}
N 390 30 390 140 {lab=VSS}
N -70 140 -70 200 {lab=VN_BIAS}
N -110 140 -70 140 {lab=VN_BIAS}
N -70 200 230 200 {lab=VN_BIAS}
N 230 140 230 200 {lab=VN_BIAS}
N 270 230 390 230 {lab=VSS}
N 270 170 270 230 {lab=VSS}
N 110 230 270 230 {lab=VSS}
N -70 -230 -40 -230 {lab=VP_BIAS}
N 390 -320 390 -220 {lab=VDD}
N 660 -220 660 -80 {lab=VDD}
N 540 -190 540 -110 {lab=#net6}
N 540 -220 660 -220 {lab=VDD}
N 500 -220 500 -170 {lab=VP_BIAS}
N 660 -320 660 -220 {lab=VDD}
N 230 -170 500 -170 {lab=VP_BIAS}
N 540 -320 540 -250 {lab=VDD}
N 390 -320 540 -320 {lab=VDD}
N 540 130 610 130 {lab=VSS}
N 610 30 610 130 {lab=VSS}
N 540 60 540 100 {lab=#net7}
N 540 160 540 230 {lab=VSS}
N 390 230 540 230 {lab=VSS}
N 230 200 500 200 {lab=VN_BIAS}
N 500 130 500 200 {lab=VN_BIAS}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 30 0 0 {name=M1
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -80 0 0 {name=M2
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 0 280 0 0 {name=p1 lab=VSS}
C {iopin.sym} 0 -360 0 0 {name=p2 lab=VDD}
C {ipin.sym} -260 -30 0 0 {name=p3 lab=IN}
C {opin.sym} 700 -30 0 0 {name=p4 lab=OUT}
C {res.sym} -60 -30 1 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {capa.sym} -190 -30 3 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 30 0 0 {name=M3
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 250 -80 0 0 {name=M4
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 30 0 0 {name=M5
l=0.5u
w=0.36u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 520 -80 0 0 {name=M6
l=0.5u
w=0.72u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 150 -30 0 0 {name=p5 sig_type=std_logic lab=stage_1}
C {lab_wire.sym} 430 -30 0 0 {name=p6 sig_type=std_logic lab=stage_2}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -230 0 0 {name=M7
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -110 -230 0 0 {name=p7 lab=VP_BIAS}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 140 0 0 {name=M8
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -110 140 0 0 {name=p8 lab=VN_BIAS}
C {sg13g2_pr/sg13_lv_pmos.sym} 250 -220 0 0 {name=M9
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 140 0 0 {name=M10
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 520 -220 0 0 {name=M11
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 130 0 0 {name=M12
l=2u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
