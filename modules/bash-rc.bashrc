# ===== BASH-RC PACKAGE MODULES ===== #

bash-rc() {

    # Load repository base.bash file as bashrc
    function build() {
        

    }

    # Load repository from upstream
    function update() {
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

    # Publishes a testing module function
    function publish() {
        :
    }

    # Help
    function help() {
        echo "=================================="
        echo "Load and alter the .bashrc file from the bash-rc repository."
        echo "=================================="
        echo "Usage:"
        echo "bash-rc build [-k] [-f] [-p]"
        echo " "
        echo "bash-rc update"
        echo " "
        echo "bash-rc checkout <branch_name>"
        echo " "
        echo "bash-rc archive"
        echo " "
        echo "bash-rc purge"
        echo " "
        echo "bash-rc test"
        echo " "
        echo "bash-rc publish [enter|exit|alias|rc]"
        echo " "
        echo "=================================="
        echo "Commands:"
        echo "build                Update the bashrc"
        echo "update               Update the bashrc"
        echo "checkout             A"
        echo "archive              Add/Modify a named file path on a given SSH host"
        echo "purge                Remove a named host or file path"
        echo "test                 Remove ALL named host or file path"
        echo "publish              Copy files to and from host"
        echo "help                 Access the help menu"
        echo "=================================="
        echo "Options:"
        echo "-f                   Do not archive the existing bashrc"
        echo "-k                   Run diff check and keep the difference in the bashrc"
        echo "-p                   Pull from github remote"
        echo "=================================="
    }

    exec $1

}