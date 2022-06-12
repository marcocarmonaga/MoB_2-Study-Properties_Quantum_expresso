#!/bin/bash
source /home/marcocarmonaga/miniconda3/etc/profile.d/conda.sh
source setvars.sh
cd ../data/processed/calculo-de-interfase-y-fonones

for directory in $(ls)
    do
        cd $directory
        mpirun -np 8 pw.x -in mob2_interfase.in > mob2_interfase.out
        mpirun -np 8 ph.x -in mob2_fonon_01.in > mob2_fonon_01.out
        mpirun -np 8 ph.x -in mob2_fonon_02.in > mob2_fonon_02.out
        mpirun -np 8 ph.x -in mob2_fonon_03.in > mob2_fonon_03.out
        mpirun -np 8 ph.x -in mob2_fonon_04.in > mob2_fonon_04.out
        mpirun -np 8 ph.x -in mob2_fonon_05.in > mob2_fonon_05.out
        mpirun -np 8 ph.x -in mob2_fonon_06.in > mob2_fonon_06.out
        echo Terminado $directory
        cd ..
    done

shutdown now
