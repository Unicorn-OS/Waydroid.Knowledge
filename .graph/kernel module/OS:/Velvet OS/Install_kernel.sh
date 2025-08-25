cd /tmp
mkdir mnt
mount /dev/mmcblk0p4 /tmp/mnt
mount /dev/mmcblk0p3 /tmp/mnt/boot
cd /tmp/mnt
cp /compile/result/stable-mt/5.19.1-stb-mt8.tar.gz .
tar xzf 5.19.1-stb-mt8.tar.gz
dd if=boot/vmlinux.kpart-5.19.1-stb-mt8 of=/dev/mmcblk0p1
umount /tmp/mnt/boot /tmp/mnt
echo "kernel successfully written..."
break


# Remove Old
rm -r config-5.19.1-stb-mt8+ dtb-5.19.1-stb-mt8+ Image-5.19.1-stb-mt8+ System.map-5.19.1-stb-mt8+ vmlinux.kpart-5.19.1-stb-mt8+