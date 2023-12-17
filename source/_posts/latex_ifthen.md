---
title: Using ifthen package in LaTeX
---
# Using ifthen package in LaTeX

```latex
\RequirePackage{ifthen}
...
\newcommand{\mytitle}[2][maintex]{%
    \ifthenelse{\equal{#1}{maintex}}{%
        % Fixed style for the title
        \title{%
            % Top rule
            \rule{\textwidth}{0.4pt} \\
            \vspace{0.5cm}
            \textbf{\uppercase{#2}} % Title content as argument
            % Bottom rule
            \rule{\textwidth}{0.4pt}
        }
    }{%
        % Alternative style for the title
        \title{\textbf{\large #2}}
    }
}
```

The above code defines a command `\mytitle` that takes two arguments, the first one is optional and the second one is mandatory. The first argument is used to switch between two styles for the title. The second argument is the title content. There is a default value for the first argument, which is `maintex`. If the first argument is `maintex`, the title will be styled as a horizontal rule with the title content in uppercase. Otherwise, the title will be styled as a bold text with the title content in large font size.
