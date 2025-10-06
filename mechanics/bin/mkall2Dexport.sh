#!/bin/bash

# generate 2D exports for all my files

# name of the command for exports
EXPORTCMD=bin/mk2Dexport.sh

FILES="CW-Pad-Holder.FCStd CW-Pad-Middle-Dah.FCStd CW-Pad-Middle-Dit.FCStd CW-Pad-Side.FCStd"

echo "Exporting all files ..."

for f in $FILES ; do
    $EXPORTCMD $f
done

echo "DONE"
