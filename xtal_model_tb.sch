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
C {xtal_model.sym} 0 -10 0 0 {name=x1}
C {isource.sym} -190 30 0 0 {name=I0 value="dc 0 ac 1"}
C {gnd.sym} -190 80 0 0 {name=l1 lab=GND}
C {code_shown.sym} -500 -440 0 0 {name=s1 only_toplevel=false 
value="
.control 

save all

ac lin 1000 32.6k 32.9k
plot vdb(Z) xlimit 32.6k 32.9k ylabel 'Z(w)'
plot cph(Z) xlimit 32.6K 32.9k ylabel 'phase (in rad)'
*let outd = 180/PI*cph(Z)
*settype phase outd
*plot outd xlimit 1 100k ylabel 'phase'
write xtal_model_tb.raw

.endc
"}
C {lab_pin.sym} -190 -20 0 0 {name=p1 sig_type=std_logic lab=Z}
