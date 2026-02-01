#!/bin/bash

# generate jpg of the board (as view from 3D-Model)

INFILE=CWSensorKey.kicad_pcb
OUTFILE_TOP=CWSensorKey-brd.jpg
OUTFILE_BOT=CWSensorKey-brd-bot.jpg
QUALITY=basic
#IMG_WIDTH=1600
#IMG_HEIGHT=900
IMG_WIDTH=1200
IMG_HEIGHT=675

# generate image of board file
echo "Generating images of board:"
echo "   top side:"

kicad-cli pcb render --side top --width $IMG_WIDTH --height $IMG_HEIGHT --quality $QUALITY -o $OUTFILE_TOP $INFILE

echo -e "\n   bot side:"

kicad-cli pcb render --side bottom --width $IMG_WIDTH --height $IMG_HEIGHT --quality $QUALITY -o $OUTFILE_BOT $INFILE


echo -e "\ndone\n\n"
