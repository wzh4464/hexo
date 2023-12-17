---
title: Linux Onedrive
---
# Linux Onedrive

## Install

[Install Onedrive](https://github.com/abraunegg/onedrive/blob/master/docs/INSTALL.md)

```bash
sudo apt install onedrive
```

## Config

```bash
onedrive --synchronize --verbose
```

## Download specific folder

```bash
onedrive --synchronize --verbose --download-only "folder_name"
```

## Stop sync

```bash
onedrive --synchronize --verbose --stop
```
