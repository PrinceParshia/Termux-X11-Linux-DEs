# NOT FINISHED

## VOID XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* bash-5.2# is Void Shell.
---
## MAIN STEPS
Open Termux, install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro wget pulseaudio
```
Install Manjaro:
```
proot-distro install void
proot-distro login void
```
Update Void packages:
```
xbps-install -u xbps
```
```
xbps-install -Su
```
Download xfce and other required packages:
```
xbps-install -S xfce4 sudo
```
Install a browser to access internet:
```
xbps-install -S chromium
```
```
xbps-install -S firefox
```
Create an user to access the desktop:
```
useradd -m <username>
```
Set a password for your user:
```
passwd <username>
```
Give sudo access to the user:
```
nano /etc/sudoers
```
Scroll and paste it under ```root ALL=(ALL:ALL) ALL```:
```
<username> ALL=(ALL:ALL) ALL
```
Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
