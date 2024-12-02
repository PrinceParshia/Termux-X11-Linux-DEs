## OPENSUSE XFCE
---
#### NOTE
* ~ $ is Termux Shell.
* localhost:~ # is openSUSE Shell.

## MAIN STEPS
Open Termux and install required packages:
```
pkg update && pkg upgrade
pkg install x11-repo
pkg install termux-x11 proot-distro pulseaudio wget
```
Install openSUSE:
```
proot-distro install opensuse
proot-distro login opensuse
```
In openSUSE Shell update its packages:
```
zypper refresh
zypper update
```
Install xfce and other packages:
```
zypper install xfce4-panel xfce4-session xfce4-settings xfce4-appfinder xfce4-terminal xfce4-taskmanager xfce4-notifyd xfce4-power-manager xfce4-screenshooter xfce4-clipman-plugin xfce4-weather-plugin xfce4-battery-plugin xfce4-places-plugin xfce4-diskperf-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-mailwatch-plugin xfce4-netload-plugin xfce4-pulseaudio-plugin xfce4-sensors-plugin xfce4-timer-plugin xfce4-wavelan-plugin xfce4-mount-plugin patterns-openSUSE-xfce
zypper install sudo tumbler engrampa ristretto parole 
```
Install a browser to access internet:
```
zypper install chromium
```
```
zypper install firefox
```
Create an user to access the desktop:
```
useradd -m <username>
```
<details>
<summary>TERMUX X11 DEBUG</summary>
  
Execute ```exit``` until you appear in Termux Shell.
Download the openSUSE Startup file:
```
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/opensuse/opensuse-xfce.sh
```
```
nano opensuse-xfce.sh
```
Scroll to line 10 and change ```<username>``` to your username you created in openSUSE Shell. CTRL - X - Y - ENTER.
```
chmod +x opensuse-xfce.sh
```
Start openSUSE desktop with: 
```
./opensuse-xfce.sh
```

</details>
<details>
<summary>VNC DEBUG</summary>

Make sure your in openSUSE Shell and execute this command:
```
zypper install tigervnc
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
wget https://raw.githubusercontent.com/Anemosfy/Termux-X11-Linux-DEs/refs/heads/main/opensuse/opensuse-xfce-vnc.sh
```
Change ```<username>``` line 6 to your created user:
```
nano opensuse-xfce-vnc.sh
```
CTRL - X - Y - ENTER
```
chmod +x opensuse-xfce-vnc.sh
```
```
./opensuse-xfce-vnc.sh
```
Open RealVNC Viewer and connect to the screen with the ip 
```
localhost:1
```
</details>

## TOOLTIP
* Start X11 connection using (In Termux Shell):
  ```
  ./opensuse-xfce.sh
  ```
  And vnc connection using (In Termux Shell):
  ```
  ./opensuse-xfce-vnc.sh
  ```
* Close X11 connection using the exit button on the notifications bar. And vnc connection using (in openSUSE shell):
  ```
  vncserver -kill :1 
  ```
* Open openSUSE Shell in Termux using:
  ```
  proot-distro login opensuse
  ```
  And with a specific user:
  ```
  proot-distro login opensuse --user <username>
  ```
