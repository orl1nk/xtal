v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 110 -10 150 {lab=GND}
N -320 -370 290 -370 {lab=V}
N -60 -190 -60 -140 {lab=A}
N -320 -60 -320 110 {lab=GND}
N -320 110 -10 110 {lab=GND}
N -320 -370 -320 -120 {lab=V}
N -100 -190 -100 -130 {lab=A}
N -100 -190 -60 -190 {lab=A}
N -100 -70 -100 -10 {lab=B}
N -100 -10 -60 -10 {lab=B}
N -60 -80 -60 -10 {lab=B}
N 140 -10 140 110 {lab=GND}
N -10 110 140 110 {lab=GND}
N 290 -250 290 -210 {lab=#net1}
N 290 -370 290 -310 {lab=V}
N -60 -190 60 -190 {lab=A}
N 60 -190 60 -150 {lab=A}
N -60 -10 60 -10 {lab=B}
N 60 -70 60 -10 {lab=B}
C {capa.sym} -60 -110 0 0 {name=C0
m=1
value=1.398p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -10 150 0 0 {name=l1 lab=GND}
C {code_shown.sym} 520 -590 0 0 {name=s1 only_toplevel=false 
value="
.control 
save all
op
write neg_resistance_tb.raw
set appendwrite
ac lin 100 30.0k 36.0k

let nres = real(A-B)
plot nres xlimit 30.0k 36.0k ylabel 'Negative Resistance'


wrdata neg_res.txt nres

write neg_resistance_tb.raw

.endc
"}
C {lab_pin.sym} 60 -190 1 0 {name=p1 sig_type=std_logic lab=A}
C {devices/code_shown.sym} -330 220 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 220 230 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 220 270 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {isource.sym} 290 -280 0 0 {name=I0 value=50n}
C {isource.sym} -100 -100 2 0 {name=I1 value="dc 0 ac 1"}
C {lab_pin.sym} 50 -10 1 0 {name=p2 sig_type=std_logic lab=B}
C {vsource.sym} -320 -90 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} -320 -320 0 0 {name=p3 sig_type=std_logic lab=V}
C {xo_core.sym} 210 -110 0 0 {name=x1}
