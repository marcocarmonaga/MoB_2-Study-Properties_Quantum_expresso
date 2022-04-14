#!/bin/bash
cd ../data/processed/eos

for file in $(ls)
    do
        if file='eos_in.txt'
            then
                ev.x
        else
            false
        fi
    done