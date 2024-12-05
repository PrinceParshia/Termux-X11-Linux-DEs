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
<br>
Execute ```exit``` until you appear in Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/void/void-xfce.sh
```
```
nano void-xfce.sh
```
Scroll to line 10 and change ```<username>``` to the user you created. Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
```
chmod +x void-xfce.sh
```
To run the desktop:
```
./void-xfce.sh
```
If you use chromium do this step after Manjaro is launched:

Add the ```--no-sandbox``` flag:

---
## TIPS
* Start Void desktop using (in Termux Shell):
```
./Void-xfce.sh
```
Exit Termux fully from the notification bar to stop the desktop.
* To login to manjaro shell in termux:
```
proot-distro login void
```
With a specific user:
```
proot-distro login void --user <username>
``` 
