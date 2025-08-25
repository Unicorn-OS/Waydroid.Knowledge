/scripts/extend-rootfs.sh 
apt install -y liblz4-tool vboot-kernel-utils build-essential flex bison gettext libiberty-dev libpci-dev libelf-dev libssl-dev libslang2-dev libperl-dev python-all-dev liblzma-dev libzstd-dev libcap-dev libnuma-dev libbabeltrace-dev systemtap-sdt-dev libdw-dev apt-utils binutils-dev git wget libunwind-dev
apt update
apt install -y liblz4-tool vboot-kernel-utils build-essential flex bison gettext libiberty-dev libpci-dev libelf-dev libssl-dev libslang2-dev libperl-dev python-all-dev liblzma-dev libzstd-dev libcap-dev libnuma-dev libbabeltrace-dev systemtap-sdt-dev libdw-dev apt-utils binutils-dev git wget libunwind-dev
cd /compile
mkdir doc
cd doc
wget https://github.com/hexdump0815/linux-mainline-mediatek-mt81xx-kernel/archive/refs/heads/master.zip
unzip master.zip
mv linux-mainline-mediatek-mt81xx-kernel-master stable-mt
rm master.zip
ls
wget https://github.com/BenjaminWegener/kernel-config-options/archive/refs/heads/master.zip
unzip master.zip
mv kernel-config-options-main kernel-config-options
rm master.zip
ls
rm -r kernel-config-options/
wget https://github.com/hexdump0815/kernel-config-options/archive/refs/heads/master.zip
unzip master.zip
mv kernel-config-options-main kernel-config-options
rm master.zip
ls
uname -a
cd ..
mkdir source
cd source
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.19.1.tar.xz
tar -xvf linux-5.19.1.tar.xz
mv linux-5.19.1 linux-stable-mt8
cd linux-stable-mt8
ls
mkdir /compile/result
mkdir /compile/result/stable-mt
btrfs sub snap -r /compile /root/sources.clean
cd /compile/source/linux-stable-mt8
ls /root/
cd /root/
ls
cd snap/
ls
cd
cd /compile/source/linux-stable-mt8
for i in /compile/doc/stable-mt/misc.cbm/patches/5.18.0/mt8183*.patch; do   echo === $i;   patch -p1 < $i; done
cd /compile/doc/stable-mt/misc.cbm/patches/
ls
cd v5.19/
ls
cd
cd /compile/source/linux-stable-mt8
for i in /compile/doc/stable-mt/misc.cbm/patches/v5.19/mt8183*.patch; do   echo === $i;   patch -p1 < $i; done
rm -f /compile/source/linux-stable-mt8/arch/arm64/boot/dts/mediatek/mt8183.dtsi
cd
sudo btrfs sub delete /compile
btrfs sub snap /root/sources.clean /compile
cd /compile/source/linux-stable-mt8
# patches for mt8183/kukui
for i in /compile/doc/stable-mt/misc.cbm/patches/v5.19/mt8183*.patch; do   echo === $i;   patch -p1 < $i; done
btrfs sub snap -r /compile /root/patched
export ARCH=arm64
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg /compile/doc/kernel-config-options/additional-options-testing.cfg
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg
cd /compile/source/linux-stable-mt8
( cd /compile/doc/kernel-config-options ; git rev-parse --verify HEAD ) > /compile/doc/stable-mt/misc.cbm/options/kernel-config-options.version
make olddefconfig
btrfs sub delete /compile
btrfs sub snap /root/patched /compile
export ARCH=arm64
cd /compile/source/linux-stable-mt8
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg
btrfs sub delete /compile
cd
cd /compile
btrfs sub snap /root/patched /compile
cd /compile/source/linux-stable-mt8 # for sanity!
xport ARCH=arm64
export ARCH=arm64
cat .config
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg
cat .config
cat .config | grep -i android
cat /compile/doc/kernel-config-options/docker-options.cfg
Waydroid_config=/compile/doc/waydroid-binder.cfg
echo '''CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=m
CONFIG_ANDROID_BINDERFS=n
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"
''' > $Waydroid_config
cat $Waydroid_config
echo '''CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=m
CONFIG_ANDROID_BINDERFS=n
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"''' > $Waydroid_config
waydroid_config(){     waydroid_cfg=/compile/doc/waydroid-binder.cfg;     echo '''CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=m
CONFIG_ANDROID_BINDERFS=n
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"'''     > $waydroid_cfg     test(){         cat $waydroid_cfg;         cat .config | grep -i android;     }; }
waydroid_config
cat .config | grep -i android
cat $waydroid_cfg
export ARCH=arm64
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg $waydroid_cfg
cat .config | grep -i android
btrfs sub snap -r /compile /root/config.with-android
cd_kernel_source
cd_kernel_source(){     cd /compile/source/linux-stable-mt8 # for sanity!
}
cd_kernel_source
make olddefconfig
cat .config | grep -i android
btrfs sub delete /compile
btrfs sub snap /compile /root/patched /compile
btrfs sub snap /compile /root/patched
btrfs sub snap /root/patched /compile
waydroid_config(){     waydroid_cfg=/compile/doc/waydroid-binder.cfg;     echo '''CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=n
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"'''     > $waydroid_cfg     test(){         cat $waydroid_cfg;         cat .config | grep -i android;     }; }
waydroid_config
export ARCH=arm64
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg $waydroid_cfg
cd /compile/source/linux-stable-mt8 # for sanity!
export ARCH=arm64
cripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg $waydroid_cfg
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg $waydroid_cfg
cat .config | grep -i android
btrfs sub delete /root/config.with-android
btrfs sub snap -r /compile /root/config.with-android
make olddefconfig
cat .config | grep -i android
./scripts/config --set-str CONFIG_LOCALVERSION "-stb-mt8"
btrfs sub delete /root/config.with-android
ls /root/
btrfs sub snap -r /compile /root/config.done
screen -S build
screen -r build
cd /compile/source/linux-stable-mt8
export ARCH=arm64
make -j 8 Image dtbs modules
btrfs sub snap -r /compile /root/build-step1.complete
echo $ARCH
cd tools/perf
make
cd ../power/cpupower
make
cd ../../..
export kver=`make kernelrelease`
echo ${kver}
make modules_install
mkdir -p /lib/modules/${kver}/tools
cp -v tools/perf/perf /lib/modules/${kver}/tools
cp -v tools/power/cpupower/cpupower /lib/modules/${kver}/tools
cp -v tools/power/cpupower/libcpupower.so.0.0.1 /lib/modules/${kver}/tools/libcpupower.so.0
# make headers_install INSTALL_HDR_PATH=/usr
cp -v .config /boot/config-${kver}
cp -v arch/arm64/boot/Image /boot/Image-${kver}
mkdir -p /boot/dtb-${kver}
cp -v arch/arm64/boot/dts/mediatek/mt8183*.dtb /boot/dtb-${kver}
cp -v System.map /boot/System.map-${kver}
cp arch/arm64/boot/Image Image
lz4 -f Image Image.lz4
dd if=/dev/zero of=bootloader.bin bs=512 count=1
cp /compile/doc/stable-mt/misc.cbm/misc/cmdline cmdline
mkimage -D "-I dts -O dtb -p 2048" -f auto -A arm64 -O linux -T kernel -C lz4 -a 0 -d Image.lz4 -b arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dtb  kernel.itb kernel.itb
vbutil_kernel --pack vmlinux.kpart --keyblock /usr/share/vboot/devkeys/kernel.keyblock --signprivate /usr/share/vboot/devkeys/kernel_data_key.vbprivk --version 1 --config cmdline --bootloader bootloader.bin --vmlinuz kernel.itb --arch arm
cp -v vmlinux.kpart /boot/vmlinux.kpart-${kver}
rm -f Image Image.lz4 cmdline bootloader.bin kernel.itb vmlinux.kpart
cd /boot
update-initramfs -c -k ${kver}
tar cvzf /compile/source/linux-stable-mt8/${kver}.tar.gz /boot/Image-${kver} /boot/System.map-${kver} /boot/config-${kver} /boot/dtb-${kver} /boot/initrd.img-${kver} /boot/vmlinux.kpart-${kver} /lib/modules/${kver}
cp -v /compile/doc/stable-mt/config.mt8 /compile/doc/stable-mt/config.mt8.old
cp -v /compile/source/linux-stable-mt8/.config /compile/doc/stable-mt/config.mt8
cp -v /compile/source/linux-stable-mt8/.config /compile/doc/stable-mt/config.mt8-${kver}
cp -v /compile/source/linux-stable-mt8/*.tar.gz /compile/result/stable-mt
lsblk
ls -alh /compile/result/stable-mt/5.19.1-stb-mt8.tar.gz
echo "Do you wish to install the kernel? YOUR INSTALLATION HAS TO BE ON /dev/sdals -alh /compile/result/stable-mt/5.19.1-stb-mt8.tar.gz! THIS CAN NOT BE UNDONE AND MAY DAMAGE YOUR DEVICEls -alh /compile/result/stable-mt/5.19.1-stb-mt8.tar.gz!"
select yn in "Yes" "No"; do     case $yn in         Yes )              cd /tmp;             mkdir mnt;             mount /dev/mmcblk0p4 /tmp/mnt;             mount /dev/mmcblk0p3 /tmp/mnt/boot;             cd /tmp/mnt;             cp /compile/result/stable-mt/5.19.1-stb-mt8.tar.gz .;             tar xzf 5.19.1-stb-mt8.tar.gz;             dd if=boot/vmlinux.kpart-5.19.1-stb-mt8 of=/dev/mmcblk0p1;             umount /tmp/mnt/boot /tmp/mnt;             echo "kernel successfully written...";             break;;         No ) exit;;     esac; done
cd /tmp
mkdir mnt
mount /dev/mmcblk0p4 /tmp/mnt
mount /dev/mmcblk0p3 /tmp/mnt/boot
cd /tmp/mnt
ls
cp /compile/result/stable-mt/5.19.1-stb-mt8.tar.gz .
ls
tar xzf 5.19.1-stb-mt8.tar.gz 
dd if=boot/vmlinux.kpart-5.19.1-stb-mt8 of=/dev/mmcblk0p1
cd
umount /tmp/mnt/boot /tmp/mnt
cat /boot/.config | grep -i android
ls
cd /boot/
ls
cat /boot/config-5.19.1-stb-mt8 | grep -i android
cat /boot/config-5.19.1-stb-mt8+ | grep -i android
cd ..
cp -r boot /root/old.boot
uname -a
cd /boot/
ls
rm config-5.19.1-stb-mt8+ dtb-5.19.1-stb-mt8+ Image-5.19.1-stb-mt8+ System.map-5.19.1-stb-mt8+ vmlinux.kpart-5.19.1-stb-mt8+
rm -r config-5.19.1-stb-mt8+ dtb-5.19.1-stb-mt8+ Image-5.19.1-stb-mt8+ System.map-5.19.1-stb-mt8+ vmlinux.kpart-5.19.1-stb-mt8+
cd /compile/
ls
cd source/linux-stable-mt8/
ls
ls -alh
cp -r boot /root/boot.new
cp -r /boot /root/boot.new
cd /root/
mv old.boot .boot.old
btrfs sub create boot
sudo mv boot.new/* boot
rmdir boot.new/
btrfs sub snap -r boot boot.Waydroid
mv boot boot.bac
mount /dev/mmcblk0p4 /tmp/mnt
cd /tmp/
mkdir mnt
mount /dev/mmcblk0p4 /tmp/mnt
cd mnt/
ls
cd ..
umount /tmp/mnt/boot /tmp/mnt
mount -o rw,relatime,ssd,space_cache,subvol=/ /dev/mmcblk0p4 /tmp/mnt
cd /tmp/mnt/
ls
cd ..
btrfs subvolume list /
btrfs subvolume snapshot / /snap/root.clean
cd /snap/root.clean/
ls
cat /boot/config-5.19.1-stb-mt8+ | grep -i android
cat /boot/config-5.19.1-stb-mt8 | grep -i android
zcat /proc/config.gz| grep ‘PSI’zcat /proc/config.gz| grep ‘PSI’zcat /proc/config.gz| grep ‘PSI’zcat /proc/config.gz| grep ‘PSI’zcat /proc/config.gz| grep ‘PSI’zcat /proc/config.gz| grep ‘PSI’zcat /proc/config.gz| grep ‘PSI’
zcat /proc/config.gz| grep ‘PSI’
zcat /proc/config.gz
cat /boot/config-5.19.1-stb-mt8 | grep -i android
cat /boot/config-5.19.1-stb-mt8 | grep -i PSI
cd /root/
ls
btrfs sub delete boot.bac
btrfs sub delete boot.Waydroid/
ls
btrfs sub delete config.done/
btrfs sub delete /compile
btrfs sub snap /root/patched /compile
cd /compile/source/linux-stable-mt8
waydroid_config(){     waydroid_cfg=/compile/doc/waydroid-binder.cfg;     echo '''CONFIG_ANDROID=y
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=n
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"
# https://forum.manjaro.org/t/do-we-need-psi-to-run-waydroid/100935
CONFIG_PSI=y'''     > $waydroid_cfg     test(){         cat $waydroid_cfg;         cat .config | grep -i android;     }; }
waydroid_config
cat $waydroid_cfg
export ARCH=arm64
scripts/kconfig/merge_config.sh -m arch/arm64/configs/defconfig /compile/doc/kernel-config-options/chromebooks-aarch64.cfg /compile/doc/kernel-config-options/mediatek.cfg /compile/doc/kernel-config-options/docker-options.cfg /compile/doc/kernel-config-options/options-to-remove-generic.cfg /compile/doc/stable-mt/misc.cbm/options/options-to-remove-special.cfg /compile/doc/kernel-config-options/additional-options-generic.cfg /compile/doc/kernel-config-options/additional-options-aarch64.cfg /compile/doc/stable-mt/misc.cbm/options/additional-options-special.cfg $waydroid_cfg
make olddefconfig
./scripts/config --set-str CONFIG_LOCALVERSION "-stb-mt8"
cat .config | grep -i android
cat .config | grep -i IPC
nano .config
cat .config | grep -i psi
btrfs sub snap -r /compile /root/config.done
screen -S build
cd /root/
ls
btrfs sub delete build-step1.complete/
cd /compile/source/linux-stable-mt8
export ARCH=arm64
make -j 8 Image dtbs modules
echo ${kver}
cd tools/perf
make
cd ../power/cpupower
make
cd ../../..
export kver=`make kernelrelease`
echo ${kver}
make modules_install
mkdir -p /lib/modules/${kver}/tools
cp -v tools/perf/perf /lib/modules/${kver}/tools
cp -v tools/power/cpupower/cpupower /lib/modules/${kver}/tools
cp -v tools/power/cpupower/libcpupower.so.0.0.1 /lib/modules/${kver}/tools/libcpupower.so.0
# make headers_install INSTALL_HDR_PATH=/usr
cp -v .config /boot/config-${kver}
cp -v arch/arm64/boot/Image /boot/Image-${kver}
mkdir -p /boot/dtb-${kver}
cp -v arch/arm64/boot/dts/mediatek/mt8183*.dtb /boot/dtb-${kver}
cp -v System.map /boot/System.map-${kver}
cp arch/arm64/boot/Image Image
lz4 -f Image Image.lz4
dd if=/dev/zero of=bootloader.bin bs=512 count=1
cp /compile/doc/stable-mt/misc.cbm/misc/cmdline cmdline
mkimage -D "-I dts -O dtb -p 2048" -f auto -A arm64 -O linux -T kernel -C lz4 -a 0 -d Image.lz4 -b arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dtb  kernel.itb kernel.itb
vbutil_kernel --pack vmlinux.kpart --keyblock /usr/share/vboot/devkeys/kernel.keyblock --signprivate /usr/share/vboot/devkeys/kernel_data_key.vbprivk --version 1 --config cmdline --bootloader bootloader.bin --vmlinuz kernel.itb --arch arm
cp -v vmlinux.kpart /boot/vmlinux.kpart-${kver}
rm -f Image Image.lz4 cmdline bootloader.bin kernel.itb vmlinux.kpart
# end chromebook special
cd /boot
update-initramfs -c -k ${kver}
#mkimage -A arm64 -O linux -T ramdisk -a 0x0 -e 0x0 -n initrd.img-${kver} -d initrd.img-${kver} uInitrd-${kver}
tar cvzf /compile/source/linux-stable-mt8/${kver}.tar.gz /boot/Image-${kver} /boot/System.map-${kver} /boot/config-${kver} /boot/dtb-${kver} /boot/initrd.img-${kver} /boot/vmlinux.kpart-${kver} /lib/modules/${kver}
cp -v /compile/doc/stable-mt/config.mt8 /compile/doc/stable-mt/config.mt8.old
cp -v /compile/source/linux-stable-mt8/.config /compile/doc/stable-mt/config.mt8
cp -v /compile/source/linux-stable-mt8/.config /compile/doc/stable-mt/config.mt8-${kver}
cp -v /compile/source/linux-stable-mt8/*.tar.gz /compile/result/stable-mt
cd /tmp;
screen -r build
cd /root/
ls
cat /proc/cmdline > /boot/cmdline
nano /boot/cmdline 
cp -v vmlinux.kpart-${kver} vmlinux.kpart-${kver}.old
cd /boot/
ls
kver="5.19.1-stb-mt8"
cp -v vmlinux.kpart-${kver} vmlinux.kpart-${kver}.old
cp Image-${kver} Image
lz4 -f Image Image.lz4
cp initrd.img-${kver} initrd.img.xz
dd if=/dev/zero of=bootloader.bin bs=512 count=1
ls dtb-${kver}/*.dtb | xargs printf " -b %s" | xargs mkimage -D "-I dts -O dtb -p 2048" -f auto -A arm64 -O linux -T kernel -C lz4 -a 0 -d Image.lz4 kernel.itb
vbutil_kernel --pack vmlinux.kpart --keyblock /usr/share/vboot/devkeys/kernel.keyblock --signprivate /usr/share/vboot/devkeys/kernel_data_key.vbprivk --version 1 --config cmdline --bootloader bootloader.bin --vmlinuz kernel.itb --arch arm
cp -v vmlinux.kpart /boot/vmlinux.kpart-${kver}
rm -f Image Image.lz4 initrd.img.xz cmdline bootloader.bin kernel.itb vmlinux.kpart
dd if=/boot/vmlinux.kpart-${kver} of=/dev/mmcblk0p2 bs=4096
cgpt add -i 2 -S 0 -T 1 -P 15 /dev/mmcblk0
dd if=/boot/vmlinux.kpart-${kver} of=/dev/mmcblk0p1 bs=4096
cat /proc/cmdline 
glmark2
