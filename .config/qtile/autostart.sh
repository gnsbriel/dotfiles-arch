#!/usr/bin/env bash

xrandr --output DisplayPort-2 --mode 1920x1080 --rate 165            &   # Set monitor resolution and refresh rate
#xrandr --output LVDS-1 --mode 1366x768 --rate 60                     &   # Set monitor resolution and refresh rate
xset s off -dpms                                                     &   # Disable screen saving
nitrogen --set-zoom-fill --random ~/Media/Wallpapers/                &   # Set a random background
picom --experimental-backends --config ~/.config/picom/picom.conf -b &   # Start picom (Compositor)
dunst -conf/config "$HOME/.config/dunst/dunstrc"                     &   # Start dunst (Notifications)
flameshot                                                            &   # Start flameshot (Screenshot tool)
volumeicon                                                           &   # Start volumeicon (Manage Volume)
nm-applet                                                            &   # Start nm-applet (Network Manager Applet)
udiskie --tray                                                       &   # Start udiskie, auto mount usb storage devices
#steam                                                                &   # Start Steam
#code                                                                 &   # Start VS Code
#virtualbox                                                           &   # Start Virtual Box
#qtile run-cmd -g 4 spotify                                           &   # Start Spotify
numlockx                                                             &   # Start numlockx (Enable Numlock)
parcellite                                                           &   # Start Parcellite (Clipboard Manager)
#cbatticon                                                            &   # Start cbatticon (Battery Status Applet)

# Only use the options below when having problems with Gnome Keyring #
# gnome-keyring-daemon -r -d                                                          &   # Start Gnome Keyring daemon
# source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh                                  &   # see https://unix.stackexchange.com/a/295652/332452
# eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)   &   # Init keyring
# export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK         &   # Export keyring
# mkdir -p "$HOME"/.local/share/keyrings                                              &   # see https://wiki.archlinux.org/title/GNOME/Keyring#xinitrc
