#from: https://wiki.gentoo.org/wiki/Weston#Usage
# Nest a weston instance "wayland-1" in another Weston "wayland-0":

$WAYLAND_DISPLAY=wayland-0 weston -Swayland-1