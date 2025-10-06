v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 630 -960 2120 -350 {flags=graph,private_cursor
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0005
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_out_buff
reset_n
trigger
b0
b1
b2
b3
b4
b5"
color="4 12 7 21 10 10 10 10 10"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
hilight_wave=-1}
N 440 -20 440 20 {lab=GND}
N 1840 -70 1880 -70 {lab=b3}
N 1840 -40 1880 -40 {lab=b2}
N 1840 -20 1880 -20 {lab=b1}
N 1840 0 1880 0 {lab=b0}
N 1840 -100 1880 -100 {lab=b4}
N 1840 -120 1880 -120 {lab=b5}
N 1840 -150 1880 -150 {lab=trigger}
N 1840 -150 1840 -130 {lab=trigger}
N 1620 0 1680 0 {lab=reset_n}
N 440 -100 440 -80 {lab=reset_n}
N 540 -150 540 -90 {lab=VDD}
N 540 -30 540 20 {lab=GND}
N 650 -150 650 -80 {lab=V_IN_OSC}
N 1100 -30 1240 -30 {lab=#net1}
N 1240 -30 1240 -0 {lab=#net1}
N 1100 -10 1100 130 {lab=#net2}
N 1100 130 1240 130 {lab=#net2}
N 1240 100 1240 130 {lab=#net2}
N 1140 50 1190 50 {lab=V_IN_OSC}
N 1420 50 1530 50 {lab=V_OUT_BUFF}
N 1530 -120 1530 50 {lab=V_OUT_BUFF}
N 1530 -120 1680 -120 {lab=V_OUT_BUFF}
N 920 -230 920 -180 {lab=VDD}
N 1300 -50 1300 0 {lab=VDD}
N 1760 -210 1760 -160 {lab=VDD}
N 1300 100 1300 140 {lab=GND}
N 1760 40 1760 80 {lab=GND}
N 920 20 920 60 {lab=GND}
N 1160 -140 1160 -100 {lab=GND}
N 1100 -140 1100 -50 {lab=GND}
N 1100 -140 1160 -140 {lab=GND}
N 650 -30 650 20 {lab=GND}
C {devices/launcher.sym} 70 -170 0 0 {name=h3
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} -17.5 -847.5 0 0 {name=s3 only_toplevel=false value="
*.include inverter_starved_v2_playground.save
.include /foss/designs/xtal/xspice/cntr_trig_board.xspice
.param w_p=0.40u l_p=0.13u


.control 
save all


tran 0.1u 0.5m
write clock_buffer_tb.raw

*plot V_IN1 V_OUT_1 V_OUT_2 V_OUT_3 V_OUT_4 V_OUT_BUFF
*plot V_IN_OSC 


*fft V_OUT_3
*plot mag(V_OUT_3)

*.measure tran yrms RMS i(VDD) from=0.1m to=0.2m

.endc
"
}
C {osc_bias.sym} 950 -100 0 0 {name=x1}
C {/foss/designs/xtal/xspice/cntr_trig_board.sym} 1760 -60 0 0 {name=x2}
C {devices/gnd.sym} 440 20 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 440 -50 0 0 {name=vrst value=0
}
C {devices/lab_wire.sym} 1880 -70 0 1 {name=p11 sig_type=std_logic lab=b3}
C {devices/lab_wire.sym} 1880 -40 0 1 {name=p12 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1880 -20 0 1 {name=p13 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1880 0 0 1 {name=p14 sig_type=std_logic lab=b0}
C {devices/lab_wire.sym} 1880 -100 0 1 {name=p15 sig_type=std_logic lab=b4}
C {devices/lab_wire.sym} 1880 -120 0 1 {name=p16 sig_type=std_logic lab=b5}
C {devices/lab_wire.sym} 1880 -150 0 1 {name=p17 sig_type=std_logic lab=trigger}
C {devices/lab_wire.sym} 440 -100 0 0 {name=p10 sig_type=std_logic lab=reset_n}
C {devices/lab_wire.sym} 1620 0 0 0 {name=p18 sig_type=std_logic lab=reset_n}
C {vsource.sym} 540 -60 0 0 {name=VDD value=1.5}
C {gnd.sym} 540 20 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 540 -150 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {clock_gen.sym} 1270 50 0 0 {name=x3}
C {vsource.sym} 650 -60 0 0 {name=V_IN1 value="SIN(100m 100m 32768)"
}
C {gnd.sym} 650 20 0 0 {name=l4 lab=GND
}
C {devices/lab_wire.sym} 650 -150 0 0 {name=p2 sig_type=std_logic lab=V_IN_OSC}
C {devices/lab_wire.sym} 1180 50 0 0 {name=p3 sig_type=std_logic lab=V_IN_OSC}
C {devices/lab_wire.sym} 920 -230 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1300 -50 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1760 -210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1300 140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1760 80 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 70 -100 0 0 {name=h2
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/clock_buffer_tb.raw tran"
}
C {devices/gnd.sym} 920 60 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1160 -100 0 0 {name=l7 lab=GND}
C {devices/code_shown.sym} 20 60 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 1530 -120 0 0 {name=p8 sig_type=std_logic lab=V_OUT_BUFF}
