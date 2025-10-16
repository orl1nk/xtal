v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 640 -580 710 -580 {lab=#net1}
N 640 -470 710 -470 {lab=#net1}
N 750 -520 750 -500 {lab=V_OUT}
N 750 -550 750 -530 {lab=V_OUT}
N 750 -580 860 -580 {lab=M2_Source}
N 750 -470 860 -470 {lab=GND}
N 860 -760 860 -580 {lab=M2_Source}
N 750 -320 750 -240 {lab=GND}
N 750 -530 1050 -530 {lab=V_OUT}
N 860 -470 860 -320 {lab=GND}
N 640 -520 640 -470 {lab=#net1}
N 750 -760 860 -760 {lab=M2_Source}
N 180 -760 180 -480 {lab=M2_Source}
N 750 -760 750 -610 {lab=M2_Source}
N 180 -760 750 -760 {lab=M2_Source}
N 750 -320 860 -320 {lab=GND}
N 750 -440 750 -320 {lab=GND}
N 280 -520 280 -470 {lab=#net1}
N 280 -520 640 -520 {lab=#net1}
N 640 -580 640 -520 {lab=#net1}
N 640 -520 660 -520 {lab=#net1}
N 720 -520 750 -520 {lab=V_OUT}
N 750 -530 750 -520 {lab=V_OUT}
C {devices/code_shown.sym} -10 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 100 -230 0 0 {name=h3
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
C {vsource.sym} 180 -450 0 0 {name=VDD value=1.5}
C {gnd.sym} 180 -420 0 0 {name=l2 lab=GND}
C {vsource.sym} 280 -440 0 0 {name=V_IN value=0.75
spice_ignore=true}
C {gnd.sym} 280 -410 0 0 {name=l3 lab=GND
spice_ignore=true}
C {gnd.sym} 750 -240 0 0 {name=l1 lab=GND
}
C {lab_wire.sym} 1050 -530 0 0 {name=p1 sig_type=std_logic lab=V_OUT}
C {sg13g2_pr/annotate_fet_params.sym} 530 -430 0 0 {name=annot1 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 530 -690 0 0 {name=annot2 ref=M2}
C {code_shown.sym} 1112.5 -1127.5 0 0 {name=s2 only_toplevel=false value="
.include inverter_playground.save
.param w_p=0.650u l_p=0.145u
.control 
save all
op
write inverter_playground.raw
set appendwrite

dc V_IN 0 1.5 0.001
plot V_OUT
write inverter_playground.raw

.endc
"
}
C {code_shown.sym} 1132.5 -777.5 0 0 {name=s1 only_toplevel=false value="
.include inverter_playground.save
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
compose l_vec start=0.13u stop=0.2u  step=0.005u

foreach var1 $&l_vec
  alterparam l_p=$var1
  reset
	foreach var2 $&w_vec
  	alterparam w_p=$var2
  	reset
  	run 
  	*wrdata sweep_inverter_test.txt @n.xm2.nsg13_lv_pmos[l]  @n.xm1.nsg13_lv_nmos[l] @n.xm2.nsg13_lv_pmos[w] @n.xm1.nsg13_lv_nmos[w]
         wrdata sweep_inverter_yoyo.txt @n.xm1.nsg13_lv_nmos[l] @n.xm1.nsg13_lv_nmos[w] @n.xm2.nsg13_lv_pmos[w] @n.xm1.nsg13_lv_nmos[w]
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



write inverter_playground.raw

.endc
"
spice_ignore=true}
C {res.sym} 690 -520 1 0 {name=R1
value=10Meg
footprint=1206
device=resistor
m=1
}
