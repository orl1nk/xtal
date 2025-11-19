v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N -20 -30 -0 -30 {lab=#net1}
N -100 -30 -80 -30 {lab=XO1}
N -100 -30 -100 70 {lab=XO1}
N -100 70 -10 70 {lab=XO1}
N 70 -30 90 -30 {lab=i_pulse}
N 150 -30 200 -30 {lab=XO2}
N 50 70 200 70 {lab=XO2}
N 200 -30 200 70 {lab=XO2}
N -150 -30 -100 -30 {lab=XO1}
N 200 -30 250 -30 {lab=XO2}
N 70 -140 70 -30 {lab=i_pulse}
N 60 -30 70 -30 {lab=i_pulse}
C {res.sym} -50 -30 3 0 {name=Rm
value=57028.5
footprint=1206
device=resistor
m=1}
C {capa.sym} 30 -30 3 0 {name=Cm
m=1
value=6.408f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 20 70 3 0 {name=Cp
m=1
value=1.398p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 120 -30 3 0 {name=Lm
m=1
value=3685.8
footprint=1206
device=inductor}
C {iopin.sym} 250 -30 0 0 {name=p1 lab=XO2
}
C {iopin.sym} -150 -30 2 0 {name=p2 lab=XO1}
C {iopin.sym} 70 -140 3 0 {name=p3 lab=i_pulse
}
