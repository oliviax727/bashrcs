# shellcheck shell=bash

profile_enter() {
    # Quick-Jump/CD
    export software="/fred/oz113/owalters"

    export QUICK_JUMP_VARS="sfred"

    # Uncomment if using default paths is prefered
    export force_set_TWD=yes

    export BASHRC_IGNORE_MODULES=$BASHRC_IGNORE_MODULES:$BASHRC_PATH/modules/boot-arch.bashrc
}

profile_alias() { :; }

profile_rc() { :; }

profile_exit() {
    terminal_colour --ancom
}
