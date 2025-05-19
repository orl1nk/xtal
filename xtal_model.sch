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
N 150 -30 200 -30 {lab=XO2}
N 50 70 200 70 {lab=XO2}
N 200 -30 200 70 {lab=XO2}
N -150 -30 -100 -30 {lab=XO1}
N 200 -30 250 -30 {lab=XO2}
C {res.sym} -50 -30 3 0 {name=Rs
value=50k
footprint=1206
device=resistor
m=1}
C {capa.sym} 30 -30 3 0 {name=Cs
m=1
value=1.39f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 20 70 3 0 {name=C0
m=1
value=1.35p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 120 -30 3 0 {name=Ls
m=1
value=17k
footprint=1206
device=inductor}
C {iopin.sym} 250 -30 0 0 {name=p1 lab=XO2
}
C {iopin.sym} -150 -30 2 0 {name=p2 lab=XO1}
