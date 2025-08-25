waydroid_kernel_config(){
    # https://wiki.archlinux.org/title/Waydroid#Building_a_kernel

    waydroid_cfg=/compile/doc/waydroid-binder.cfg
    echo '''CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=n
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"
# https://forum.manjaro.org/t/do-we-need-psi-to-run-waydroid/100935
CONFIG_PSI=y
CONFIG_PSI_DEFAULT_DISABLED=y''' \
    > $waydroid_cfg

    check(){
        cat $waydroid_cfg
        cat .config | grep -i 'android\|psi\|ashmem'
    }
}


#waydroid_kernel_config