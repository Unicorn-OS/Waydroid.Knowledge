launch_weston_on_desktop(){
export WAYLAND_DISPLAY=wayland-0
weston --width=1024 --height=768 &
# This creates a WAYLAND_DISPLAY=wayland-1 server
}

waydroid_inside_weston(){
export WAYLAND_DISPLAY=wayland-1
waydroid show-full-ui
# Or
waydroid launch org.jagex.Runescape
}

launch_weston_on_desktop
waydroid_inside_weston
