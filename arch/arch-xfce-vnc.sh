#!/data/data/com.termux/files/usr/bin/bash

pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
export XDG_RUNTIME_DIR=${TMPDIR}
sleep 2
proot-distro login archlinux --shared-tmp -- /bin/bash -c  'export PULSE_SERVER=127.0.0.1 && export XDG_RUNTIME_DIR=${TMPDIR} && su - <username> -c "env DISPLAY=:0 startxfce4 vncserver :1"'
exit 0
