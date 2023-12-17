---
title: Latexdiff with subfiles - TeX - LaTeX Stack Exchange --- 带有子文件的 Latexdiff - TeX - LaTeX 堆栈交换
---

# Latexdiff with subfiles - TeX - LaTeX Stack Exchange --- 带有子文件的 Latexdiff - TeX - LaTeX 堆栈交换

Latexdiff with subfiles 带有子文件的 Latexdiff

Ask Question

Is there a way to make latexdiff work with the 'subfiles' package ?

有没有办法让 latexdiff 与“子文件”包一起使用？
I use subfiles to include parts of the document from different .tex files. Latexdiff does not seem to mark changes in the subfiles.

我使用子文件来包含来自不同 .tex 文件的文档部分。Latexdiff 似乎没有标记子文件中的更改。
The --flatten option does not help. Latexdiff version is 1.0.2.

\--flatten 选项无济于事。Latexdiff 版本为 1.0.2。
Example :
****dd
例：
main.tex

```latex
\documentclass[10pt]{article}
\usepackage{subfiles}
\begin{document}
\subfile{includeme.tex}
\end{document}

```

includeme.tex 包括我.tex

```latex
\documentclass[main.tex]{subfiles}

\begin{document}
Text!
\end{document}
```

Running

运行

```latex
latexdiff d1/main.tex d2/main.tex --flatten > mydiff.tex
```

the resulting document simply does not include the contents of the subfile.

生成的文档根本不包含子文件的内容。
mydiff.tex

```latex
\documentclass[10pt]{article}
%DIF LATEXDIFF DIFFERENCE FILE
%DIF (...)
%DIF END PREAMBLE EXTENSION ADDED BY LATEXDIFF
\begin{document}
\subfile{includeme.tex}
\end{document}
```

So yes, the problem lies with the flatten pipeline/workflow, which does not seem to be made to work with \\subfile{includeme.tex} includes.

所以是的，问题出在扁平化的管道/工作流上，它似乎不适用于 `\subfile{includeme.tex}` 包含。

