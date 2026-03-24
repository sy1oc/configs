if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
    ~/.wallpapers/randomize
    export XDG_SESSION_TYPE=wayland
    export GBM_BACKEND=nvidia-drm
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export WLR_NO_HARDWARE_CURSORS=1
    # somehow this line did not work
    #modetest -w 99:scaling\ mode:1     #exec Hyprland
    start-hyprland
fi
