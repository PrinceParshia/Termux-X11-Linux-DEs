## MANJARO XFCE
![Screenshot_2024-11-21_08-03-21](https://github.com/user-attachments/assets/762326c2-71d5-4dd9-9a12-a056a02fcd66)

---
#### NOTE
* ~ $ is Termux Shell.
* [root@localhost ~]# is Manjaro Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Manjaro:
```
proot-distro install manjaro
proot-distro login manjaro
```
In Manjaro Shell update its packages:
```
pacman -Syu
```
Fix a problem:
```
nano /etc/pacman.conf
```
Scroll and change SigLevel value to Never:
```
SigLevel = Never
```
To save and exit press CTRL - X - Y - ENTER.

Install xfce4 and additional manjaro packages:
```
pacman -S xfce4 xfce4-goodies pamac tumbler engrampa ristretto parole sudo git matcha-gtk-theme papirus-maia-icon-theme noto-fonts manjaro-release manjaro-system manjaro-settings-manager manjaro-hotfixes manjaro-arm-tools manjaro-arm-wallpapers manjaro-base-skel manjaro-icons xcursor-breeze xcursor-maia
```
Install a browser to access internet:
```
pacman -S chromium
```
```
pacman -S firefox
```
Make an user to access the desktop:
```
useradd -m <username>
```
Set a password for your user:
```
passwd <username>
```
Give sudo access to your user:
```
nano /etc/sudoers
```
Scroll and paste it under (root ALL=(ALL:ALL) ALL):
```
<username> ALL=(ALL:ALL) ALL
```
CTRL - X - Y - ENTER.

Login to your user:
```
su - <username>
```
Install Manjaro default xfce settings:
```
git clone https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings.git
```
```
mv manjaro-xfce-settings/skel/.config /home/<username>/
```
```
mv manjaro-xfce-settings/skel/.profile /home/<username>/
```
```
mv manjaro-xfce-settings/skel/.xinitrc /home/<username>/
```
```
cd /usr/share/icons/
```
```
curl -L -o /usr/share/icons/whiskermenu-manjaro.svg "https://gitlab.manjaro.org/artwork/icon-themes/manjaro-icons/-/raw/master/maia/maia.svg?ref_type=heads"
```
<details>
<summary>TERMUX X11 DEBUG</summary>
  
Execute ```exit``` until you appear in Termux Shell.
Download the Manjaro Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Linux-XFCE-Android/refs/heads/main/manjaro/manjaro-xfce.sh
```
```
nano manjaro-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your username you created in Manjaro Shell. CTRL - X - Y - ENTER.
```
chmod +x manjaro-xfce.sh
```
Start Manjaro desktop with: 
```
./manjaro-xfce.sh
```

</details>
<details>
<summary>VNC DEBUG</summary>

Make sure your in Manjaro Shell and execute this command:
```
sudo pacman -S tigervnc
```
Set a password for the vnc connection:
```
vncpasswd
```
Start vncserver:
```
mkdir -p ~/.vnc
echo "#!/bin/bash" > ~/.vnc/xstartup
echo "startxfce4 &" >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
```
To run vnc In Termux Shell:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/manjaro/manjaro-xfce-vnc.sh
```
Change ```<username>``` line 6 to your created user:
```
nano manjaro-xfce-vnc.sh
```
CTRL - X - Y - ENTER
```
chmod +x manjaro-xfce-vnc.sh
```
```
./manjaro-xfce-vnc.sh
```
Open RealVNC Viewer and connect to the screen with the ip 
```
localhost:1
```
</details>

After Manjaro is launched:
If your using Chromium do this step:
![1000249491](https://github.com/user-attachments/assets/51a29c74-29e7-404b-bd8a-e9d9d43cad46)
![1000249492](https://github.com/user-attachments/assets/0f200659-76af-4913-81bd-74dda27de669)
Your all done!

---
## TOOLTIP
* Start X11 connection using (In Termux Shell):
  ```
  ./manjaro-xfce.sh
  ```
  And vnc connection using (In Termux Shell):
  ```
  ./manjaro-xfce-vnc.sh
  ```
* Close X11 connection using the exit button on the notifications bar. And vnc connection using (in manjaro shell):
  ```
  vncserver -kill :1 
  ```
* Open Manjaro Shell in Termux using:
  ```
  proot-distro login manjaro
  ```
  And with a specific user:
  ```
  proot-distro login manjaro --user <username>
  ```
