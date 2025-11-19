v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -520 -1000 280 -600 {flags=graph
y1=0.0016
y2=0.24
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
rawfile=$netlist_dir/xo_transient_tb.raw
sim_type=tran
color=4
node=v_out}
B 2 340 -1010 1140 -610 {flags=graph
y1=-5.8e-08
y2=-5.7e-08
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
sim_type=tran
color=7
node=i(vdd)}
N 120 400 120 440 {lab=GND}
N -520 -40 -520 400 {lab=GND}
N -310 -250 -310 400 {lab=GND}
N -520 400 -310 400 {lab=GND}
N -30 -490 -30 -450 {lab=#net1}
N -520 -490 -30 -490 {lab=#net1}
N -520 -490 -520 -100 {lab=#net1}
N -310 -250 -30 -250 {lab=GND}
N 150 -320 270 -320 {lab=#net2}
N -160 30 40 30 {lab=#net3}
N 40 30 40 60 {lab=#net3}
N -160 200 40 200 {lab=V_OUT}
N 40 140 40 200 {lab=V_OUT}
N 120 200 120 400 {lab=GND}
N -40 400 120 400 {lab=GND}
N 270 -320 270 -230 {lab=#net2}
N 270 -170 270 -0 {lab=#net4}
N 40 200 40 270 {lab=V_OUT}
N -40 290 -40 400 {lab=GND}
N -310 400 -40 400 {lab=GND}
N -40 110 -40 230 {lab=#net5}
N -100 110 -40 110 {lab=#net5}
C {gnd.sym} 120 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 350 -480 0 0 {name=TRAN only_toplevel=false 
value="

.control 

save V_OUT VDD#branch
*save V_OUT

tran 2u 1s

plot V_OUT
write xo_transient_tb.raw

*set wr_singlecase
*set wr_vecnames

*wrdata /foss/designs/xtal/simulations/xo_transient_tb.txt V_OUT

.endc
"
}
C {devices/code_shown.sym} -980 350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 460 340 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 460 380 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} -520 -70 0 0 {name=VDD value=1.5}
C {devices/launcher.sym} 460 420 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/xo_transient_tb.raw tran"
}
C {osc_bias.sym} 0 -370 0 0 {name=x1}
C {xtal_model.sym} -170 120 1 0 {name=x2}
C {xo_core.sym} 190 100 0 0 {name=x3}
C {vsource.sym} -930 130 0 0 {name=V_CFG_1 value=1.5}
C {vsource.sym} -930 230 0 0 {name=V_CFG_2 value=1.5}
C {vsource.sym} -740 140 0 0 {name=V_CFG_3 value=0}
C {gnd.sym} -930 160 0 0 {name=l2 lab=GND}
C {gnd.sym} -930 260 0 0 {name=l3 lab=GND}
C {gnd.sym} -740 170 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -930 100 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -930 200 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -740 110 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 150 -400 2 0 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 150 -360 2 0 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} 150 -380 2 0 {name=p6 sig_type=std_logic lab=cfg_3}
C {ammeter.sym} 270 -200 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 40 270 2 0 {name=p7 sig_type=std_logic lab=V_OUT}
C {vsource.sym} -960 -100 0 0 {name=VDD1 value="PULSE(0 1.5 1u)"
spice_ignore=true}
C {vsource.sym} -720 -60 0 0 {name=V_CFG_7 value=0}
C {gnd.sym} -720 -30 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -720 -90 0 0 {name=p10 sig_type=std_logic lab=enable_bias}
C {lab_pin.sym} -80 -400 0 0 {name=p8 sig_type=std_logic lab=enable_bias}
C {vsource.sym} -720 -250 0 0 {name=V_CFG_4 value="PULSE(1.5 0 10u)"
spice_ignore=true}
C {gnd.sym} -720 -220 0 0 {name=l5 lab=GND
spice_ignore=true}
C {lab_pin.sym} -720 -280 0 0 {name=p9 sig_type=std_logic lab=enable_bias
spice_ignore=true}
C {isource.sym} -40 260 2 0 {name=I0 value="PULSE(1n 0 10u)"}
