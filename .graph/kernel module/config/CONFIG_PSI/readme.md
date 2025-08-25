# Solution:
https://github.com/waydroid/waydroid/issues/136#issuecomment-949694932

confirmation: https://forum.manjaro.org/t/do-we-need-psi-to-run-waydroid/100935

https://github.com/remote-android/redroid-doc/issues/293#issuecomment-1387459518
>Setting CONFIG_PSI=y fixed the same issue for me, albeit with Waydroid. That's most definitely the issue here too.

# test:
`cat /boot/config-* | grep -i CONFIG_PSI`

must be:
```
CONFIG_PSI=y
# CONFIG_PSI_DEFAULT_DISABLED is not set
```