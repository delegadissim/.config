#!/bin/bash

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix
cd /home/xd/.config

archivos=(wallpapers/*)

# Obtener la longitud de la lista de archivos
num_archivos=${#archivos[@]}

for (( i=1; i<$num_archivos; i++ )); do
		git add "${archivos[$i]}"
		git commit -m "Afegit l'arxiu ${archivos[$i]}"
		git push 
done
