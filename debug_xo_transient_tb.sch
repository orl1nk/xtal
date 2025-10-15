v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 400 120 440 {lab=GND}
N -520 -40 -520 400 {lab=GND}
N -520 400 -310 400 {lab=GND}
N -520 -490 -520 -100 {lab=#net1}
N -310 -90 -310 400 {lab=GND}
N -160 30 40 30 {lab=#net2}
N 40 30 40 60 {lab=#net2}
N -160 200 40 200 {lab=V_OSC}
N 40 140 40 200 {lab=V_OSC}
N 120 290 120 400 {lab=GND}
N -310 400 120 400 {lab=GND}
N 40 200 40 270 {lab=V_OSC}
N -310 -490 -310 -460 {lab=#net1}
N -520 -490 -310 -490 {lab=#net1}
N 160 -310 160 -270 {lab=#net3}
N -130 -290 -130 -170 {lab=#net4}
N -130 -170 160 -170 {lab=#net4}
N 220 -490 220 -270 {lab=#net1}
N -310 -490 220 -490 {lab=#net1}
N 220 -170 220 -90 {lab=GND}
N -310 -260 -310 -90 {lab=GND}
N -130 -330 -80 -330 {lab=#net5}
N -80 -330 -80 -40 {lab=#net5}
N -80 -40 270 -40 {lab=#net5}
N 270 -40 270 -0 {lab=#net5}
N -130 -310 160 -310 {lab=#net3}
N -310 -90 220 -90 {lab=GND}
N -860 -100 -860 -60 {lab=GND}
N -860 -180 -860 -160 {lab=reset_n}
N 490 -110 570 -110 {lab=reset_n}
N 650 -60 650 290 {lab=GND}
N 120 290 650 290 {lab=GND}
N 120 200 120 290 {lab=GND}
N 650 -500 650 -340 {lab=#net1}
N 220 -500 650 -500 {lab=#net1}
N 220 -500 220 -490 {lab=#net1}
N 520 -200 570 -200 {lab=V_OUT_BUFF}
N 730 -120 890 -120 {lab=b3}
N 730 -110 790 -110 {lab=b2}
N 730 -100 780 -100 {lab=b1}
N 730 -90 770 -90 {lab=b0}
N 730 -130 860 -130 {lab=b4}
N 730 -140 840 -140 {lab=b5}
N 770 -90 770 -50 {lab=b0}
N 770 -50 800 -50 {lab=b0}
N 780 -100 780 -70 {lab=b1}
N 780 -70 800 -70 {lab=b1}
N 790 -110 790 -90 {lab=b2}
N 790 -90 800 -90 {lab=b2}
N 730 -150 820 -150 {lab=b6}
N 730 -160 1040 -160 {lab=#net6}
N 730 -180 980 -180 {lab=#net7}
N 730 -170 1010 -170 {lab=#net8}
N 730 -190 960 -190 {lab=#net9}
N 730 -200 920 -200 {lab=b11}
N 730 -210 900 -210 {lab=b12}
N 730 -220 880 -220 {lab=b13}
N 730 -230 800 -230 {lab=b14}
N 730 -270 770 -270 {lab=trigger}
C {gnd.sym} 120 440 0 0 {name=l1 lab=GND}
C {code_shown.sym} 870 -810 0 0 {name=s1 only_toplevel=false 
value="
*.option rshunt = 1.0e13
*.option cshunt = 1e-14
*.option KLU
*.options method = gear
*.options gmin=1e-10
.include /foss/designs/xtal/xspice/cntr_trig_15b_board.xspice
.param w_p=0.40u l_p=0.13u
.control 
*save all
save V_OSC V_OUT V_OUT_BUFF trigger b14 b13 b12

tran 0.1u 3s
plot V_OSC V_OUT_BUFF
plot trigger b14 b13 b12
write debug_xo_transient_tb.raw

.endc
"}
C {devices/code_shown.sym} -900 360 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
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
tclcommand="xschem raw_read $netlist_dir/debug_xo_transient_tb.raw tran"
}
C {osc_bias.sym} -280 -380 0 0 {name=x1}
C {xtal_model.sym} -170 120 1 0 {name=x2}
C {xo_core.sym} 190 100 0 0 {name=x3}
C {vsource.sym} -850 140 0 0 {name=V_CFG_1 value="PULSE(1.5 0 1m)"}
C {vsource.sym} -850 240 0 0 {name=V_CFG_2 value="PULSE(1.5 0 1m)"}
C {vsource.sym} -660 150 0 0 {name=V_CFG_3 value="PULSE(1.5 0 1m)"}
C {gnd.sym} -850 170 0 0 {name=l2 lab=GND}
C {gnd.sym} -850 270 0 0 {name=l3 lab=GND}
C {gnd.sym} -660 180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -850 110 0 0 {name=p1 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -850 210 0 0 {name=p2 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -660 120 0 0 {name=p3 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} -130 -410 2 0 {name=p4 sig_type=std_logic lab=cfg_1}
C {lab_pin.sym} -130 -390 2 0 {name=p5 sig_type=std_logic lab=cfg_2}
C {lab_pin.sym} -130 -370 2 0 {name=p6 sig_type=std_logic lab=cfg_3}
C {lab_pin.sym} 40 270 2 0 {name=p7 sig_type=std_logic lab=V_OSC}
C {clock_gen.sym} 190 -220 0 0 {name=x4
}
C {lab_pin.sym} 110 -220 0 0 {name=p8 sig_type=std_logic lab=V_OSC}
C {lab_pin.sym} 340 -220 2 0 {name=p9 sig_type=std_logic lab=V_OUT_BUFF}
C {capa.sym} 10 -280 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"
}
C {gnd.sym} 10 -250 0 0 {name=l5 lab=GND
}
C {/foss/designs/xtal/xspice/cntr_trig_15b_board.sym} 650 -280 0 0 {name=x5}
C {devices/gnd.sym} -860 -60 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -860 -130 0 0 {name=vrst value=0
}
C {devices/lab_wire.sym} -860 -180 0 0 {name=p10 sig_type=std_logic lab=reset_n}
C {devices/lab_wire.sym} 490 -110 0 0 {name=p11 sig_type=std_logic lab=reset_n}
C {lab_pin.sym} 520 -200 0 0 {name=p12 sig_type=std_logic lab=V_OUT_BUFF}
C {devices/lab_wire.sym} 890 -120 0 1 {name=p13 sig_type=std_logic lab=b3}
C {devices/lab_wire.sym} 800 -90 0 1 {name=p14 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 800 -70 0 1 {name=p15 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 800 -50 0 1 {name=p16 sig_type=std_logic lab=b0}
C {devices/lab_wire.sym} 860 -130 0 1 {name=p17 sig_type=std_logic lab=b4}
C {devices/lab_wire.sym} 840 -140 0 1 {name=p18 sig_type=std_logic lab=b5}
C {devices/lab_wire.sym} 820 -150 0 1 {name=p19 sig_type=std_logic lab=b6}
C {devices/lab_wire.sym} 800 -230 0 1 {name=p20 sig_type=std_logic lab=b14}
C {devices/lab_wire.sym} 880 -220 0 1 {name=p21 sig_type=std_logic lab=b13}
C {devices/lab_wire.sym} 900 -210 0 1 {name=p22 sig_type=std_logic lab=b12}
C {devices/lab_wire.sym} 920 -200 0 1 {name=p23 sig_type=std_logic lab=b11}
C {devices/lab_wire.sym} 770 -270 0 1 {name=p24 sig_type=std_logic lab=trigger}
