#!/bin/bash

# generate 2D export

# this is the python file to be executed by freecadcmd
PYFILE=bin/export2Dview.py

# get filename into a variable
FILE=$1

# test if file exists and is readable
if ! test -r $FILE ; then
    echo "File '$1' not found"
    exit
fi

# execute the python file
freecadcmd $PYFILE $FILE

