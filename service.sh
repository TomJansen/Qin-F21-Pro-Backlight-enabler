#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will work
# if Magisk changes it's mount point in the future

MODDIR=${0%/*}

LCD_BRIGHTNESS_FILE=/sys/class/leds/lcd-backlight/brightness

KBHACK_EXEC=${MODDIR}/keyboard_led_brightness.sh

inotifyd ${KBHACK_EXEC} ${LCD_BRIGHTNESS_FILE}:/w

exit 0