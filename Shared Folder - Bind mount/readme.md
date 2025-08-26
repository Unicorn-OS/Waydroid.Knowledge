https://docs.waydro.id/faq/setting-up-a-shared-folder

# Mount a Waydroid Directory on Host
```
# Customize
dir=Documents
host_path=~/.uni/waydroid

# Run
instance_root=~/.local/share/waydroid/data/media/0/
mkdir -p $host_path/$dir
sudo mount --bind $host_path/$dir $instance_root/$dir
```
