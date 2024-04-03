# Status of beam-beam studies for the HL-LHC

This repository contains the code and results for the article "Status of beam-beam studies for the high-luminosity LHC" by C. Droin & al., published in the proceedings of the 2024 International Particle Accelerator Conference (IPAC'24).

## Code structure

All the code is based on a refactoring of the [Xsuite example_DA_study boilerplate](https://github.com/xsuite/example_DA_study). The corresponding readme of the repository should contain all the necessary information to understand the code structure. However, for reproducibility purposes, the present study is embedded with Poetry. A minimal tutorial to get started with the code is provided below.

## Getting started

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
