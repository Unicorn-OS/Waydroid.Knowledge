#https://ericroc.how/mounting-devices-in-lxd.html
c=trywayland

fs=/dev/binderfs

# mount
lxc stop $c

## dir
lxc config device add $c binderfs disk source=/dev/binderfs path=/dev/binderfs

# check
lxc config device show $c

# start
lxc start $c

# enter
lxc exec $c -- bash
