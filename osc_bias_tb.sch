v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 -80 -210 -30 {lab=#net1}
N -210 -80 -0 -80 {lab=#net1}
N -0 -80 -0 -60 {lab=#net1}
N -210 30 -210 120 {lab=GND}
N -210 120 -0 120 {lab=GND}
N -0 40 -0 120 {lab=GND}
N 150 -10 170 -10 {lab=#net2}
N 0 120 170 120 {lab=GND}
N 0 120 0 150 {lab=GND}
N 170 -10 170 30 {lab=#net2}
N 170 90 170 120 {lab=GND}
C {vsource.sym} -210 0 0 0 {name=VDD value=1.2}
C {devices/code_shown.sym} -220 230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 170 200 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 170 250 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 290 -100 0 0 {name=s1 only_toplevel=false 
value="
*.include bias_generator.save
.control 


save all

op
write osc_bias_tb.raw
*set appendwrite

.endc
"}
C {gnd.sym} 0 150 0 0 {name=l1 lab=GND}
C {ammeter.sym} 170 60 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/launcher.sym} 170 300 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/osc_bias_tb.sch"
}
C {/foss/designs/xtal/osc_bias.sym} 0 -10 0 0 {name=x1}
