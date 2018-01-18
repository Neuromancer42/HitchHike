quietly set ACTELLIBNAME IGLOO
quietly set PROJECT_DIR "C:/Users/Neuromancer/Documents/WorkSpace/HitchHike/HitchHike_FPGA_code"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap igloo "C:/Microsemi/Libero_SoC_v11.8/Designer/lib/modelsim/precompiled/vlog/igloo"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/demodulator.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/mac.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/randgen.v"
vlog "+incdir+${PROJECT_DIR}/hdl" "+incdir+${PROJECT_DIR}/component/work/mac_tb" "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/mac_tb/mac_tb.v"
vlog "+incdir+${PROJECT_DIR}/hdl" "+incdir+${PROJECT_DIR}/component/work/mac_tb" "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/mac_tb_tb.v"

vsim -L igloo -L presynth  -t 1ps presynth.mac_tb_tb
add wave /mac_tb_tb/*
add log -r /*
run 10us
