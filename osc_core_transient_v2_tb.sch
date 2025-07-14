v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 800 -400 1600 0 {flags=graph
y1=-0.00074
y2=0.57
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vout
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/osc_core_transient_v2_tb.raw
sim_type=tran}
B 2 800 30 1600 430 {flags=graph
y1=-8e-06
y2=1.3e-21
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/osc_core_transient_v2_tb.raw
sim_type=tran
color=5
node=i(vdd)}
N 200 400 200 440 {lab=GND}
N 270 400 370 400 {lab=GND}
N 240 290 240 400 {lab=GND}
N 200 400 240 400 {lab=GND}
N 240 140 370 140 {lab=VOUT}
N 370 140 370 310 {lab=VOUT}
N 370 340 370 400 {lab=GND}
N -150 400 200 400 {lab=GND}
N 240 110 240 140 {lab=VOUT}
N 240 140 240 230 {lab=VOUT}
N -40 110 -20 110 {lab=#net1}
N -120 110 -100 110 {lab=#net2}
N -120 110 -120 210 {lab=#net2}
N -120 210 -30 210 {lab=#net2}
N 130 110 180 110 {lab=VOUT}
N 30 210 180 210 {lab=VOUT}
N 180 110 180 210 {lab=VOUT}
N -310 -50 -310 400 {lab=GND}
N 40 110 70 110 {lab=#net3}
N 40 -60 60 -60 {lab=#net4}
N -40 -60 -30 -60 {lab=#net2}
N -40 -60 -40 -20 {lab=#net2}
N 40 -60 40 -20 {lab=#net4}
N 30 -60 40 -60 {lab=#net4}
N 120 -60 240 -60 {lab=VOUT}
N 0 -70 0 -60 {lab=#net2}
N -30 -70 0 -70 {lab=#net2}
N -30 -70 -30 -60 {lab=#net2}
N 90 -70 90 -60 {lab=#net4}
N 60 -70 60 -60 {lab=#net4}
N 60 -70 90 -70 {lab=#net4}
N 240 -60 240 110 {lab=VOUT}
N -150 370 -150 400 {lab=GND}
N -150 260 -150 310 {lab=#net2}
N -150 260 200 260 {lab=#net2}
N -150 110 -150 260 {lab=#net2}
N -150 110 -120 110 {lab=#net2}
N 180 110 240 110 {lab=VOUT}
N -150 -60 -150 110 {lab=#net2}
N -150 -60 -40 -60 {lab=#net2}
N -40 -20 0 -20 {lab=#net2}
N 40 -20 90 -20 {lab=#net4}
N -210 400 -150 400 {lab=GND}
N -110 -490 -90 -490 {lab=#net5}
N -90 -490 -90 -430 {lab=#net5}
N 240 -490 240 -430 {lab=#net5}
N -50 -400 -50 -350 {lab=#net6}
N -90 -350 -50 -350 {lab=#net6}
N -90 -370 -90 -350 {lab=#net6}
N -110 -400 -90 -400 {lab=#net5}
N -110 -490 -110 -400 {lab=#net5}
N 240 -400 260 -400 {lab=#net5}
N 260 -490 260 -400 {lab=#net5}
N 240 -490 260 -490 {lab=#net5}
N 240 -370 240 -60 {lab=VOUT}
N -90 -330 -90 -310 {lab=#net6}
N -50 -330 -50 -280 {lab=#net6}
N -90 -330 -50 -330 {lab=#net6}
N -90 -350 -90 -330 {lab=#net6}
N -100 -280 -90 -280 {lab=GND}
N -310 -490 -310 -110 {lab=#net5}
N -310 -490 -110 -490 {lab=#net5}
N -90 -250 -90 -210 {lab=#net7}
N -210 -110 -210 400 {lab=GND}
N -310 400 -210 400 {lab=GND}
N -90 -490 240 -490 {lab=#net5}
N -50 -400 200 -400 {lab=#net6}
N -90 -210 -90 -190 {lab=#net7}
N -50 -210 -50 -160 {lab=#net7}
N -90 -210 -50 -210 {lab=#net7}
N -100 -160 -90 -160 {lab=GND}
N -100 -160 -100 -110 {lab=GND}
N -100 -110 -90 -110 {lab=GND}
N -90 -130 -90 -110 {lab=GND}
N -210 -110 -100 -110 {lab=GND}
N 240 260 270 260 {lab=GND}
N 270 260 270 400 {lab=GND}
N 240 400 270 400 {lab=GND}
N -100 -280 -100 -160 {lab=GND}
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
value=8p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 370 340 0 0 {name=C2
m=1
value=8p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 200 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 460 -310 0 0 {name=s1 only_toplevel=false 
value="
.control 
save all

tran 0.005m 2s
*plot VOUT
*plot i(VDD) 
*setplot tran1
*linearize VOUT
*set specwindow=blackman
*fft VOUT
*plot mag(VOUT)

write osc_core_transient_v2_tb.raw

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
C {vsource.sym} -310 -80 0 0 {name=VDD value="PULSE(0 1.2 1m)"}
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
C {sg13g2_pr/sg13_lv_pmos.sym} -70 -400 0 1 {name=M4
l=1u
w=10u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -400 0 0 {name=M5
l=40u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 -280 0 1 {name=M6
l=1u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 -160 0 1 {name=M7
l=1u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/launcher.sym} 530 190 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_core_transient_v2_tb.raw tran"
}
