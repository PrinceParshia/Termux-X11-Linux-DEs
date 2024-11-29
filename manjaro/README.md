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

Install xfce4 and additional packages:
```
pacman -S xfce4 xfce4-goodies pamac tumbler engrampa ristretto parole sudo git matcha-gtk-theme
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
cd /usr/share/icons/
```
```
git clone https://gitlab.manjaro.org/artwork/icon-themes/manjaro-icons.git
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
To stop vnc in manjaro shell:
```
vncserver -kill :1
```
</details>

After Manjaro is launched:
If your using Chromium do this step:
![1000249491](https://github.com/user-attachments/assets/51a29c74-29e7-404b-bd8a-e9d9d43cad46)
![1000249492](https://github.com/user-attachments/assets/0f200659-76af-4913-81bd-74dda27de669)
Download the Papirus icon theme(Manjaro Default):
![1000249493](https://github.com/user-attachments/assets/abca3e8b-db7d-44b2-8568-104f4cd43882)
![1000249494](https://github.com/user-attachments/assets/c928dd9a-912f-4d0b-8aad-d4e65c58e63e)
![1000249495](https://github.com/user-attachments/assets/537ba7e9-dd47-454b-b7a1-4462f56dc791)
![1000249496](https://github.com/user-attachments/assets/c83d69a8-ee2f-448c-806b-81bd4455ca18)
![1000249497](https://github.com/user-attachments/assets/21afd831-3380-4216-828f-6a927f77517c)
![1000249498](https://github.com/user-attachments/assets/5e0120b3-06d9-439f-896c-3848a2276215)
Execute the commands in terminal:
```
cd /usr/share/icons/
```
```
mv /home/<username>/Downloads/papirus-icon-theme-teal-folders.tar.xz /usr/share/icons/
```
```
tar -xf papirus-icon-theme-teal-folders.tar.xz
```
```
rm papirus-icon-theme-teal-folders.tar.xz
```
![1000249517](https://github.com/user-attachments/assets/ca0cfc27-1fad-489b-9823-3308e482dd7d)
![1000249518](https://github.com/user-attachments/assets/73020513-db32-4d0e-bc2d-79edb8407aca)
Turn on the option and select the Matcha sea theme version you like most:
![1000249519](https://github.com/user-attachments/assets/2792f84e-bca5-40ec-89f8-a962d865a769)
Select the Papirus icon theme:
![1000249520](https://github.com/user-attachments/assets/9980070e-39b2-41fc-a131-8f3abc2e8134)
![1000249521](https://github.com/user-attachments/assets/ab27200a-2aac-4cc1-a15b-e41d4baf3f50)
![1000249522](https://github.com/user-attachments/assets/a9d93403-336f-40ff-8b9a-019470f564d1)
![1000249523](https://github.com/user-attachments/assets/ba2ae40f-d187-4ac0-a06f-3a328d77dd2b)
![1000249524](https://github.com/user-attachments/assets/e79ba141-2097-4948-b1f4-04b08901b8c7)
![1000249525](https://github.com/user-attachments/assets/ed17341b-c303-477d-97b4-5acae28ecd93)
![1000249526](https://github.com/user-attachments/assets/0a623546-dc76-4ea3-81a2-a7a94ae83042)
Your all done!

---
## TOOLTIP
* Start X11 connection using (In Termux Shell):
  ```
  ./manjaro-xfce.sh
  ```
  And vnc connection using (In manjaro shell):
  ```
  vncserver :1
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
