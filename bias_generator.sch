v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -270 160 -270 {lab=#net1}
N 160 -270 160 -210 {lab=#net1}
N 200 -180 200 -130 {lab=bias}
N 160 -130 200 -130 {lab=bias}
N 160 -150 160 -130 {lab=bias}
N 140 -180 160 -180 {lab=#net1}
N 140 -270 140 -180 {lab=#net1}
N 160 -110 160 -90 {lab=bias}
N 200 -110 200 -60 {lab=bias}
N 160 -110 200 -110 {lab=bias}
N 160 -130 160 -110 {lab=bias}
N 150 -60 160 -60 {lab=GND}
N 160 -30 160 10 {lab=#net2}
N 160 -270 700 -270 {lab=#net1}
N 200 -180 660 -180 {lab=bias}
N 160 10 160 30 {lab=#net2}
N 200 10 200 60 {lab=#net2}
N 160 10 200 10 {lab=#net2}
N 150 60 160 60 {lab=GND}
N 150 -60 150 60 {lab=GND}
N 160 110 160 140 {lab=#net3}
N 200 110 200 170 {lab=#net3}
N 160 110 200 110 {lab=#net3}
N 160 90 160 110 {lab=#net3}
N 150 170 160 170 {lab=GND}
N 150 60 150 170 {lab=GND}
N 150 270 150 310 {lab=GND}
N 700 -270 700 -210 {lab=#net1}
N 700 -180 720 -180 {lab=#net1}
N 720 -270 720 -180 {lab=#net1}
N 700 -270 720 -270 {lab=#net1}
N -80 -270 -80 10 {lab=#net1}
N -80 -270 140 -270 {lab=#net1}
N -80 70 -80 270 {lab=GND}
N -80 270 150 270 {lab=GND}
N 160 200 160 270 {lab=GND}
N 150 270 160 270 {lab=GND}
N 150 170 150 270 {lab=GND}
N 700 270 702.5 270 {lab=GND}
N 700 50 700 270 {lab=GND}
N 160 270 700 270 {lab=GND}
N 700 -150 700 -10 {lab=#net4}
C {devices/code_shown.sym} 850 230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {code_shown.sym} 830 -270 0 0 {name=s1 only_toplevel=false 
value="
.include bias_generator.save
.control 


save all

op
write bias_generator.raw
*set appendwrite

.endc
"}
C {devices/launcher.sym} 920 80 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 920 130 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -180 0 1 {name=M4
l=10u
w=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -60 0 1 {name=M6
l=10u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 60 0 1 {name=M7
l=10u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 170 0 1 {name=M8
l=10u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 150 310 0 0 {name=l1 lab=GND}
C {vsource.sym} -80 40 0 0 {name=VDD value=1.2}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -180 0 0 {name=M5
l=10u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {lab_pin.sym} 460 -180 0 0 {name=p1 sig_type=std_logic lab=bias}
C {sg13g2_pr/annotate_fet_params.sym} 537.5 -145 0 0 {name=annot1 ref=M5}
C {vsource.sym} 700 20 0 0 {name=VTEST value=0}
