---
title: Open VPN
---
# Open VPN

1. install docker
   Note: check if daemon is running

   ```bash
   sudo systemctl status docker
   ```

2. install openvpn

   ```bash
   OVPN_DATA="ovpn-zihan"
   docker volume create --name $OVPN_DATA
   docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_genconfig -u udp://vpn.zihanng.shop
   docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn ovpn_initpki
   docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn
   # or
   # docker run --privileged -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp kylemanna/openvpn
   docker run -v $OVPN_DATA:/etc/openvpn --rm -it kylemanna/openvpn easyrsa build-client-full zihan nopass
   docker run -v $OVPN_DATA:/etc/openvpn --rm kylemanna/openvpn ovpn_getclient zihan > zihan.ovpn
   ```

3. pull the zihan.ovpn file to local machine

   ```bash
   rsync -avzP zihan_aws:zihan.ovpn .
   ```
