# Status of beam-beam studies for the HL-LHC

## Code structure

All the code is based on a refactoring of the [Xsuite example_DA_study boilerplate](https://github.com/xsuite/example_DA_study). The corresponding README should contain all the necessary information to understand the code structure. However, for reproducibility purposes, the present study is embedded with Poetry. A minimal tutorial to get started with the code is provided below.

## Getting started

### Cloning the repository and corresponding submodules

Run the following command to clone the repository and all the relevant submodules needed for this study (xmask with lhc-errors, xtrack with crab cavities luminosity computation):

```bash
git clone --recurse-submodules https://github.com/ColasDroin/DA_IPAC_2024.git
```

If not already done, install Poetry following the tutorial [here](https://python-poetry.org/docs/). Note that Poetry must have access to Python 3.10 or above for the rest of the tutorial to work. More importantly, the executable of Python must be accessible from a cluster node (e.g. located on AFS when submitting jobs to HTCondor) for a submission to work.

You can check the executable of Python that Poetry is using by running the following command:

```bash
poetry env info --executable
```

If needed, you can change the exectutable with e.g:

```bash
poetry env use /path/to/python
```

For easier submission later, also impose the virtual environment to be created in the repository folder by running the following command:

```bash
poetry config virtualenvs.in-project true
```

Finally, install the dependencies by running the following command:

```bash
poetry install
```

At this point, ensure that a `.venv` folder has been created in the repository folder. If not, follow the fix described in the next section.

Finally, you can make xsuite faster by precompiling the kernel, with:

```bash
poetry run xsuite-prebuild
```

To run any subsequent Python command, either activate the virtual environment (activate a shell within Poetry) with:

```bash
poetry shell
```

or run the command with Poetry:

```bash
poetry run python my_script.py
```

### Fix the virtual environment path

If, for some reason, your virtual environment is not in a `.venv`folder inside of your repository, you will have to
update the submitting script to point to the correct virtual environment. To that end, run the following command:

```bash
poetry env list --full-path
```

Identify the virtual environment that is being used and copy the corresponding path. Now, open the file `source_python.sh` and replace the line `source $SCRIPT_DIR/.venv/bin/activate`with the path to the virtual environment you just found (e.g. `source /path/to/your/virtual/environment/bin/activate`).
