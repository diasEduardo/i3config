intern=LVDS-1
extern=HDMI-1
init=$1;
in_use=$(xrandr |grep " connected [a-z ]*[0-9]*x" | awk '{print $1}')

#echo "$in_use"
if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
	if [ "$init" = "0" ] || [ "$init" = "1" ]; then
		if [ "$in_use" != "$extern"  ] || [ "$init" = "1" ]; then
			xrandr --output "$intern" --off --output "$extern" --auto
			
		else 
			xrandr --output "$extern" --off --output "$intern" --auto
		fi
	else
		echo "$init"
	fi
fi