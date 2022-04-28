#!/bin/bash
cd ../data/processed/scf

for directory in $(ls)
    do
        cd $directory
        mpirun -np 8 pw.x -in mob2_scf.in > mob2_scf.out
        mpirun -np 8 pw.x -in mob2_nscf.in > mob2_nscf.out
        echo "Terminado ${directory}"
        cd ..
    done