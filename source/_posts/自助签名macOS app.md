自助签名macOS app

下载的Golden Dict++ 应用显示损坏，发现是code sign问题，于是应该

1. 在 Key Chain 中申请证书：钥匙串助理 -> 证书助理 -> 从颁发机构请求证书
2. 导出到磁盘之后，再导入钥匙串，选代码签名
3. ![[Pasted image 20230712105909.png]]
4. ```sudo codesign --force --deep --sign 吴子晗 /Applications/GoldenDict.app```
5. $$
\ell_2 \text {-norm }
$$
1. 从终端打开obsidian可以commit with gpg
2. obsidian git 中 环境变量添加 `GPG_TTY=$(tty)`, `PATH` 添加 `/opt/homebrew/bin/` 成功