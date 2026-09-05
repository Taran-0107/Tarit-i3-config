#!bin/bash

select=$(bash ~/.config/power/options.sh  | rofi -dmenu)

case $select in

	restart)
		systemctl reboot
		echo hello
		;;
	"lock")
		i3lock
		;;

	"log out")
		i3-msg exit
		;;

	"power off")
	
		systemctl poweroff
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
