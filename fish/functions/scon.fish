function scon
    set screens (xrandr | grep -o ".* connected" | awk '{ print $1}')
    xrandr --auto
    xrandr --output $screens[2] --above $screens[1]
end

