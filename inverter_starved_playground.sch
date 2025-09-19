v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 750 -520 750 -500 {lab=V_OUT}
N 750 -550 750 -530 {lab=V_OUT}
N 750 -580 860 -580 {lab=#net1}
N 750 -470 860 -470 {lab=GND}
N 750 -530 1050 -530 {lab=V_OUT}
N 860 -470 860 -240 {lab=GND}
N 280 -520 280 -470 {lab=V_IN1}
N 650 -520 670 -520 {lab=#net2}
N 750 -530 750 -520 {lab=V_OUT}
N 750 -960 750 -870 {lab=#net1}
N 750 -960 860 -960 {lab=#net1}
N 860 -840 860 -580 {lab=#net1}
N 750 -840 860 -840 {lab=#net1}
N 860 -960 860 -840 {lab=#net1}
N 540 -960 750 -960 {lab=#net1}
N 750 -140 750 -100 {lab=GND}
N 860 -240 860 -140 {lab=GND}
N 750 -140 860 -140 {lab=GND}
N 750 -210 750 -140 {lab=GND}
N 750 -240 860 -240 {lab=GND}
N 560 -210 560 -140 {lab=GND}
N 560 -140 750 -140 {lab=GND}
N 650 -240 710 -240 {lab=#net3}
N 540 -960 540 -870 {lab=#net1}
N 520 -960 540 -960 {lab=#net1}
N 520 -840 540 -840 {lab=#net1}
N 520 -960 520 -840 {lab=#net1}
N 180 -960 520 -960 {lab=#net1}
N 540 -240 560 -240 {lab=GND}
N 540 -240 540 -140 {lab=GND}
N 540 -140 560 -140 {lab=GND}
N 640 -840 710 -840 {lab=#net4}
N 540 -780 540 -750 {lab=#net4}
N 540 -780 640 -780 {lab=#net4}
N 640 -840 640 -780 {lab=#net4}
N 540 -810 540 -780 {lab=#net4}
N 580 -840 640 -840 {lab=#net4}
N 560 -310 560 -270 {lab=#net3}
N 650 -310 650 -240 {lab=#net3}
N 600 -240 650 -240 {lab=#net3}
N 560 -310 650 -310 {lab=#net3}
N 560 -360 560 -310 {lab=#net3}
N 550 -750 550 -630 {lab=#net4}
N 540 -750 550 -750 {lab=#net4}
N 550 -570 550 -360 {lab=#net3}
N 550 -360 560 -360 {lab=#net3}
N 750 -810 750 -780 {lab=#net5}
N 750 -720 750 -610 {lab=M2_Source}
N 750 -440 750 -390 {lab=#net6}
N 750 -330 750 -270 {lab=#net7}
N 180 -840 180 -790 {lab=GND}
N 180 -960 180 -900 {lab=#net1}
N 60 -520 60 -500 {lab=#net8}
N 170 -520 280 -520 {lab=V_IN1}
N 60 -520 120 -520 {lab=#net8}
N 650 -520 650 -480 {lab=#net2}
N 700 -530 700 -520 {lab=#net2}
N 670 -530 670 -520 {lab=#net2}
N 670 -530 700 -530 {lab=#net2}
N 650 -480 700 -480 {lab=#net2}
N 720 -520 750 -520 {lab=V_OUT}
N 560 -520 570 -520 {lab=V_IN1}
N 560 -520 560 -480 {lab=V_IN1}
N 600 -530 600 -520 {lab=V_IN1}
N 570 -530 600 -530 {lab=V_IN1}
N 570 -530 570 -520 {lab=V_IN1}
N 560 -480 600 -480 {lab=V_IN1}
N 630 -520 650 -520 {lab=#net2}
N 500 -520 560 -520 {lab=V_IN1}
N 500 -580 710 -580 {lab=V_IN1}
N 500 -580 500 -520 {lab=V_IN1}
N 280 -520 500 -520 {lab=V_IN1}
N 500 -470 710 -470 {lab=V_IN1}
N 500 -520 500 -470 {lab=V_IN1}
C {devices/code_shown.sym} -10 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 100 -220 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 100 -190 0 0 {name=h4
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 -470 0 0 {name=M1
l=\{l_p\}
w=\{w_p\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -580 0 0 {name=M2
l=\{l_p\}
w=\{2*\{w_p\}\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 750 -670 0 0 {name=p5 sig_type=std_logic lab=M2_Source}
C {vsource.sym} 180 -870 0 0 {name=VDD value=1.5}
C {gnd.sym} 180 -790 0 0 {name=l2 lab=GND}
C {vsource.sym} 280 -440 0 0 {name=V_IN value=0.75
spice_ignore=true}
C {gnd.sym} 280 -410 0 0 {name=l3 lab=GND
spice_ignore=true}
C {gnd.sym} 750 -100 0 0 {name=l1 lab=GND
}
C {lab_wire.sym} 1050 -530 0 0 {name=p1 sig_type=std_logic lab=V_OUT}
C {sg13g2_pr/annotate_fet_params.sym} 420 -490 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 420 -720 0 0 {name=annot2 ref=M2}
C {code_shown.sym} 1112.5 -1137.5 0 0 {name=s2 only_toplevel=false value="
.include inverter_starved_playground.save
.param w_p=0.45u l_p=0.13u
.control 
save all
op
write inverter_starved_playground.raw


.endc
"
spice_ignore=true}
C {code_shown.sym} 1132.5 -777.5 0 0 {name=s1 only_toplevel=false value="
.include inverter_starved_playground.save
.param w_p=2.5u l_p=0.13u
.save V_OUT
.save @n.xm2.nsg13_lv_pmos[l]
.save @n.xm1.nsg13_lv_nmos[l]
.save @n.xm2.nsg13_lv_pmos[w]
.save @n.xm1.nsg13_lv_nmos[w]
.op 
.control

option numdgt=3
set wr_singlescale
set wr_vecnames

compose w_vec start=0.2u stop=5u  step=0.05u
compose l_vec start=0.13u stop=2u  step=0.1u

foreach var1 $&l_vec
  alterparam l_p=$var1
  reset
	foreach var2 $&w_vec
  	alterparam w_p=$var2
  	reset
  	run 
  	wrdata sweep_starved_inverter.txt v(V_OUT) @n.xm2.nsg13_lv_pmos[l]  @n.xm1.nsg13_lv_nmos[l] @n.xm2.nsg13_lv_pmos[w] @n.xm1.nsg13_lv_nmos[w]
  	destroy all
  	set appendwrite
  	unset set wr_vecnames
	end
end

set appendwrite=0

alterparam w_p=1.0u
reset
op
show



write inverter_starved_playground.raw

.endc
"
spice_ignore=true}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 -240 0 0 {name=M3
l=\{l_p\}
w=\{w_p\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 -840 0 0 {name=M4
l=\{l_p\}
w=\{2*\{w_p\}\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 580 -240 2 0 {name=M5
l=\{l_p\}
w=\{w_p\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -840 2 0 {name=M6
l=\{l_p\}
w=\{2*\{w_p\}\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {isource.sym} 550 -600 0 0 {name=I0 value=25n}
C {ammeter.sym} 750 -750 0 0 {name=Vmeas_PMOS savecurrent=true spice_ignore=0}
C {ammeter.sym} 750 -360 0 0 {name=Vmeas_PMOS1 savecurrent=true spice_ignore=0}
C {vsource.sym} 60 -470 0 0 {name=V_IN1 value="SIN(100m 100m 32768)"
}
C {gnd.sym} 60 -440 0 0 {name=l4 lab=GND
}
C {capa.sym} 145 -520 3 0 {name=C1
m=1
value=500p
footprint=1206
device="ceramic capacitor"
}
C {code_shown.sym} -427.5 -957.5 0 0 {name=s3 only_toplevel=false value="
.include inverter_starved_playground.save
.param w_p=0.45u l_p=0.13u
.control 
save all


tran 0.0001m 0.2m

*plot i(VDD)
plot V_IN1 V_OUT
*plot i(Vmeas_PMOS)
*plot i(Vmeas_NMOS)
*plot i(Vmeas_PMOS1)
*plot i(Vmeas_NMOS1)

*.measure tran yrms RMS i(VDD) from=0.1m to=0.2m

.endc
"}
C {lab_wire.sym} 350 -520 0 0 {name=p2 sig_type=std_logic lab=V_IN1
}
C {sg13g2_pr/sg13_lv_pmos.sym} 700 -500 3 0 {name=M9
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 600 -500 3 0 {name=M7
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
