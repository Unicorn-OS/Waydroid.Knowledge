#https://ericroc.how/mounting-devices-in-lxd.html
c=trywayland

fs=/dev/binderfs

# mount
lxc stop $c

## character device
n=anbox-binder ; path=$fs/$n ; lxc config device add $c $n unix-char source=$path path=$path

n=anbox-hwbinder ; path=$fs/$n ; lxc config device add $c $n unix-char source=$path path=$path

n=anbox-vndbinder ; path=$fs/$n ; lxc config device add $c $n unix-char source=$path path=$path

n=binder-control ; path=$fs/$n ; lxc config device add $c $n unix-char source=$path path=$path

## dir
lxc config device add $c feature disk source=/dev/binderfs/features/ path=/dev/binderfs/features/

# check
lxc config device show $c

# start
lxc start $c

# enter
lxc exec $c -- bash
