# Test Build

simplest(){
    ./compile.sh KERNEL_GIT=shallow
}

desktop(){
    ./compile.sh build BOARD=rk3318-box BRANCH=edge BUILD_DESKTOP=yes BUILD_MINIMAL=no DESKTOP_APPGROUPS_SELECTED=3dsupport DESKTOP_ENVIRONMENT=gnome DESKTOP_ENVIRONMENT_CONFIG_NAME=config_base KERNEL_CONFIGURE=no KERNEL_GIT=shallow RELEASE=bookwor
}

current_branch(){
	./compile.sh build BOARD=rk3318-box BRANCH=current BUILD_DESKTOP=yes BUILD_MINIMAL=no DESKTOP_APPGROUPS_SELECTED=3dsupport DESKTOP_ENVIRONMENT=gnome DESKTOP_ENVIRONMENT_CONFIG_NAME=config_base KERNEL_CONFIGURE=no KERNEL_GIT=shallow RELEASE=bookworm
}
