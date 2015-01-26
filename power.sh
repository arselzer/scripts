#!/bin/sh

## Power Save Mode

echo 1500       | sudo tee /proc/sys/vm/dirty_writeback_centisecs
echo min_power  | sudo tee /sys/class/scsi_host/host0/link_power_management_policy
echo 1          | sudo tee /sys/module/snd_hda_intel/parameters/power_save
echo auto       | sudo tee /sys/bus/usb/devices/1-5/power/control
echo auto       | sudo tee /sys/bus/usb/devices/1-3.3/power/control
echo 0          | sudo tee /proc/sys/kernel/nmi_watchdog
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1c.5/power/control'
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:00.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:03.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:02.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:14.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1c.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1c.2/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1c.4/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1c.1/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1b.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1f.0/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:1f.3/power/control' 
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:02:00.0/power/control'
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:03:00.0/power/control'
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:04:00.0/power/control'
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:00:16.0/power/control'
echo 'auto'     | sudo tee '/sys/bus/usb/devices/2-3/power/control'
echo 'auto'     | sudo tee '/sys/bus/pci/devices/0000:07:00.0/power/control'

