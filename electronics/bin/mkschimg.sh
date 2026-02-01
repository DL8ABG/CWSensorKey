#!/bin/bash

# generate jpg of the board (as view from 3D-Model)

INFILE=CWSensorKey.kicad_sch
OUTFILE=CWSensorKey.svg
OUTSVG=CWSensorKey-sch.svg

# generate image of schematic file
echo "Generating image of schematic:"

# generates "OUTFILE"
kicad-cli sch export svg $INFILE

# rename
mv $OUTFILE $OUTSVG


echo -e "done\n\n"
