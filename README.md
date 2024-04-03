# Status of beam-beam studies for the HL-LHC

This repository contains the code and results for the article "Status of beam-beam studies for the high-luminosity LHC" by C. Droin & al., published in the proceedings of the 2024 International Particle Accelerator Conference (IPAC'24).

## Code structure

All the code is based on a refactoring of the [Xsuite example_DA_study boilerplate](https://github.com/xsuite/example_DA_study). The corresponding readme of the repository should contain all the necessary information to understand the code structure. However, for reproducibility purposes, the present study is embedded with Poetry. A minimal tutorial to get started with the code is provided below.

## Getting started

### Cloning the repository and corresponding submodules

Run the following command to clone the repository and all the relevant submodules needed for this study (xmask with lhc-errors, xtrack with crab cavities luminosity computation):

```bash
git clone --recurse-submodules https://github.com/ColasDroin/DA_IPAC_2024.git
```

If not already done, install Poetry following the tutorial [here](https://python-poetry.org/docs/). Then, for easier submission later, impose the virtual environment to be created in the repository folder by running the following command:

```bash
poetry config virtualenvs.in-project true
```

Finally, install the dependencies by running the following command:

```bash




Accelerate things by running the following command:




```bash
poetry run xsuite-prebuild
```

# Handling submodules

TODO


# Other
Need to install locally with poetry
Replace python distribution in activate_python with your own distribution that you can get with e.g. if you use poetry poetry env list --full-path
Important: the executable of python must be in AFS for simulation on HTC.
Change the exectutable with e.g poetry env use ../miniforge/bin/python3.10
