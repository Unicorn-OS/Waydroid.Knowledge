# Armbian has this set, needs to be Unset:
`cat config-6.1.29-rockchip64 | grep -i "RT_GROUP_SCHED"`

# Bug:
https://github.com/waydroid/waydroid/issues/420

>commented on Jun 19, 2022
>Hey, I think you might want to take a look at #346 and see if it helps.
>There, the problem was the kernel had CONFIG_RT_GROUP_SCHED set (and it needs to be unset).

# Solution:
https://github.com/waydroid/waydroid/issues/346

>Just need CONFIG_RT_GROUP_SCHED unset.
>https://pagure.io/waydroid/waydroid/c/691c86ed2c380ca2ae76d63dd88a6258715831e3?branch=main that removes the dependency on iptables which is deprecated
