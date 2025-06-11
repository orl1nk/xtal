v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 400 200 440 {lab=GND}
N 240 400 370 400 {lab=GND}
N 240 290 240 400 {lab=GND}
N 200 400 240 400 {lab=GND}
N 240 140 370 140 {lab=VOUT}
N 370 140 370 310 {lab=VOUT}
N 370 340 370 400 {lab=GND}
N -150 400 200 400 {lab=GND}
N 240 -210 240 -150 {lab=#net1}
N 240 110 240 140 {lab=VOUT}
N 240 140 240 230 {lab=VOUT}
N -40 110 -20 110 {lab=#net2}
N -120 110 -100 110 {lab=#net3}
N -120 110 -120 210 {lab=#net3}
N -120 210 -30 210 {lab=#net3}
N 130 110 180 110 {lab=VOUT}
N 30 210 180 210 {lab=VOUT}
N 180 110 180 210 {lab=VOUT}
N -240 -210 -240 -110 {lab=#net1}
N -240 -50 -240 400 {lab=GND}
N 40 110 70 110 {lab=#net4}
N 40 -60 60 -60 {lab=#net5}
N -40 -60 -30 -60 {lab=#net3}
N -40 -60 -40 -20 {lab=#net3}
N 40 -60 40 -20 {lab=#net5}
N 30 -60 40 -60 {lab=#net5}
N 120 -60 240 -60 {lab=VOUT}
N 0 -70 0 -60 {lab=#net3}
N -30 -70 0 -70 {lab=#net3}
N -30 -70 -30 -60 {lab=#net3}
N 90 -70 90 -60 {lab=#net5}
N 60 -70 60 -60 {lab=#net5}
N 60 -70 90 -70 {lab=#net5}
N 240 -60 240 110 {lab=VOUT}
N -240 -210 240 -210 {lab=#net1}
N -150 370 -150 400 {lab=GND}
N -240 400 -150 400 {lab=GND}
N -150 260 -150 310 {lab=#net3}
N -150 260 200 260 {lab=#net3}
N -150 110 -150 260 {lab=#net3}
N -150 110 -120 110 {lab=#net3}
N 180 110 240 110 {lab=VOUT}
N -150 -60 -150 110 {lab=#net3}
N -150 -60 -40 -60 {lab=#net3}
N -40 -20 0 -20 {lab=#net3}
N 40 -20 90 -20 {lab=#net5}
N 240 -90 240 -60 {lab=VOUT}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 260 0 0 {name=M1
l=1.0u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} -150 340 0 0 {name=C1
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 370 340 0 0 {name=C2
m=1
value=12p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 200 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 460 -310 0 0 {name=s1 only_toplevel=false 
value="
.control 
save all

tran 0.01m 8s
plot VOUT 
*setplot tran1
*linearize VOUT
*set specwindow=blackman
fft VOUT
plot mag(VOUT)

write osc_core_transient_v1_tb.raw

.endc
"}
C {devices/code_shown.sym} -120 510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/ngspice_get_value.sym} 210 320 0 1 {name=r4 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {sg13g2_pr/annotate_fet_params.sym} 400 160 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 530 110 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 530 150 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {isource.sym} 240 -120 0 0 {name=I0 value="PULSE(0 25n 2m)"}
C {lab_pin.sym} 370 140 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {res.sym} -70 110 3 0 {name=Rs
value=57028.5
footprint=1206
device=resistor
m=1}
C {capa.sym} 10 110 3 0 {name=Cs
m=1
value=6.408f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 0 210 3 0 {name=C0
m=1
value=1.398p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 100 110 3 0 {name=Ls
m=1
value=3685.8
footprint=1206
device=inductor}
C {vsource.sym} -240 -80 0 0 {name=VDD value=1.2 savecurrent=false}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -40 3 0 {name=M2
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 -40 3 0 {name=M3
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
