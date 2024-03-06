# Get python environment directory from poetry, or from a manual path if not possible
{ 
    poetry shell &&
} || { # Replace with you own python dir
    SCRIPT_DIR=/home/cdroin/.cache/pypoetry/virtualenvs/da-ipac-2024-9zWX8Y7C-py3.10
    source $SCRIPT_DIR/miniforge/bin/activate
}
