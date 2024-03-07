#!/bin/bash

# Get current directory and source python
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source $SCRIPT_DIR/.venv/bin/activate
echo "Python activated from $SCRIPT_DIR/.venv/bin/activate"
