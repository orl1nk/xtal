v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 30 -210 120 {lab=GND}
N 0 120 170 120 {lab=GND}
N 0 120 0 150 {lab=GND}
N 170 -10 170 30 {lab=#net1}
N 170 90 170 120 {lab=GND}
N -210 -140 -210 -30 {lab=#net2}
N 100 -10 170 -10 {lab=#net1}
N -80 120 -0 120 {lab=GND}
N -210 -140 -80 -140 {lab=#net2}
N -80 60 -80 120 {lab=GND}
N -210 120 -80 120 {lab=GND}
C {vsource.sym} -210 0 0 0 {name=VDD value=1.5}
C {devices/code_shown.sym} -610 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 410 -50 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 410 0 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} -610 -400 0 0 {name=s1 only_toplevel=false 
value="
*.include bias_generator.save
.save i(vmeas)
.control 

*save all

tran 1ms 0.5s
plot i(vmeas)
write osc_bias_tb.raw
*set appendwrite

.endc
"}
C {ammeter.sym} 170 60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/launcher.sym} 410 50 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_bias_tb.sch"
}
C {osc_bias.sym} -50 -60 0 0 {name=x1}
C {vsource.sym} -590 -90 0 0 {name=V_CFG_1 value="PULSE(1.5 0 100m)"}
C {vsource.sym} -590 10 0 0 {name=V_CFG_2 value="PULSE(1.5 0 200m)"}
C {vsource.sym} -400 -80 0 0 {name=V_CFG_3 value="PULSE(1.5 0 300m)"}
C {gnd.sym} -590 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} -590 40 0 0 {name=l3 lab=GND}
C {gnd.sym} -400 -50 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -590 -120 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {gnd.sym} 0 150 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -590 -20 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -400 -110 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 100 -90 0 1 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} 100 -70 0 1 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} 100 -50 0 1 {name=p6 sig_type=std_logic lab=cfg_3}
