v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -190 60 -190 80 {lab=GND}
N 80 -20 80 80 {lab=GND}
N -190 80 80 80 {lab=GND}
N -190 -20 -190 -0 {lab=Z}
N -190 -20 -90 -20 {lab=Z}
C {/foss/designs/XTAL/xtal/xtal_model.sym} 0 -10 0 0 {name=x1}
C {isource.sym} -190 30 0 0 {name=I0 value=1}
C {gnd.sym} -190 80 0 0 {name=l1 lab=GND}
C {code_shown.sym} -270 -290 0 0 {name=s1 only_toplevel=false 
value="
.param temp=27
.control 

save all

ac dec 10 1 50k
write xtal_model_tb.raw

.endc
"}
C {lab_pin.sym} -190 -20 0 0 {name=p1 sig_type=std_logic lab=Z}
