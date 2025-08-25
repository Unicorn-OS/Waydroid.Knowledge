# Works on Ubuntu x86!
export WAYLAND_DISPLAY=wayland-0

# deactivate default browser first, or you won't be able to login!
source Chrome.sh

#waydroid app remove org.lineageos.jelly ## Doesn't work
source ADB.sh
adb shell pm disable-user --user 0 org.lineageos.jelly

# OSRS
waydroid app install Old\ School\ RuneScape_213.3_Apkpure.apk

waydroid app launch com.jagex.oldscape.android