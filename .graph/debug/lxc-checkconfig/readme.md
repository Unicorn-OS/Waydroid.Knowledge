
# Thread: What are the new Lineage 18.1 Kernel config options that weren't needed with 17.1? #738
https://github.com/waydroid/waydroid/issues/738#issuecomment-1416735290
>Fixed!
>
>**Definitely make sure to run** `lxc-checkconfig`**, look and see if it says enabled on (almost) everything (I don't use systemd, so there is: Cgroup v1 systemd controller: missing.**
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
