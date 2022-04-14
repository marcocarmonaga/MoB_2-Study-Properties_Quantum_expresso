#!/bin/bash
cd ../data/interim

for directory in $(ls)
    do
        cd $directory
            for sub_directory in $(ls)
                do
                    cd $sub_directory
                    mpirun -np 8 pw.x -in mob2_pw.in > mob2_pw.out
                    cd ..
                    echo "Terminado"
                done
        cd ..
    done