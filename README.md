# SysBox
Run x86 linux apps on a Raspberry Pi / ARM Device!

## Features
- Simple install and launch

## How SysBox works
SysBox was created to mimic Exagear Desktop, which is now discontinued. SysBox uses chroot which can create linux environments running on different linux architectures.

For example, if you run an ARM32 based operating system, you can create an x86 environment with chroot.

Currently, SysBox only supports Debian 9 (Stretch) as the guest/vm image.

## Installation
First, you would need to get the repo, so you can install the software, `git clone https://github.com/MegaTKC/sysbox.git` Next, you will need to go into the directory so you can run other commands. `cd ~/sysbox` Then, you need to make the install file executable. `chmod +x install-sysbox.sh` Lastly, you will need to run the file, with sudo, since the software will need to create files in certain directories. `sudo ./install-sysbox.sh` This process will take a while depending on your sd-card speed. An ssd or hard drive hasn't been tested, so I believe that the install speeds will be faster.

## Known Issues & Bugs
- SysBox doesn't save the application to the user's desktop and they have to run the terminal command to launch the application.
- Applications / Software might be "sluggish" when running sysbox.

## Software and Hardware tested on
- Raspberry Pi 3 Model B running Raspberry Pi OS (32-bit)

## Known working apps with SysBox
- Sublime Text <a href=https://download.sublimetext.com/sublime-text_build-3126_i386.deb>Click here</a> to download. 

## To-do list
- Add multiple operating systems support
- Support x86_64 apps
- Increase application speeds on SysBox