sch: https://www.google.com/search?q=wayland+weston+nested, https://www.google.com/search?q=launch+inside+nested+weston

# Wiki:
- https://wiki.archlinux.org/title/Weston
- https://wiki.gentoo.org/wiki/Weston

# Doc:
- https://wayland.pages.freedesktop.org/weston/toc/running-weston.html

# Guide:
- 

# discuss:
- https://www.reddit.com/r/linuxquestions/comments/qs9c9s/how_to_run_waydroid_under_xorg/


# Waydroid.launch()
[Open inside weston runned in X11 session #49](https://github.com/waydroid/waydroid/issues/49)

works:
```
# Host
sudo waydroid container stop
sudo waydroid container start
WAYLAND_DISPLAY=wayland-0 weston -Swayland-1

# inside weston:
waydroid show-full-ui
```
