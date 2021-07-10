#!/bin/sh
# NEOGEO.pak/launch.sh

EMU_EXE=gngeo
EMU_DIR=$(dirname "$0")
ROM_DIR=${EMU_DIR/.pak/}
ROM_DIR=${ROM_DIR/Emus/Roms}
EMU_NAME=${ROM_DIR/\/mnt\/SDCARD\/Roms\//}
ROM=${1}
BIOSPATH=/mnt/SDCARD/Emus/NEOGEO.pak/bios/

HOME="$ROM_DIR"
cd "$EMU_DIR"
SDL_NOMOUSE=1

needs-swap
#BIOS in the Roms folder
#"$EMU_DIR/$EMU_EXE" "-i" "$ROM_DIR" "$ROM" &> "/mnt/SDCARD/.minui/logs/$EMU_NAME.txt"

#BIOS in the .pak/bios folder
"$EMU_DIR/$EMU_EXE" "-B" "$BIOSPATH" "-i" "$ROM_DIR" "$ROM" &> "/mnt/SDCARD/.minui/logs/$EMU_NAME.txt"

