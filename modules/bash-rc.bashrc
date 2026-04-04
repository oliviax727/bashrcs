# ===== BASH-RC PACKAGE MODULES ===== #

bash-rc() {

    # Load repository base.bash file as bashrc
    function update() {
        # Options
        # -f (do not archive current bashrc)
        # -k (run diff then keep the difference with the bashrc)
        :
    }

    # Checkout different branch in bash-rc file
    function checkout() {
        :

    }

    # Archives current .bashrc from home directory
    function archive() {
        :
    }

    # Purges archives
    function purge() {
        :
    }

    # Enter testing mode profile
    function test() {
        :
    }

    exec $1

}