check:
`cat /boot/config* | grep -i "cgroup"`

# Differences between X86 and Armbian:
**set on X86 Ubuntu but not Armbian:**
```
CONFIG_CGROUP_MISC=y
CONFIG_BLK_CGROUP_FC_APPID=y
CONFIG_BLK_CGROUP_IOCOST=y
CONFIG_BLK_CGROUP_IOPRIO=y
```

# What are the new Lineage 18.1 Kernel config options?
> Not a bug, a question: Since Lineage 18.1 images, new Kernel config options are needed for Waydroid to work.
> The Lineage 18.1 images work with the Void Linux distro-kernel.

- Thread: https://github.com/waydroid/waydroid/issues/738
  - https://github.com/waydroid/waydroid/issues/752#issuecomment-1422219626

## lxc-checkconfig
>Fixed!
>
>Definitely make sure to run `lxc-checkconfig`, look and see if it says enabled on (almost) everything (I don't use systemd, so there is: Cgroup v1 systemd controller: missing.
>
>Cgroup v1 mount points are important.
>
>I have set the following:
>
>/sys/fs/cgroup/cpuset
>/sys/fs/cgroup/cpu
>/sys/fs/cgroup/cpuacct
>/sys/fs/cgroup/blkio
>/sys/fs/cgroup/memory
>/sys/fs/cgroup/devices
>/sys/fs/cgroup/freezer
>/sys/fs/cgroup/perf_event
>/sys/fs/cgroup/pids
>/sys/fs/cgroup/rdma
>/sys/fs/cgroup/misc
>/sys/fs/cgroup/elogind
>to enable further CGROUP controllers, go to CONFIG_CGROUPS in your kernel config and add controllers.
>I also enabled CONFIG_CFS_BANDWIDTH and CONFIG_RT_GROUP_SCHED.  
—https://github.com/waydroid/waydroid/issues/738#issuecomment-1416735290

# CONFIG_CGROUP_BPF
https://github.com/waydroid/waydroid/issues/758

>Your kernel might be lacking `CONFIG_CGROUP_BPF` or some related configs

check:
`cat /boot/config* | grep -i "cgroup"`
