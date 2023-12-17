---
title: Linux solve `policykit-1.service`
---

# Linux solve `policykit-1.service: Two services allocated for the same bus name org.freedesktop.PolicyKit1, refusing operation.`

``` bash
sudo systemctl mask --now polkit.service
```

`sudo systemctl unmask polkit.service`

`sudo apt install libpolkit-qt5-1-1`

`sudo apt-get install -y meson ninja-build`

`sudo apt-get install libglib2.0-dev`

`sudo apt-get install libexpat1-dev`

`sudo apt-get install duktape-dev`

`sudo apt-get install libpam0g-dev`

`sudo apt-get install libgirepository1.0-dev`

`sudo apt-get install libdbus-1-dev`

## Try

- `/etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf > /etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf_old`
- `/usr/share/dbus-1/system.d/org.freedesktop.PolicyKit1.conf > /usr/share/dbus-1/system.d/org.freedesktop.PolicyKit1.conf_old`
- `sudo cp /etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf /etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf_old`
- `sudo cp /usr/share/dbus-1/system.d/org.freedesktop.PolicyKit1.conf /etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf`

## Try 2

- `root@zihanwu7-Precision-3630-Tower:/usr/lib/systemd/system# mv policykit-1.service policykit-1.service_bak`
- `/usr/lib/systemd/system/polkit.service:7:BusName=org.freedesktop.PolicyKit1`
