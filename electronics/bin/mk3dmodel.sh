#!/bin/bash

# generate the 3D model of the board

INFILE=CWSensorKey.kicad_pcb
STEPOUTFILE=../mechanics/CWSensorKey-brd-3D.step
STLOUTFILE=../mechanics/CWSensorKey-brd-3D.stl

# generate 3D model in STEP format
echo "Generating 3D model (STEP):"

kicad-cli pcb export step --subst-models --drill-origin --include-tracks --include-pads --include-zones --include-silkscreen --include-soldermask --min-distance='0.001mm' -f -o $STEPOUTFILE $INFILE


# generate 3D model in STL format
echo "Generating 3D model (STL):"

kicad-cli pcb export stl --subst-models --cut-vias-in-body --include-tracks --include-pads --include-silkscreen --include-soldermask --fuse-shapes -f -o $STLOUTFILE $INFILE




echo -e "done\n\n"
