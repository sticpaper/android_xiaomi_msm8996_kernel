# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

# AnyKernel setup
properties() { '
kernel.string=xiaomi kernel for msm8996
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=capricorn
supported.versions=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

# AnyKernel methods
. tools/ak3-core.sh;

# AnyKernel install
dump_boot;
# begin ramdisk changes

write_boot;

# end install
