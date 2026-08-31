#!bin/bash

select=$(bash ~/.config/power/options.sh  | rofi -dmenu)

case $select in

	restart)
		sudo reboot
		;;
	
	"log out")
		i3-msg exit
		;;

	"power off")
	
		shutdown now
		;;
	"sleep")
		systemctl suspend
		;;
	"hibernate")
		systemctl hibernate
		;;

	*)
		exit
		;;

esac
