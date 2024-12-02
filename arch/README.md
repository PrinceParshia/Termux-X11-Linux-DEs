## ARCH XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* [root@localhost ~]# is Arch Shell.
---
## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install Arch:
```
proot-distro install archlinux
proot-distro login archlinux
```
In Arch Shell update its packages:
```
pacman -Syu
```
Install xfce4 and additional packages:
```
pacman -S xfce4 xfce4-goodies tumbler engrampa ristretto parole sudo git
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
To save and exit press CTRL - X - Y - ENTER.

Arch linux dont have their own/default xfce theme. So i suggest a theme to use instead of the default xfce theme(optional):
```
pacman -S arc-gtk-theme papirus-icon-theme noto-fonts
```

<details>
<summary>TERMUX X11 DEBUG</summary>
  
Execute ```exit``` until you appear in Termux Shell.
Download the Arch Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/arch/arch-xfce.sh
```
```
nano arch-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your username you created in Arch Shell. CTRL - X - Y - ENTER.
```
chmod +x arch-xfce.sh
```
Start Manjaro desktop with: 
```
./arch-xfce.sh
```

</details>
<details>
<summary>VNC DEBUG</summary>

Make sure your in Arch Shell and execute this command:
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
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/arch/arch-xfce-vnc.sh
```
Change ```<username>``` line 6 to your created user:
```
nano arch-xfce-vnc.sh
```
CTRL - X - Y - ENTER
```
chmod +x arch-xfce-vnc.sh
```
```
./arch-xfce-vnc.sh
```
Open RealVNC Viewer and connect to the screen with the ip 
```
localhost:1
```
</details>
After Arch is launched:

![1000250096](https://github.com/user-attachments/assets/e88fe330-0af6-412c-ba68-275ff52dea98)
![1000250097](https://github.com/user-attachments/assets/24d97713-01ad-4ef6-b661-a5d3e2881601)
![1000250098](https://github.com/user-attachments/assets/6ca08950-f29e-4a1a-97ab-0df6009d61ba)
![1000250099](https://github.com/user-attachments/assets/4a1f6a76-1f16-4a65-9471-9bb41e43aec0)
![1000250100](https://github.com/user-attachments/assets/ca33e67b-959e-450d-9453-774bd1a61327)
![1000250101](https://github.com/user-attachments/assets/63f60ea7-c280-49ab-b73b-08b34a27ce0f)
![1000250102](https://github.com/user-attachments/assets/5ef74294-8902-441b-acaa-8db8a49a1bf8)
![1000250103](https://github.com/user-attachments/assets/e70a7f07-e080-4f03-9197-cc0cce15910e)
![1000250104](https://github.com/user-attachments/assets/05767a10-9287-4ca7-bcb6-f955df0ec255)
![1000250105](https://github.com/user-attachments/assets/0abf0cc3-e0d3-4052-bad2-53f4ca4809aa)
![1000250106](https://github.com/user-attachments/assets/ba87356f-6ed9-4db0-868d-8aeffdd5b84d)
![1000250107](https://github.com/user-attachments/assets/5318ff5f-3def-4543-a9d0-e1a3dd98b010)
Your all done!
