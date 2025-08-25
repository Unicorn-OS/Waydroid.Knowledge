install(){
    # Ubuntu, Debian
    sudo apt install android-sdk-platform-tools -y
}

# May have to run Twice.
adb devices

adb shell