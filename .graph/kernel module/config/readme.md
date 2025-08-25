# Thread:
https://github.com/waydroid/waydroid/issues/712

```
# Works! PSI is key.
CONFIG_PSI=y
CONFIG_PSI_DEFAULT_DISABLED=y

# /dev/binder
CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=y
CONFIG_ANDROID_BINDER_DEVICES=""
CONFIG_ASHMEM=y
```

You can use the can.config workflow config example to get waydroid.config applied.
