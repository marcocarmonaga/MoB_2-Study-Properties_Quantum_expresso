#!/bin/bash
cd ../data/processed/scf

for directory in $(ls)
    do
        cd $directory
        mpirun -np 8 dos.x -in mob2_dos.in > mob2_dos.out
        mpirun -np 8 pw.x -in mob2_bands.in > mob2_bands.out
        mpirun -np 8 bands.x -in mob2_bands_run.in > mob2_bands_run.out
        echo "Terminado ${directory}"
        cd ..
    done

shutdown now