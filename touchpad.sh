if [ "${1:0:1}" = "o" ]; then
	sudo modprobe psmouse
else
	sudo modprobe -r psmouse
fi

