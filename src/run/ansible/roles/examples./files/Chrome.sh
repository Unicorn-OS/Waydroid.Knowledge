# Works on Ubuntu x86!
source=https://www.apkmirror.com/apk/google-inc/chrome/chrome-114-0-5735-52-release/

x86="com.android.chrome_114.0.5735.52-573505226_minAPI24_maxAPI28(x86)(nodpi)_apkmirror.com.apk"

export WAYLAND_DISPLAY=wayland-0

waydroid app install $x86

waydroid app launch com.android.chrome