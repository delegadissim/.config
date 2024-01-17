#!/bin/bash

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix

if [[ $# -lt 1 ]] || [[ ! -d $1   ]]; then
	echo "Usage:
	$0 <dir containing images>"
	exit 1
fi

# Edit below to control the images transition
export SWWW_TRANSITION_FPS=144
export SWWW_TRANSITION=any
export SWWW_TRANSITION_STEP=90

# Obtener la lista de archivos en el directorio
archivos=($1/*)

# Obtener la longitud de la lista de archivos
num_archivos=${#archivos[@]}

# Generar un índice aleatorio
indice_aleatorio=$((RANDOM % num_archivos))

# Seleccionar un archivo al azar
archivo_seleccionado="${archivos[$indice_aleatorio]}"

swww img $archivo_seleccionado
