#!/bin/bash
source /afs/cern.ch/work/c/cdroin/private/DA_IPAC_2024/studies/scripts/../../source_python.sh
cd /afs/cern.ch/work/c/cdroin/private/DA_IPAC_2024/studies/scans/tune_scan_end_of_collapse_flat/base_collider/xtrack_0000
python 2_configure_and_track.py > output_python.txt 2> error_python.txt
rm -rf final_* modules optics_repository optics_toolkit tools tracking_tools temp mad_collider.log __pycache__ twiss* errors fc* optics_orbit_at*
