---
title: biblatex usage
---
# biblatex usage

## Example file

```latex
\documentclass{article}
\usepackage[backend=biber,style=numeric]{biblatex}
\bibliography{biblatex_usage}

\begin{document}
Some text \autocite{ref1}.
\printbibliography
\end{document}
```

See [gpt.tex](response/gpt.tex) for the full example.

## Example compile command

```bash
pdflatex gpt.tex
biber gpt
pdflatex gpt.tex
pdflatex gpt.tex
```

Recipe has been made in settings of VS Code.

## Example bibliography file

```bib
@article{ref1,
  author = {Author, A.},
  year = {2001},
  title = {Title},
  journal = {Journal},
  volume = {1},
  number = {1},
  pages = {1--2},
  doi = {10.1000/182},
  url = {https://www.example.com/},
}
```
