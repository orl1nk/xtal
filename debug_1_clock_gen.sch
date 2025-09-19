v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 750 -990 1550 -590 {flags=graph
y1=0.081
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_out
V_IN_AC"
color="6 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/debug_clock_gen.raw
sim_type=tran}
B 2 -210 -990 590 -590 {flags=graph
y1=4.6e-08
y2=0.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/debug_clock_gen.raw
sim_type=tran
color=4
node=V_SOURCE}
B 2 750 -590 1550 -190 {flags=graph
y1=2.1e-05
y2=3.6e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/debug_clock_gen.raw
sim_type=tran
color=5
node=i(vmeas_pmos)}
B 2 750 -190 1550 210 {flags=graph
y1=2.1e-05
y2=3.6e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/debug_clock_gen.raw
sim_type=tran
color=5
node=i(vmeas_nmos)}
N -110 -50 -40 -50 {lab=V_IN_AC}
N -110 0 -110 60 {lab=V_IN_AC}
N -110 60 -40 60 {lab=V_IN_AC}
N 0 0 0 30 {lab=V_OUT}
N -110 -50 -110 0 {lab=V_IN_AC}
N 0 -20 0 0 {lab=V_OUT}
N -110 0 -90 0 {lab=V_IN_AC}
N -30 0 0 0 {lab=V_OUT}
N 0 380 0 430 {lab=GND}
N 0 -50 110 -50 {lab=#net1}
N 0 -400 110 -400 {lab=#net1}
N 0 -400 0 -340 {lab=#net1}
N 0 60 110 60 {lab=GND}
N 0 380 110 380 {lab=GND}
N -690 -480 -690 -240 {lab=#net1}
N 0 -480 0 -400 {lab=#net1}
N 0 -0 430 -0 {lab=V_OUT}
N -0 340 0 380 {lab=GND}
N -500 -480 0 -480 {lab=#net1}
N -380 0 -380 50 {lab=V_SOURCE}
N -380 -0 -270 -0 {lab=V_SOURCE}
N -220 0 -110 0 {lab=V_IN_AC}
N -500 -480 -500 -340 {lab=#net1}
N -690 -480 -500 -480 {lab=#net1}
N 110 -400 110 -50 {lab=#net1}
N 110 60 110 380 {lab=GND}
N 0 -280 0 -220 {lab=#net2}
N 0 -160 0 -80 {lab=#net2}
N 0 90 0 160 {lab=#net3}
N 0 220 0 280 {lab=#net3}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 60 0 0 {name=M1
l=0.13u
w=0.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -50 0 0 {name=M2
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {res.sym} -60 0 1 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {ammeter.sym} 0 310 0 0 {name=Vmeas_NMOS savecurrent=true spice_ignore=0}
C {ammeter.sym} 0 -310 0 0 {name=Vmeas_PMOS savecurrent=true spice_ignore=0}
C {gnd.sym} 0 430 0 0 {name=l1 lab=GND}
C {vsource.sym} -690 -210 0 0 {name=VDD value=1.5}
C {gnd.sym} -690 -180 0 0 {name=l2 lab=GND}
C {code_shown.sym} -687.5 -967.5 0 0 {name=s1 only_toplevel=false value="
.control 

*save VDD#branch V_OUT
save all
*dc V_IN 0 1.5 0.001 

*OPERATING POINT
*op

*TRANSIENT SIMULATION
tran 0.0001m 0.1m
*meas tran yavg AVG i(vdd) from=0m to=0.1m
*plot V_OUT



write debug_clock_gen.raw

.endc
"}
C {lab_wire.sym} 430 0 0 0 {name=p1 sig_type=std_logic lab=V_OUT}
C {devices/launcher.sym} 280 -260 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -700 460 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 280 -210 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/debug_clock_gen.raw tran"
}
C {devices/launcher.sym} 280 -170 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} -380 80 0 0 {name=V_IN value="SIN(100m 100m 32768)"}
C {gnd.sym} -380 110 0 0 {name=l3 lab=GND}
C {capa.sym} -245 0 3 0 {name=C1
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {osc_bias.sym} -470 -260 0 0 {name=x2}
C {gnd.sym} -500 -140 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -150 0 0 0 {name=p2 sig_type=std_logic lab=V_IN_AC}
C {lab_wire.sym} -380 0 0 0 {name=p3 sig_type=std_logic lab=V_SOURCE}
C {isource.sym} 0 -190 0 0 {name=I0 value=10n
spice_ignore=short}
C {isource.sym} 0 190 0 0 {name=I1 value=10n
spice_ignore=short}