You could try some of the `flatten` alternatives discussed here: [tex.stackexchange.com/questions/21838/…](http://tex.stackexchange.com/questions/21838/replace-inputfilex-by-the-content-of-filex-automatically "replace inputfilex by the content of filex automatically")

您可以尝试此处讨论的一些 `flatten` 替代方案：tex.stackexchange.com/questions/21838/...

– [Jörg](https://tex.stackexchange.com/users/11984/j%c3%b6rg "7,643 reputation")

[Mar 26, 2014 at 10:51](#comment385791_167620)

Could you add a MWE or at least a snippet of code that demonstrates how `subfiles` includes subsidiary files.

您能否添加一个 MWE 或至少一段代码来演示如何 `subfiles` 包含子文件。

– [frederik](https://tex.stackexchange.com/users/38437/frederik "1,375 reputation")

[Mar 26, 2014 at 11:14](#comment385801_167620)

@f-tilman Added the MWE

@f-tilman 添加了 MWE

– [mfit](https://tex.stackexchange.com/users/48627/mfit "313 reputation")

[Mar 26, 2014 at 14:23](#comment385870_167620)

Well, latexdiff does not know that it should expand the `\subfile` argument. You can adapt some of the scripts mentioned in the link before to use `\subfile` in a similar way as `\input`, but as your example of `includeme.tex` includes a `documentclass` I think it's not going to be compilable.

好吧，latexdiff 不知道它应该扩展 `\subfile` 参数。您可以调整之前链接中提到的一些脚本，以类似的方式使用 `\subfile` `\input` ，但是由于您的示例 `includeme.tex` 包括我认为 `documentclass` 它不会是可编译的。

– [Jörg](https://tex.stackexchange.com/users/11984/j%c3%b6rg "7,643 reputation")

[Mar 26, 2014 at 14:28](#comment385876_167620)

_For posterity:_ at least as of `latexdiff version 1.1.1`, using the `--flatten` option worked for me with subfiles. It took a little tweaking of the file-structure to get it to work, then I had to manually modify the resulting `mydiff.tex` slightly to get it to build into a PDF... but it worked.

对于后代：至少截至 `latexdiff version 1.1.1` ，使用该 `--flatten` 选项对我有用的子文件。它需要对文件结构进行一些调整才能使其工作，然后我不得不手动修改结果 `mydiff.tex` 以使其构建为 PDF......但它奏效了。

– [DilithiumMatrix](https://tex.stackexchange.com/users/22806/dilithiummatrix "595 reputation")

[Jun 1, 2017 at 12:58](#comment921132_167620)

[Show **1** more comment](# "Expand to show all comments on this post")

## 3 Answers

Sorted by:
Highest score (default) Date modified (newest first) Date created (oldest first)
8

Note that the following is a work-around rather than a full solution:

请注意，以下是一种解决方法，而不是完整的解决方案：
`latexdiff --append-safecmd=subfile d1/main.tex d2/main.tex --flatten > mydiff.tex`
will take care of the cases where a \\subfile command has been added or removed from the file, and the whole block is marked up (only tested on the MWE, would need to be confirmed for longer included material), or the filename of included file changes. You would still need to copy the included files into the directory where the difference file is generated (current directory in the MWE).

将处理在文件中添加或删除 \\subfile 命令，并且整个块被标记（仅在 MBE 上测试，需要确认更长的包含材料）或包含文件更改的文件名的情况。您仍需要将包含的文件复制到生成差异文件的目录（MWE 中的当前目录）中。
To highlight content changes to the subfiles, you can process each file separately

要突出显示对子文件的内容更改，可以单独处理每个文件
`cat /dev/null > null latexdiff -pnull d1/includeme.tex d2/includeme.tex > includeme.tex`
The -p option forces latexdiff to omit the preamble commands that it normally inserts automatically when it finds a \\begin{document} (auxiliary file "null" is needed as -p/dev/null is not recognised due to a bug in latexdiff).

\-p 选项强制 latexdiff 省略它通常在找到 \\begin{document} 时自动插入的前导码命令（需要辅助文件“null”，因为由于 latexdiff 中的错误无法识别 -p/dev/null）。
Now all that remains is to automate this. The following line is a hacky way to achieve some automation as proof-of-concept but would really need to be expanded into a more robust and flexible small shell script:

现在剩下的就是自动化。以下行是实现一些自动化作为概念验证的黑客方法，但实际上需要扩展为更强大、更灵活的小 shell 脚本：
`grep -v '^%' main.tex | grep subfile\{ | sed 's/^.*subfile{\(.*\)}.*$/\1/' \ | awk '{ print "latexdiff -pnull d1/" $1, "d2/" $1,">", $1 }' | sh`

I have noted the OP question as a feature request and eventually the --flatten option of latexdiff might be updated to deal with this 'natively'. The 'null' file workaround will probably not be necessary from version 1.0.4 onwards (not yet released at the time of writing)

我已将 OP 问题作为功能请求，最终 latexdiff 的 --flatten 选项可能会更新以“原生”处理此问题。从 1.0.4 版开始（撰写本文时尚未发布）可能不需要“null”文件解决方法

– [frederik](https://tex.stackexchange.com/users/38437/frederik "1,375 reputation")

[Mar 26, 2014 at 21:30](#comment386126_167894)

Thanks! This is an actual workaround. Although I have to copy / reference some other files not in the MWE (style, bib, ..), to make the aggregated differences-tex work, this is probably the best/easiest solution for now. (If latexdiff could do it natively, of course that would be nice, too.Thanks for latexdiff as a whole, btw :-)

谢谢！这是一个实际的解决方法。尽管我必须复制/引用 MWE 中没有的其他一些文件（样式、围兜等），以使聚合的差异 tex 起作用，但这可能是目前最好/最简单的解决方案。（如果 latexdiff 可以原生完成，那当然也很好。感谢整个latexdiff，顺便说一句：-）

– [mfit](https://tex.stackexchange.com/users/48627/mfit "313 reputation")

[Mar 30, 2014 at 8:10](#comment387501_167894)

Note that latexdiff version 1.0.4 is now released and --flatten supports \\subfile out of the box

请注意，latexdiff 版本 1.0.4 现已发布，--flatten 支持开箱即用的 \\subfile

– [frederik](https://tex.stackexchange.com/users/38437/frederik "1,375 reputation")

[Nov 4, 2014 at 8:18](#comment491976_167894)

@frederik It doesn't work if the subfile is in a subdirectory using `\def\input@path{{./tex/} {./} {../}}`.

@frederik 如果子文件位于使用 `\def\input@path{{./tex/} {./} {../}}` .

2 years after the question was asked, but I ended up writing a batch file for solving this in a windows environment:

在提出这个问题 2 年后，但我最终编写了一个批处理文件来在 Windows 环境中解决这个问题：

```latex
@echo off
setlocal
set "old_path=..\..\tags\old_version\my_folder\"
set "new_path=..\..\..\trunk\my_folder\"
set "doc_name=my_file.tex"
latexdiff --flatten %doc_name% %doc_name% > flat.tex
cd %old_path%
latexdiff --flatten %doc_name% %doc_name% > flat.tex
cd %new_path%
latexdiff --flatten %old_path%flat.tex flat.tex > diff.tex
rm flat.tex
rm %old_path%flat.tex
```

Post above [link](https://tex.stackexchange.com/a/346316/243072) was very helpful, but I made my modified version that you can use.

上面的链接非常有帮助，但我制作了您可以使用的修改版本。

```latex
@echo off
setlocal
set "old_path=..\documentation\"
set "new_path=..\documentation_old\"
set "doc_name_filename=main"
echo Generate %doc_name_filename%_flat.tex for %new_path%
cd %new_path%
latexpand %doc_name_filename%.tex > %doc_name_filename%_flat.tex
echo Generate %doc_name_filename%_flat.tex for %old_path%
cd %old_path%
latexpand %doc_name_filename%.tex > %doc_name_filename%_flat.tex
echo Generate diff
cd %new_path%
latexdiff %old_path%%doc_name_filename%_flat.tex %doc_name_filename%_flat.tex > diff.tex
pdflatex

--max-print-line=10000 -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error -recorder

diff.tex 2>&1 > NUL
echo PDF generated in case of problems see diff.log
echo Cleaning up
del %doc_name_filename%_flat.tex
del %old_path%%doc_name_filename%_flat.tex
pause
```
