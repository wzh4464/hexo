---
title: GPG on hpc
---
# GPG on hpc

## loopback

- `echo allow-loopback-pinentry >> ~/.gnupg/gpg-agent.conf`
- input passphrase in `~/.___`
- `echo -n "#\!/usr/bin/bash  \ngpg --pinentry-mode loopback --batch --yes --passphrase-fd 1 --passphrase-file ~/.___ $@" >> ~/.gpg-pinentry-loopback`
- `chmod +x ~/.gpg-pinentry-loopback`
- `git config --global gpg.program $HOME/.gpg-pinentry-loopback`
- success in vscode

## Time Cache

- `echo -n "default-cache-ttl 34560000\n max-cache-ttl 34560000" >> ~/.gnupg/gpg-agent.conf`
