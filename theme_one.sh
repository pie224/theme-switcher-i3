#!/bin/bash



change_theme() {
	change=$(echo -e "Tokyo_Night\nCatppuccin\nGruvbox\nNord\nRose_Pine\nCustom\nSalir" | rofi -dmenu -i -p "Change_Theme" -theme ~/.config/rofi/temas/custom.rasi)

	case "$change" in
		"Tokyo_Night")
            bash ~/cambiar_tema/tokyonight.sh
			;;


		"Catppuccin")
            bash ~/cambiar_tema/catppuccin.sh
			;;


		"Gruvbox")
            bash ~/cambiar_tema/gruvbox.sh
			;;

		"Nord")
            bash ~/cambiar_tema/nord.sh
			;;

		"Rose_Pine")
            bash ~/cambiar_tema/rosepine.sh
			;;
        "Custom")
            bash ~/cambiar_tema/custom.sh
            ;;
		"Salir")
			exit 0
            		;;
        	*)
            		exit 1
            		;;
    esac

}

change_theme
