# Created by Microsemi Libero Software 11.8.2.4
# Thu Jan 18 20:04:21 2018

# (OPEN DESIGN)

open_design "top.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "top_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\Neuromancer\Documents\WorkSpace\HitchHike\HitchHike_FPGA_code\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/top.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {top_compile_report.txt}
report -type "pin" -listby "name" {top_report_pin_byname.txt}
report -type "pin" -listby "number" {top_report_pin_bynumber.txt}

save_design
