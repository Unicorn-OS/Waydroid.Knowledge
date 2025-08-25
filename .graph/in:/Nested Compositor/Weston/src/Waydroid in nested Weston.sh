#from: https://github.com/waydroid/waydroid/issues/49

# Host
sudo waydroid container stop
sudo waydroid container start
WAYLAND_DISPLAY=wayland-0 weston -Swayland-1

# inside weston:
waydroid show-full-ui