#https://ericroc.how/mounting-devices-in-lxd.html
c=trywayland

lxc stop $c

# Remove
remove="lxc config device remove $c"

$remove anbox-binder
$remove anbox-hwbinder
$remove anbox-vndbinder
$remove binder-control
$remove feature

# test
lxc config device show $c

# restart
lxc start $c
