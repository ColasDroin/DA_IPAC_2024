# Status of beam-beam studies for the high-luminosity LHC

This repository contains the code and results for the article "STATUS OF BEAM-BEAM STUDIES FOR THE HIGH-LUMINOSITY LHC", published in the proceedings of the 2024 International Particle Accelerator Conference (IPAC'24).


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
