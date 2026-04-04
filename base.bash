# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# ===== ENTER ===== #

# Define the path to this repository
export BASHRC_PATH="${HOME}/Desktop/Fun/bashrcs"

. "${BASHRC_PATH}/enter.bash"

# ===== CHECK PROFILES ===== #
device_name=$(hostnamectl | egrep -i "Static hostname" | awk '{print $NF}' || hostname)

profile_substrings=( "delll" "sirius" "setonix" )

# Structure of a profile file:
# Other code:    runs on load
# profile_enter: runs after initial sourcing
# profile_alias: runs during alias step
# profile_rc:    runs during bashrc step
# profile_exit:  runs on exit
. "${BASHRC_PATH}/none.bash_profile"

export BASH_PROFILE="none"

for profile in "${profile_substrings[@]}"; do
    if [[ ${device_name,,} =~ ${profile,,} ]]; then
        . "${BASHRC_PATH}/${profile}.bash_profile"
        BASH_PROFILE="${profile}"
        break
    fi
done

profile_enter

# ===== RUN ALIASES ===== #

alias_files=($BASHRC_PATH/*.bash_aliases)

for alias in "${alias_files[@]}"; do
    . "${alias}"
done

profile_alias

shopt -s expand_aliases

# ===== RUN RCS ===== #

bashrc_files=($BASHRC_PATH/*.bashrc)

for bashrc in "${bashrc_files[@]}"; do
    echo $bashrc
    . "${bashrc}"
done

profile_rc

# ===== EXIT ===== #

. "${BASHRC_PATH}/exit.bash"

profile_exit
