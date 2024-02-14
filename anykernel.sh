### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=Lavender Kernel by Black Lu (LucasBlacLu)
do.devicecheck=1
do.modules=1
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=o1q
device.name2=t2q
device.name3=p3q
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
'; } # end properties

### AnyKernel install
# begin attributes
attributes() {
	set_perm_recursive 0 0 755 644 $ramdisk/*
	set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin
} # end attributes

## boot shell variables
block=/dev/block/platform/omap/omap_hsmmc.0/by-name/boot
is_slot_device=0
ramdisk_compression=auto
patch_vbmeta_flag=auto

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh && attributes

dump_boot
write_boot
flash_generic dtbo
