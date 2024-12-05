# NOT FINISHED

## DEBIAN XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* root@localhost:~# is Debian Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Debain:
```
proot-distro install debian
proot-distro login debian
```
In Debian Shell update its packages:
```
apt update && apt upgrade
```
Install xfce4 and other required packages:
```
apt install xfce4 xfce4-goodies sudo adduser
```
Download a browser to access internet:
```
apt install chromium
```
```
apt install firefox
```
Create an user to access the desktop:
```
adduser <username>
```
Give sudo access to your user:
```
nano /etc/sudoers
```
Scroll and paste it under ```root ALL=(ALL:ALL) ALL```:
```
<username> ALL=(ALL:ALL) ALL
```
Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
<br>
Execute ```exit``` until you reach in Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/debian/debain-xfce.sh
```
```
nano debian-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your user you created in debian shell. Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
```
chmod +x debian-xfce.sh
```
To run the desktop:
```
./debian-xfce.sh
```

---
## TIPS
* Start Debian desktop using (in Termux Shell):
```
./debian-xfce.sh
```
Exit Termux fully from the notification bar to stop the desktop.
* To login to debian shell in termux:
```
proot-distro login debian
```
With a specific user:
```
proot-distro login debian --user <username>
```
