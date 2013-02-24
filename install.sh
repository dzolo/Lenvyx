# Adding a few repos
sudo add-apt-repository ppa:ubuntu-tweak-testing/ppa

# Updating sources
sudo apt-get update

# Installing a few packages
sudo apt-get install gxmessage ubuntu-tweak

# Install switchable graphics init script
sudo cp switchable-graphics/switchable-graphics.conf /etc/init/

# TODO: check presence before appending
sudo bash -c 'echo "blacklist radeon" >> /etc/modprobe.d/blacklist.conf'

# Install synaptics config
cp /usr/share/X11/xorg.conf.d/50-synaptics.conf /tmp/50-synaptics.conf.back
sudo mkdir -p /etc/X11/xorg.conf.d
sudo cp ./envy-touchpad/50-synaptics.conf /etc/X11/xorg.conf.d/