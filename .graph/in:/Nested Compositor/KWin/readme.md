# Doc:
https://community.kde.org/KWin/Wayland#Starting_a_nested_KWin

# Guide:
https://www.reddit.com/r/EndeavourOS/comments/11kxlyu/is_there_an_idiotproof_guide_for_running_waydroid/

source
```kwin "waydroid show-full-ui"```

# install:
https://blog.martin-graesslin.com/blog/2016/07/why-does-kwin_wayland-not-start/

```sudo apt install kwin-wayland-backend-x11 kwin-wayland-backend-drm```

# Waydroid.launch()
https://github.com/waydroid/waydroid/issues/49#issuecomment-987021281

>instead of using weston, use `kwin_wayland "waydroid show-full-ui"` This launches a wayland session under X11. :)