#!/bin/bash

# generate jpg of the board (as view from 3D-Model)

INFILE=CWSensorKey.kicad_pcb
OUTFILE=../mechanics/CWSensorKey-brd.jpg
QUALITY=basic
#IMG_WIDTH=1600
#IMG_HEIGHT=900
IMG_WIDTH=1200
IMG_HEIGHT=675

# generate gerber files from board file
echo "Generating image of board:"

kicad-cli pcb render --width $IMG_WIDTH --height $IMG_HEIGHT --quality $QUALITY -o $OUTFILE $INFILE


echo -e "done\n\n"
