#!/bin/bash

reemplazar() {
    local archivo=$1
    local linea=$2
    local contenido=$3

    bash /home/pedro/Coding/Bash/reemplazar_linea.sh "$archivo" "$linea" "$contenido"
}

#cambiar tema de polybar
reemplazar /home/pedro/.config/i3/config 224 "exec --no-startup-id bash $HOME/.config/polybar/themes/rose_pine_theme/launch.sh"

#cambiar el wallpaper
reemplazar /home/pedro/.config/i3/config 227 "exec --no-startup-id feh --bg-fill /home/pedro/Wallpaper/wallpaper-change-theme/rose_1.png"

#cambiar el tema de rofi
reemplazar /home/pedro/.config/i3/config 25 'bindsym $mod+d exec --no-startup-id rofi -show drun -theme ~/.config/rofi/temas/rosepine.rasi'

#cambiar color de los bordes
reemplazar /home/pedro/.config/i3/config 260 "set \$border-focus        #ea9a97"

#cambiar el tema de nvim
reemplazar /home/pedro/.config/nvim/init.vim 37 "colorscheme rose-pine-main"
reemplazar /home/pedro/.config/nvim/init.vim 36 '" set background=dark'

#cambiar tema de kitty
reemplazar /home/pedro/.config/kitty/kitty.conf 3 "include rose-pine-moon.conf"


