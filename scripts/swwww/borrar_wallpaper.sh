#!/bin/bash


photo=$(swww query | awk '{print $NF}' | head -1)

echo $photo
~/.config/scripts/swwww/change.sh ~/.config/wallpapers
rm $photo

notify-send "Alerta" "S'ha esborrat el fons d'escriptori $photo"
