---
title: answer
---
# answer

Suppose $\sum_{i\in X} x_i$ is convergent, which means $|a - \sum_{i\in \Omega'} x_i| < \epsilon$ for any finite subset $\Omega \subset \Omega' \subset X$.

Consider $\sum_{i\in X} |x_i|$,

$\forall \epsilon > 0$, since $\sum_{i\in X} x_i$ is convergent, there exists a finite subset $\Omega \subset X$ such that $|a - \sum_{i\in \Omega'} x_i| < \epsilon$ for any finite subset $\Omega \subset \Omega' \subset X$.

Note $b = \sum_{i\in \Omega} |x_i|$, then

Consider

$$
\begin{align}
f: \omega &\mapsto \sum_{i\in \omega} x_i \\
g: \omega &\mapsto \sum_{i\in \omega} |x_i| \\
\{\Omega' \setminus \Omega &| \Omega \subset \Omega' \subset X\} \to \mathbb{R} \\
\end{align}
$$

And since ${x_i}$ is given, $X \setminus \Omega$ can be divided into two subsets $X_1$ and $X_2$ such that $x_i \ge 0$ for $i \in X_1$ and $x_i < 0$ for $i \in X_2$.

Then define

$$
\begin{align}
f_+: \omega &\mapsto \sum_{i\in \omega \cap X_1} x_i \\
f_-: \omega &\mapsto \sum_{i\in \omega \cap X_2} |x_i| \\
\end{align}
$$

Then $f = f_+ - f_-$ and $g = f_+ + f_-$.

Then one can prove $\sup(2f) \ge \sup(g)$. And then verify

$$
\begin{align}
|b - \sup(g)| < 2\epsilon
\end{align}
$$

Notice: the $b$ part is wrong, since $b$ should not depend on $\Omega$.
