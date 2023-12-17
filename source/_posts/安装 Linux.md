---
title: 安装 Linux
---
# 安装 Linux

1. 在windows 下，使用`universal USB installer` 在移动硬盘的一个10G的小分区上，做一个启动盘（之前用U盘做可能是因为盘坏了，不行。）在 `installer` 里，选择Fat32, 同时会帮你格式化。
2. 安装`Ubuntu`时，选择自定义安装，然后覆盖掉之前的安装，寻找ex4文件系统即可。

## Vscode

启用了Remote Tunnel

## anaconda

安装了miniforge(mambaforge) from github仓库脚本

## zsh

apt 安装的 zsh

## git

安装git from apt

安装curl

安装oh my zsh

关闭自动睡眠

```bash
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
```

## 安装 gcc

```bash
sudo apt install build-essential
```

## 安装p10k

## 备份 Linux

Using `Timeshift`

在Ubuntu上将磁盘重新格式化为ext4文件系统,可以按照以下步骤操作:

1. 使用lsblk命令识别要格式化的磁盘设备名称,例如/dev/sdb。
2. 卸载该磁盘已经挂载的任何分区,使用umount命令,例如umount /dev/sdb1。
3. 使用fdisk命令进入交互模式,对该磁盘进行分区操作。删除旧分区并创建新分区。
4. 创建一个类型为Linux的主分区,选择分区类型83。按w保存修改并退出。
5. 使用mkfs.ext4命令格式化分区,例如mkfs.ext4 /dev/sdb1。
6. 输入y确认格式化。这将会抹掉数据,请事先备份重要数据。
7. 等待格式化完成。使用df -Th命令检查文件系统是否已成为ext4。
8. 最后可以在/etc/fstab中添加挂载信息,并使用mount命令挂载分区到指定目录。

这个过程将完全抹掉磁盘数据并将其格式化为ext4文件系统。建议先做好数据备份,然后按步骤操作,完成磁盘到ext4的转换 formatting。

## zsh 禁止输入文件夹名就打开文件夹

在`~/.zshrc`中添加

``` zsh
setopt no_auto_pushd
```

## zsh reveal conda environment

p10k choose the first style

## install zsh conda completion

<https://github.com/esc/conda-zsh-completion>"

## teamviewer assignment

- `sudo passwd` to set root password
- `su` to log in with root
- /path/to/teamviewer --allowRoot

## cmake

- `sudo apt install cmake`

## opencv

- `sudo apt install libopencv-dev python3-opencv`
- Vulkan: `sudo apt install libvulkan-dev`

## Lapack

- `sudo apt install liblapack-dev`
- in `CMakeLists.txt` add `find_package(LAPACK REQUIRED)`

## Example script for Ubuntu

```bash
sudo apt install zsh
sudo apt install git
sudo apt install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# and add ZSH_THEME="powerlevel10k/powerlevel10k" to ~/.zshrc

git clone https://github.com/esc/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion

# And add lines in `.zshrc`

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

```.zshrc
plugins=(git zsh-autosuggestions gitignore conda-zsh-completion zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# conda-zsh-completion
zstyle ':completion::complete:*' use-cache 1
zstyle ":conda_zsh_completion:*" use-groups true
zstyle ":conda_zsh_completion:*" show-unnamed true
zstyle ":conda_zsh_completion:*" show-global-envs-first true
zstyle ':completion::complete:*' use-cache 1
zstyle ":conda_zsh_completion:*" use-groups true
zstyle ":conda_zsh_completion:*" show-unnamed true
zstyle ":conda_zsh_completion:*" show-global-envs-first true

# for gpg
export GPG_TTY=$(tty) 
gpgconf --launch gpg-agent
```
