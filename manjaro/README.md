## MANJARO XFCE
![1000250177](https://github.com/user-attachments/assets/a792198d-7804-41de-ae53-b10025ff483b)

---
### NOTE
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
Install xfce4 and other required packages:
```
pacman -S xfce4 xfce4-goodies pamac manjaro-release manjaro-system manjaro-settings-manager manjaro-hotfixes manjaro-arm-tools manjaro-base-skel manjaro-icons matcha-gtk-theme papirus-maia-icon-theme noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra xcursor-breeze xcursor-maia qt5ct kvantum kvantum-theme-matchama sudo git
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
```
git clone https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings.git
```
```
cp -r manjaro-xfce-settings/skel/. /home/<username>/
```
---
## INSTALL DEBUG METHOD (TERMUX-X11)
Execute ```exit``` until you appear in Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/manjaro/manjaro-xfce.sh
```
```
nano manjaro-xfce.sh
```
Scroll to line 10 and change ```<username>``` to the user you created. Save and exit with key ```CTRL``` - ```X``` - ```Y``` - ```ENTER```.
```
chmod +x manjaro-xfce.sh
```
To run the desktop:
```
./manjaro-xfce.sh
```
---
## TO DO AFTER INSTALLATION (CHROMIUM)
After Manjaro is launched:
<br>
If you use chromium do this step:
![1000250180](https://github.com/user-attachments/assets/c7ac6202-3e9e-43cf-a8c9-d5d9d6786ec7)
Add the ```--no-sandbox``` flag:
![1000250181](https://github.com/user-attachments/assets/38ad3a82-ac3e-4824-8f13-66c460d0239d)
All done!

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
