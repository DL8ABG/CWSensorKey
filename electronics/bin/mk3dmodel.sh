#!/bin/bash

# generate the 3D model of the board

INFILE=CWSensorKey.kicad_pcb
OUTFILE=../mechanics/CWSensorKey-brd-3D.step


# generate gerber files from board file
echo "Generating 3D model:"

kicad-cli pcb export step --subst-models --drill-origin --include-tracks --include-pads --include-zones --include-silkscreen --include-soldermask --min-distance='0.001mm' -f -o $OUTFILE $INFILE


echo -e "done\n\n"
