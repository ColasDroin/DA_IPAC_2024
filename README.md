# Status of beam-beam studies for the HL-LHC

This repository contains the code and results for the article *Status of beam-beam studies for the high-luminosity LHC* by C. Droin & al., published in the proceedings of the 2024 International Particle Accelerator Conference (IPAC'24).

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

Finally, you can make the xsuite faster by precompiling the kernel, with:

```bash
poetry run xsuite-prebuild
```

### Fix the virtual environment path

If, for some reason, your virtual environment is not in a `.venv`folder inside of your repository, you will have to
update the submitting script to point to the correct virtual environment. To that end, run the following command:

```bash
poetry env list --full-path
```

Identify the virtual environment that is being used and copy the corresponding path. Now, open the file `source_python.sh` and replace the line `source $SCRIPT_DIR/.venv/bin/activate`with the path to the virtual environment you just found (e.g. `source /path/to/your/virtual/environment/bin/activate`).

## Running the code

Please refer to the [Xsuite example_DA_study boilerplate](https://github.com/xsuite/example_DA_study)
if you need more information. The basic workflow is the following:

1. Create a new study by copying and modifying the `studies/scripts/1_create_study.py` file. Running the file will create the corresponding study in the `studies/scans` folder.
2. Run the study by submitting the corresponding job to the cluster (or running it locally) with the `studies/scripts/2_run_jobs.py` script, which you must prealably modify to point to the correct study (just update the `study_name`variable).
3. Postprocess the output with the `studies/scripts/3_postprocess.py` script, which you must also modify to point to the correct study.
4. Results are now in the scan folder of the study, as a parquet file. Some example of analyses are provided in the `studies/analysis` folder.

## License

This repository is licensed under the MIT license. Please refer to the [LICENSE](LICENSE) file for more information.

## Acknowledgements

This work was supported by the HL-LHC project.


## Citation

If you use this code for your work, please cite the corresponding article:

```
@inproceedings{droin2024status,
  title={Status of beam-beam studies for the high-luminosity LHC},
  author={Droin, Colas and others},
  booktitle={Proceedings of the 2024 International Particle Accelerator Conference (IPAC'24)},
  year={2024}
}
```