---
title: debug matlab mex on linux
---
# debug matlab mex on linux

## mex it

- An example:  [ELSDc](https://github.com/wzh4464/ELSDc.git)
- `src/mexall.m`
- `-g` for debug, -l for function `dsyev`

## debug

- `su` to act as a root
- `code --no-sandbox ----user-data-dir /home/zihanwu7/tmp`
- install `LLDB` extention
- use attach form

```json
{
    // 使用 IntelliSense 以得知可用的屬性。
    // 暫留以檢視現有屬性的描述。
    // 如需詳細資訊，請瀏覽: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "lldb",
            "request": "attach",
            "name": "Attach",
            "pid": "${command:pickMyProcess}"
        }
    ]
}
```

- `matlab -nosplash -nodesktop -debug`
- attach it and enjoy debugging!
  