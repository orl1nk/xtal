v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 400 200 440 {lab=GND}
N 130 70 240 70 {lab=VOUT}
N 20 70 70 70 {lab=#net1}
N 20 260 20 340 {lab=#net1}
N 240 400 370 400 {lab=GND}
N 20 260 200 260 {lab=#net1}
N 240 290 240 400 {lab=GND}
N 200 400 240 400 {lab=GND}
N 240 140 370 140 {lab=VOUT}
N 370 140 370 310 {lab=VOUT}
N 20 400 200 400 {lab=GND}
N -110 -80 240 -80 {lab=#net2}
N 370 340 370 400 {lab=GND}
N 240 210 240 230 {lab=VOUT}
N 20 370 20 400 {lab=GND}
N -110 400 20 400 {lab=GND}
N 240 -80 240 -20 {lab=#net2}
N 240 70 240 140 {lab=VOUT}
N 240 40 240 70 {lab=VOUT}
N 240 140 240 210 {lab=VOUT}
N -500 -50 -400 -50 {lab=GND}
N -410 210 -390 210 {lab=#net3}
N -490 210 -470 210 {lab=#net1}
N -490 210 -490 310 {lab=#net1}
N -490 310 -400 310 {lab=#net1}
N -240 210 -190 210 {lab=VOUT}
N -340 310 -190 310 {lab=VOUT}
N -190 210 -190 310 {lab=VOUT}
N -190 210 240 210 {lab=VOUT}
N -500 80 -500 100 {lab=GND}
N -110 -80 -110 20 {lab=#net2}
N -110 80 -110 400 {lab=GND}
N 20 150 20 260 {lab=#net1}
N -490 150 -490 210 {lab=#net1}
N -490 150 20 150 {lab=#net1}
N 20 70 20 150 {lab=#net1}
N -400 10 -320 10 {lab=GND}
N -330 210 -300 210 {lab=#net4}
N -320 10 -320 80 {lab=GND}
N -500 80 -320 80 {lab=GND}
N -500 -50 -500 80 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 260 0 0 {name=M1
l=1.0u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 20 340 0 0 {name=C1
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 370 340 0 0 {name=C2
m=1
value=3p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 200 440 0 0 {name=l1 lab=GND}
C {res.sym} 100 70 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {code_shown.sym} 340 -350 0 0 {name=s1 only_toplevel=false 
value="
.control 
save all

*.options METHOD=Gear
tran 0.001m 10s
plot VOUT 
*setplot tran1
*linearize VOUT
*set specwindow=blackman
fft VOUT
plot mag(VOUT)

write osc_core_transient_tb.raw

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
C {isource.sym} 240 10 0 0 {name=I0 value="PULSE(0 12n 2m)"}
C {lab_pin.sym} 370 140 0 0 {name=p1 sig_type=std_logic lab=VOUT}
C {isource.sym} -400 -20 0 0 {name=I1 value="PULSE(0 1n 20m 1m 1m 5m)"}
C {gnd.sym} -500 100 0 0 {name=l2 lab=GND}
C {res.sym} -440 210 3 0 {name=Rs
value=50k
footprint=1206
device=resistor
m=1}
C {capa.sym} -360 210 3 0 {name=Cs
m=1
value=1.39f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -370 310 3 0 {name=C0
m=1
value=1.35p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} -270 210 3 0 {name=Ls
m=1
value=17k
footprint=1206
device=inductor}
C {vsource.sym} -110 50 0 0 {name=VDD value=1.2 savecurrent=false}
