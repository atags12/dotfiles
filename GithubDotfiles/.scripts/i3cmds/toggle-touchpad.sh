#requires xorg-xinput
if [ $(cat /tmp/touchpad_enable) == 1 ]; then echo 0 > /tmp/touchpad_enable; else echo 1 > /tmp/touchpad_enable; fi; xinput set-prop "Synaptics TM3075-002" "Device Enabled" $(cat /tmp/touchpad_enable)
