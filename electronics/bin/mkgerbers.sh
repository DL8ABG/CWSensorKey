#!/bin/bash

INFILE=CWSensorKey.kicad_pcb
OUTDIR=./gerbers/

LAYERS=F.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts



# generate gerber files from board file
echo "Generate gerbers files:"
kicad-cli pcb export gerbers $INFILE -o $OUTDIR -l $LAYERS


echo -e "\n\n"

# geneate drill information from board file
echo "Generate drill files:"
kicad-cli pcb export drill $INFILE --generate-map -o $OUTDIR 
