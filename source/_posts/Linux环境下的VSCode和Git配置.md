---
title: Linux环境下的VSCode和Git配置
---
# Linux环境下的VSCode和Git配置

## 移动硬盘分区情况

![[Pasted image 20230722114843.png]]

- AppleAPFSMedia是两个共用空间的卷宗
- LINUX 是16G的启动盘(FAT32)
- Extended 是 Exfat.

## vscode on linux

- 不要用snap安装, 否则不能输入中文
- 字体font: <https://github.com/kalaschnik/meslolgs-nf-template>
- 配置gpg git

## git configuration

- `git config --global user.name "wzh4464"`
- `git config --global user.email "32484940+wzh4464@users.noreply.github.com"`
- gpg key: `git config --global user.signingkey ****`
- `git config --global commit.gpgsign true`
- example: git commit -S -m "commit message"
- `-s` means `--signoff` and `-S` means `--gpg-sign`

## export gpg private key

```bash
gpg --export-secret-keys -a **** > private.key
rsync -avzP private.key ***
```

## gpg configuration

- 先import: `gpg --batch --import private.key`
- 再trust: `gpg --edit-key ****`
- `trust` -> `5` -> `y` -> `quit`

## obsidian git

- plugin name: obsidian git
- 不知道有没有用的:
  - `curl -L https://aka.ms/gcm/linux-install-source.sh | sh`
  - `git-credential-manager configure`
- 使用gpg来验证身份
  - `git config --global credential.credentialStore gpg`

- install pass
- `pass init ****`

## git interactive editor vim

- `git config --global core.editor "vim"`

## time zone incompatible

`timedatectl set-local-rtc 1`
