## MANJARO CINNAMON

---
#### NOTE
* ~ $ is Termux Shell.
* [root@localhost ~]# is Manjaro Shell.
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
proot-distro install manjaro
proot-distro login manjaro
```
Update Manjaro packages:
```
pacman -Syu
```
```
nano /etc/pacman.conf
```
Scroll download and change ```SigLevel``` value to ```Never```:
```
SigLevel = Never
```
Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
<br>
Install cinnamon and other required packages:
```
pacman -S cinnamon pamac manjaro-release manjaro-system manjaro-settings-manager manjaro-hotfixes manjaro-arm-tools manjaro-base-skel manjaro-icons matcha-gtk-theme papirus-maia-icon-theme noto-fonts xcursor-breeze xcursor-maia qt5ct sudo git
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
```
git clone https://gitlab.manjaro.org/profiles-and-settings/desktop-settings.git
```
```
cp -r desktop-settings/skel/. /home/<username>/
```
```
ln -s /usr/share/icons/manjaro/maia/maia.svg /usr/share/icons/whiskermenu-manjaro.svg
```
Execute ```exit``` until you appear in Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/manjaro/manjaro-cinnamon.sh
```
```
nano manjaro-cinnamon.sh
```
Scroll to line 10 and change ```<username>``` to the user you created. Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
```
chmod +x manjaro-cinnamon.sh
```
To run the desktop:
```
./manjaro-cinnamon.sh
```
If you use chromium do this step after Manjaro is launched:

Add the ```--no-sandbox``` flag:


---
## TIPS
* Start Manjaro desktop using (in Termux Shell):
```
./manjaro-xfce.sh
```
Exit Termux fully from the notification bar to stop the desktop.
* To login to manjaro shell in termux:
```
proot-distro login manjaro
```
With a specific user:
```
proot-distro login manjaro --user <username>
```
