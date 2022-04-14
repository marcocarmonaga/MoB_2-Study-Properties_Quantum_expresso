#!/bin/bash
cd ../data/interim/177_91

for directory in $(ls)
    do
        cd $directory
        mpirun -np 8 pw.x -in mob2_pw.in > mob2_pw.out
        echo "Terminado"
        cd ..
    done