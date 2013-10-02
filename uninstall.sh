#!/bin/bash
################################################################################
# Script for uninstaling of Lenvyx.
################################################################################

# removing scripts
echo "removing all scripts"
sudo rm /etc/init/switchable-graphics.conf \
		/etc/rc0.d/K10vgaswitcheroo_sr \
		/etc/rc6.d/K10vgaswitcheroo_sr \
		/etc/init.d/vgaswitcheroo_sr \
		/etc/pm/sleep.d/80_vgaswitcheroo

# remove changes from grub setup
echo "removing grub config"
cp /etc/default/grub /tmp/grub.back
cat /etc/default/grub | sed 's/splash acpi_backlight=vendor"/splash"/' > /tmp/new-grub
sudo mv /tmp/new-grub /etc/default/grub
sudo update-grub

# uninstall synaptics config
echo "uninstall synaptics config"
sudo rm /etc/X11/xorg.conf.d/50-synaptics.conf

