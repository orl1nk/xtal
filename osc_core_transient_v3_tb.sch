v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 800 -400 1600 0 {flags=graph
y1=-4.9e-19
y2=0.59
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
rawfile=$netlist_dir/osc_core_transient_v3_tb.raw
sim_type=tran}
B 2 800 30 1600 430 {flags=graph
y1=-7e-08
y2=8.1e-22
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
rawfile=$netlist_dir/osc_core_transient_v3_tb.raw
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
N 240 140 240 230 {lab=VOUT}
N 40 -60 60 -60 {lab=#net1}
N -40 -60 -30 -60 {lab=#net2}
N -40 -60 -40 -20 {lab=#net2}
N 40 -60 40 -20 {lab=#net1}
N 30 -60 40 -60 {lab=#net1}
N 120 -60 240 -60 {lab=VOUT}
N 0 -70 0 -60 {lab=#net2}
N -30 -70 0 -70 {lab=#net2}
N -30 -70 -30 -60 {lab=#net2}
N 90 -70 90 -60 {lab=#net1}
N 60 -70 60 -60 {lab=#net1}
N 60 -70 90 -70 {lab=#net1}
N 240 -60 240 140 {lab=VOUT}
N -150 370 -150 400 {lab=GND}
N -150 260 -150 310 {lab=#net2}
N -150 260 200 260 {lab=#net2}
N -150 140 -150 260 {lab=#net2}
N -150 -60 -40 -60 {lab=#net2}
N -40 -20 0 -20 {lab=#net2}
N 40 -20 90 -20 {lab=#net1}
N 240 260 270 260 {lab=GND}
N 270 260 270 400 {lab=GND}
N 240 400 270 400 {lab=GND}
N -520 -420 -520 -100 {lab=#net3}
N -310 400 -150 400 {lab=GND}
N -520 -40 -520 400 {lab=GND}
N -520 -420 0 -420 {lab=#net3}
N -310 -320 0 -320 {lab=GND}
N -310 -320 -310 400 {lab=GND}
N -520 400 -310 400 {lab=GND}
N 150 -370 240 -370 {lab=VOUT}
N 240 -370 240 -60 {lab=VOUT}
N -150 140 -50 140 {lab=#net2}
N -150 -60 -150 140 {lab=#net2}
N 120 140 240 140 {lab=VOUT}
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
C {code_shown.sym} 350 -380 0 0 {name=s1 only_toplevel=false 
value="
*.include osc_core_transient_v3_tb.save
.option KLU
.save VOUT VDD#branch
.control 


*op
tran 0.001m 2s
plot VOUT
*plot i(VDD) 
*fft VOUT
*plot mag(VOUT)

write osc_core_transient_v3_tb.raw

.endc
"}
C {devices/code_shown.sym} -120 510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/ngspice_get_value.sym} 210 320 0 1 {name=r4 node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm="}
C {sg13g2_pr/annotate_fet_params.sym} 450 260 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 530 110 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 530 150 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} 370 140 1 0 {name=p1 sig_type=std_logic lab=VOUT}
C {vsource.sym} -520 -70 0 0 {name=VDD value="PULSE(0 1.2 1m)"}
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
C {devices/launcher.sym} 530 190 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_core_transient_v3_tb.raw tran"
}
C {/foss/designs/xtal/osc_bias.sym} 0 -370 0 0 {name=x1}
C {/foss/designs/xtal/xtal_model.sym} 40 150 0 0 {name=x2}
