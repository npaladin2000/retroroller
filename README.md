# Retro Roller

This provides Retroarch 32bit and 64bit on CrashOverride's one and only Stock
image. Among other tweaks, a custom kernel is integrated that provides sleep.

The idea with this package is to update via a rolling package release instead
of reflashing. NOTE: Any major OS upgrades like CrashOverride's upcoming
Ubuntu image.

This image represents what I run on my odroid go advance and as such, I will
most likely not be making this into a kitchen sink of apps like other images.

## Prerequisites

1. Be able to ssh to your odroid. If you can't then know how to chroot into the
   image in qemu or some virtual machine to install the package offline.


## Install


### Flash CrashOverride's Stock

Flash image [ubuntu-18.04.3-4.4-es-odroid-goA-20200206.img.xz](https://wiki.odroid.com/odroid_go_advance/make_sd_card)

Copy the `retroller_<ver>.deb` you're installing to /home/odroid


### Fix /boot (do this only once!)

ssh/chroot in, then:

	echo "/dev/mmcblk0p1 /boot vfat defaults 0 2" | sudo tee -a /etc/fstab
	sudo rm -rf /boot/*
	sudo mount /boot


### Install Retro Roller package

Substitute `<ver>` with package version.

	sudo apt-get update
	sudo dpkg -i retroroller_<ver>.deb

Ignore depedency errors (fixed in the next step).

	sudo apt-get -f install

Reboot.


## Update Retro Roller

	sudo dpkg -i retroroller_<ver>.deb # substitute for <ver>


	sudo apt-get -f install

Reboot.


## Credits

- CrashOverride for all of his hard work on creating the Stock image, libgo2,
  initial retroarch port and countless other things for this platform.
- Lakka team for their Retroarch patches, testing and integration.
- NoirBright for his extensive testing and feedback.
- Safarikniv for hosting both 32bit and 64bit Retroarch cores.
