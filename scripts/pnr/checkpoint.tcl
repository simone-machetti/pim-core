# -----------------------------------------------------------------------------
# Author: Simone Machetti
# SPDX-License-Identifier: Apache-2.0
# -----------------------------------------------------------------------------

proc save_checkpoint {tag} {
    global OUT_DIR
    write_db $OUT_DIR/${tag}.odb
}

proc load_checkpoint {tag} {
    global OUT_DIR DONT_USE
    read_db $OUT_DIR/${tag}.odb
    source $::env(REPO_HOME)/scripts/pnr/constraints.tcl
    source $::env(REPO_HOME)/scripts/pnr/setRC_extra.tcl
    source $::env(BEOL_HOME)/setRC.tcl
    set_dont_use $DONT_USE

    if {$::env(SEL_CELL_PAD) > 0} {
        set_placement_padding -global -right $::env(SEL_CELL_PAD)
    }
}
