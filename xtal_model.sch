v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -30 -0 -30 {lab=#net1}
N -100 -30 -80 -30 {lab=XO1}
N -100 -30 -100 70 {lab=XO1}
N -100 70 -10 70 {lab=XO1}
N 60 -30 90 -30 {lab=#net2}
N 150 -30 200 -30 {lab=xxx}
N 50 70 200 70 {lab=xxx}
N 200 -30 200 70 {lab=xxx}
N -150 -30 -100 -30 {lab=XO1}
N 200 -30 250 -30 {lab=xxx}
C {res.sym} -50 -30 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 30 -30 3 0 {name=Cm
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 20 70 3 0 {name=C0
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 120 -30 3 0 {name=Lm
m=1
value=1n
footprint=1206
device=inductor}
C {iopin.sym} 250 -30 0 0 {name=p1 lab=XO2
}
C {iopin.sym} -150 -30 2 0 {name=p2 lab=XO1}
