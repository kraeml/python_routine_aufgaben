#!/bin/bash

for i in $(ls *.ipynb); do
    jupyter2pdf $(basename $i .ipynb);
done
