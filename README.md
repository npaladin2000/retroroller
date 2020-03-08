# Retro Roller

This provides Retroarch 32bit and 64bit on CrashOverride's one and only Stock
image. Among other tweaks, a custom kernel is integrated that supports sleep.

The idea with this package is to update via a rolling package release instead
of reflashing. NOTE: Any major OS upgrades like CrashOverride's upcoming
Ubuntu image will need a reflash.

This image represents what I run on my odroid go advance and as such, I will
most likely not be making this into a kitchen sink of apps like other images.

## How To Update Retro Roller

NOTE: If you get prompted to update config files, choose which action you want
to take. You should probably backup your config files first.

	sudo dpkg -i retroroller_<ver>.deb # substitute for <ver>
	sudo apt-get -f install

Reboot.

## Key Bindings

### Global

There is a global listener.

F3 + left/right	-> volume
F3 + up/down 	-> brightness
power 		-> suspend
F3 + power 	-> shutdown
F3 + L 		-> perfmax
F3 + R		-> perfnorm

### Retroarch

F3		-> Hotkey
L + R		-> Menu

Look and customize settings->input to your liking.


## Features

- 64bit and 32bit app support (thanks to CrashOverride's stock image)
- Retroarch 64bit and 32bit pre-installed
- Blue heartbeat led is turned off
- perfmax also sets the mem governor to high
- Custom kernel with sleep enabled
- Retroarch apps setup to download cores from Safarikniv's site
- NOirBRight's es_system.cfg uses retroarch where available
- Shutdown/reboot works
- Headphone/speaker auto-switching works


## Credits

- CrashOverride for all of his hard work on creating the Stock image, libgo2,
  initial retroarch port and countless other things for this platform.
- Lakka team for their Retroarch patches, testing and integration.
- NOirBRight for his extensive testing and feedback.
- Safarikniv for hosting both 32bit and 64bit Retroarch cores for download.
