# Get current directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Get python environment directory from poetry, or from local environment created by poetry if not possible
{ 
    poetry shell &&
} || { # Replace with you own python dir
    source $SCRIPT_DIR/.venv/bin/activate
}
