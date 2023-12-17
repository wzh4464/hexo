---
title: 写一个transformer
---
# 写一个transformer

wsl vscode tab 变成移动焦点了，似乎关闭了tab的vim绑定解决了？
<https://blog.csdn.net/mrbone11/article/details/100037354>

1. [x] ```wget <https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin>```
1. [x] ```sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600```
1. [x] ```wget <https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb>```
1. [x] ```sudo dpkg -i cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb```
1. [x] ```sudo cp /var/cuda-repo-wsl-ubuntu-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/```
1. [x] ```sudo apt-get update```
1. [x] ```sudo apt-get -y install cuda```
