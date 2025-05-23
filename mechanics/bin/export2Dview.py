#!/usr/bin/python3

# export the 2D view from a FreeCAD file
#
# generated with help from chatgpt
#
#
# Frank Hänsel, DL8ABG
# May 2025

import sys
import os
import FreeCAD
import importSVG

    
# === Variables ===

# end of filename of 2D export
exp2d_end = ".2Dview.svg"

# name of the 2D shape object
shape2d_name = "Shape2DView" 

# === Parse command-line arguments ===
if len(sys.argv) != 3:
    print("Error: No FreeCAD file specified.")
    print("Usage: FreeCADCmd script.py <file.FCStd>")
    sys.exit(1)

fcstd_path = sys.argv[2]

# === Check if the FreeCAD file exists ===
if not os.path.exists(fcstd_path):
    print(f"Error: File not found: {fcstd_path}")
    sys.exit(2)

# === Derive output SVG path ===
base_name = os.path.basename(fcstd_path)
name_without_ext = os.path.splitext(base_name)[0]
svg_output = os.path.join(os.path.dirname(fcstd_path), name_without_ext + exp2d_end)

svg_output = "2D/" + svg_output

print("Processing data file " + fcstd_path)
# print(f"svg_output = " + svg_output)

try:
    # === load the document ===
    doc = FreeCAD.openDocument(fcstd_path)
    obj = doc.getObject(shape2d_name)

    if obj is None:
        print(f"Shape2DView-Objekt '" + shape2d_name + "' not found.")
        sys.exit(3)

    # === SVG exportieren ===
    importSVG.export([obj], svg_output)
    print("SVG exported: " + svg_output)

# something unexpected happened
except Exception as e:
    print(f"Unexpected error: {e}")
    sys.exit(4)
