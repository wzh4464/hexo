---
title: Timeshift
---
# Timeshift

## Problems

1. Clicking on icon can not prompt the password input window;
2. gtk error

## Try

Same problem here. Ubuntu 22.04.  
这里同样的问题。乌班图22.04。  
Fixed by downgrading to 3.2.3.  
通过降级至 3.2.3 修复。  
Removed timeshift and rsync via apt.  
通过 apt 删除了时移和 rsync。  
Then: 然后：  
`sudo apt-get install rsync=3.2.3-8ubuntu3`  
Put rsync on hold:  
暂停 rsync：  
`sudo apt-mark hold rsync`

Reinstall timeshift via apt.  
通过 apt 重新安装 timeshift。

<https://github.com/linuxmint/timeshift/issues/152>

## Order

On the basis that timeshift uses `rsync` under the hood, it's important to note that,  
基于时移在底层使用 `rsync` 的基础上，需要注意的是，

1. the paths in a filter file such as the one you show are relative to the root of the transfer  
    过滤器文件中的路径（例如您显示的路径）相对于传输的根目录
2. the include/exclude operations work from the top down with the first match being applied.  
    包含/排除操作从上到下进行，并应用第一个匹配项。

If you are transferring from `/home/nils` then all the paths in the filter file start there - even if they begin with `/`. On the other hand, if you are using timeshift to backup from `/` then the paths should be correct.  
如果您从 `/home/nils` 传输，则过滤器文件中的所有路径都从那里开始 - 即使它们以 `/` 开头。另一方面，如果您使用时移从 `/` 进行备份，则路径应该是正确的。

Note that the first line tells `rsync` (timeshift) to include everything under `/home/nils`. Any later pattern under `/home/nils` - such as `/home/nils/Dropbox/` - will never be matched. Change the order to exclude files and directories _before_ you specify a broader set for inclusion.  
请注意，第一行告诉 `rsync` （时移）包含 `/home/nils` 下的所有内容。 `/home/nils` 下的任何后续模式 - 例如 `/home/nils/Dropbox/` - 将永远不会匹配。在指定更广泛的包含集之前，更改排除文件和目录的顺序。

Consequently you need to reorder your example like this:  
因此，您需要像这样重新排序您的示例：

```bash
- /home/nils/Dropbox/***
+ /home/nils/***
+ /root/**
```

## 仅控制台

一些常用的内核文本模式参数:

- text - 纯文本模式
- systemd.unit=multi-user.target - 以多用户命令行模式启动
- emergency - 紧急救援模式
- single - 单用户模式
- nomodeset - 不设置视频模式

以上参数可以组合使用,修改后需要重启系统才会生效。

如果要恢复图形界面,则需要删除这些参数后再重启。
