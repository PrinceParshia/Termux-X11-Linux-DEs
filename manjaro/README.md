Found a shorter way will get update soon!

## MANJARO XFCE
![Screenshot_2024-11-21_08-03-21](https://github.com/user-attachments/assets/762326c2-71d5-4dd9-9a12-a056a02fcd66)

---
Info: (~ $) is Termux Shell, ([root@localhost ~]#) is Manjaro Shell. Don't miss any commands!

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
pacman -S xfce4 xfce4-goodies tumbler engrampa git sudo
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
Install Manjaro default xfce theme:
```
git clone https://gitlab.manjaro.org/profiles-and-settings/manjaro-xfce-settings.git
```
```
mv manjaro-xfce-settings/skel/.config /home/<username>/
```
Execute ```exit``` until you appear in Termux Shell.

Download the Manjaro Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Linux-XFCE-Android/refs/heads/main/manjaro/manjaro-xfce.sh
```
```
nano manjaro-xfce.sh
```
Scroll to line 20 and change ```<username>``` to your username you created in Manjaro Shell. CTRL - X - Y - ENTER.
```
chmod +x manjaro-xfce.sh
```
Start Manjaro desktop with: 
```
./manjaro-xfce.sh
```
After Manjaro launched:
![1000249325](https://github.com/user-attachments/assets/58095ee5-bf86-4fe7-97fc-d47a2b40408f)
![1000249326](https://github.com/user-attachments/assets/5f11c07c-7053-48a4-8d61-9ab5c10b3c3f)
Add ```--no-sandbox``` flag after the command:
![1000249327](https://github.com/user-attachments/assets/c362378c-75a9-43c4-ae00-4038804fbca6)
![1000249328](https://github.com/user-attachments/assets/6b1f4434-f6ca-40c2-9afd-e6ed9ec8967f)
Search ```matcha xfce``` and download the theme:
![1000249329](https://github.com/user-attachments/assets/4534aaf1-b3d7-4d0b-966c-c46a93756942)
![1000249330](https://github.com/user-attachments/assets/7d44dc38-3706-483e-9835-4dc88e31fc3a)
![1000249331](https://github.com/user-attachments/assets/c2574ec1-cd1f-45d2-9058-7b11dfb81b75)
Search ```papirus xfce``` and download:
![1000249332](https://github.com/user-attachments/assets/b5f8b34d-c933-412e-b0fc-0e7b663211e8)
![1000249343](https://github.com/user-attachments/assets/0737d137-0ea1-4081-a81e-637112ad4f72)
![1000249334](https://github.com/user-attachments/assets/9b602c45-d749-4792-9c68-802b2820e045)
Open terminal and execute:
![1000249350](https://github.com/user-attachments/assets/daa66ce6-433a-40a1-8672-d66228dc4cd7)
```
cd Downloads/
```
Adjust names if its different:
```
tar -xf Matcha-dark-sea.tar.xz
```
```
tar -xf papirus-icon-theme-teal-folders.tar.xz
```
Choose a Matcha version you want(Dark/light/default-mixed):
```
mv Matcha-version /usr/share/themes/
```
```
mv Papirus /usr/share/icons/
```
Choose Papirus dark or light version:
```
mv Papirus-version /usr/share/icons/
```
```
cd /usr/share/icons/
```
```
git clone https://raw.githubusercontent.com/anemosfy/Linux-XFCE-Android/refs/heads/main/manjaro/manjaro-xfce.sh
```
![1000249337](https://github.com/user-attachments/assets/ee7faf76-3c0a-47a1-8b4e-6e6d6ff39c26)
![1000249338](https://github.com/user-attachments/assets/103188d3-9c2f-4173-b39b-f27c7a1a20b5)
![1000249339](https://github.com/user-attachments/assets/d0345187-b5e6-4d98-9a2d-b33d71ad37d8)
![1000249341](https://github.com/user-attachments/assets/51099b77-2aa4-4cb1-8b0a-ebabbc83de80)
![1000249342](https://github.com/user-attachments/assets/2e9fd421-0df3-4108-97eb-f85b5d7c3031)
![1000249344](https://github.com/user-attachments/assets/ed371815-f08f-4899-a456-5de1051a417b)
![1000249345](https://github.com/user-attachments/assets/c494bb71-1d8c-4516-aa4c-8c17c34b32df)
![1000249346](https://github.com/user-attachments/assets/de23b103-b803-4e34-83c3-ed9a5d6e96ba)
![1000249347](https://github.com/user-attachments/assets/f4362cf1-b8b4-48e8-bd39-8744faf38e1b)
![1000249348](https://github.com/user-attachments/assets/97284495-41c5-4e58-ae75-791baf127b34)
![1000249349](https://github.com/user-attachments/assets/f6182238-9552-48b9-9f14-25b9bb7a0e49)
Your all set! Now you can do your work here.

---
## TOOLTIP
* Start Manjaro Desktop using (In Termux Shell):
  ```
  ./manjaro-xfce.sh
  ```
* Close Manjaro Desktop using the exit button on the notifications bar
* Open Manjaro Shell in Termux using:
  ```
  proot-distro login manjaro
  ```
  And with a specific user:
  ```
  proot-distro login manjaro --user <username>
  ```
