#!/bin/bash

reemplazar() {
    local archivo=$1
    local linea=$2
    local contenido=$3

    bash /home/pedro/Coding/Bash/reemplazar_linea.sh "$archivo" "$linea" "$contenido"
}

#cambiar tema de polybar
reemplazar /home/pedro/.config/i3/config 224 "exec --no-startup-id bash $HOME/.config/polybar/themes/personalized_theme/restart.sh"

#cambiar wallpaper
reemplazar /home/pedro/.config/i3/config 227 "exec --no-startup-id feh --bg-scale /home/pedro/Wallpaper/wallpaper-change-theme/jelly-astronaut.jpg"

#cambiar tema de rofi
reemplazar /home/pedro/.config/i3/config 25 'bindsym $mod+d exec --no-startup-id rofi -show drun -theme ~/.config/rofi/temas/custom.rasi'

#cambiar color de los bordes
reemplazar /home/pedro/.config/i3/config 260 "set \$border-focus        #ADC2C5"


#cambiar tema de nvim
reemplazar /home/pedro/.config/nvim/init.vim 37 "colorscheme tokyonight-moon"
reemplazar /home/pedro/.config/nvim/init.vim 36 '" set background=dark'

#cambiar tema de kitty
reemplazar /home/pedro/.config/kitty/kitty.conf 3 "include tokyo-night-kitty.conf"


