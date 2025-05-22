xrandr --newmode "1440x1080"  338.50  1440 1560 1720 2000  1080 1083 1087 1177 -hsync +vsync
xrandr --addmode HDMI-2 1440x1080
xrandr --output HDMI-2 --mode 1440x1080 

setxkbmap us -v colemak && xset r 66
xinput --set-prop 10 325 0
xinput --set-prop 10 328 0 1 0
pactl set-default-sink alsa_output.pci-0000_0c_00.6.analog-stereo
pactl set-default-source alsa_input.pci-0000_0c_00.6.analog-stereo
dmenu_path > /dev/null

while xsetroot -name " `timedatectl | awk 'NR == 3 {
    print $4, $3, $5
}'` "
do
    sleep1
done &

cd ~
picom &
feh --bg-max --randomize ~/.wallpapers/* &
exec dwm
