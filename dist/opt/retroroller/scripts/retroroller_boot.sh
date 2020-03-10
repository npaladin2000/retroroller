#!/usr/bin/env bash

chown root:adm /sys/devices/platform/ff400000.gpu/devfreq/ff400000.gpu/governor
chmod g+w /sys/devices/platform/ff400000.gpu/devfreq/ff400000.gpu/governor

chown root:adm /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
chmod g+w /sys/devices/system/cpu/cpufreq/policy0/scaling_governor

chown root:adm /sys/devices/platform/dmc/devfreq/dmc/governor
chmod g+w /sys/devices/platform/dmc/devfreq/dmc/governor

echo -n 0 > /sys/devices/platform/gpio_leds/leds/blue\:heartbeat/brightness

#sed -i 's/#HandlePowerKey=poweroff/HandlePowerKey=ignore/' /etc/systemd/logind.conf
