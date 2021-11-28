clear
echo "SysBox"
echo "Run x86 apps on ARM!"
sleep 5
echo "Setup Process Initiating..."
sleep 3
echo "Updating Sources"
sleep 2.5
sudo apt-get update
echo "Installing Dependencies..."
sleep 2.5
sudo apt-get install qemu-user-static schroot debootstrap
echo "Setting up..."
sleep 2.5
debootstrap --arch i386 --foreign stretch /srv/chroot/debian-x86 http://deb.debian.org/debian
cp /usr/bin/qemu-i386-static /srv/chroot/debian-x86/usr/bin
chroot "/srv/chroot/debian-x86" /debootstrap/debootstrap --second-stage
echo "Creating the config file..."
sleep 2.5
sudo cp installfiles/debianx86.conf /etc/schroot/chroot.d/debianx86.conf
echo "Setup finished! Run sudo schroot -c debian-x86"
