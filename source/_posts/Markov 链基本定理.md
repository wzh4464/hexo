---
title: Markov 链基本定理
---
# Markov 链基本定理

当状态$i$是非周期的正常返状态, 则

$$
\lim_{n \to \infty} P_{ii}^{(n)} = \frac{1}{\mu_i}.
$$

Notation: 

- $P_{ij}^{(n)}$: 从状态$i$出发, $n$步后到达状态$j$的概率.
- $\mu_i$: 状态$i$的平均重返时间.
- 非周期: $d(i) = 1$.
- 正常返: $f_{ii} = \sum_{n=1}^\infty f_{ii}^{(n)} = 1$.

Proof.

| 原函数         | 形式矩母函数                                     |
| -------------- | ------------------------------------------------ |
| $f_{ii}^{(n)}$ | $F_i(t) = \sum_{n=0}^\infty f_{ii}^{(n)} e^{nt}$ |
| $P_{ii}^{(n)}$ | $P_i(t) = \sum_{n=0}^\infty P_{ii}^{(n)} e^{nt}$ |

首先将$P_{ii}^{(n)}$ 分解成若$k$时刻首次返回状态$i$ $(k \leq n)$ 的条件概率求和
$$
P_{ii}^{(n)} = \sum_{k=1}^n f_{ii}^{(k)} P_{ii}^{(n-k)}.
$$

则
$$
\begin{aligned}
P_i(t) &= \sum_{n=0}^\infty \sum_{k=1}^n f_{ii}^{(k)} P_{ii}^{(n-k)} e^{kt} e^{(n-k)t} \\
&= P_{ii}^{(0)} + \sum_{n=1}^\infty \sum_{k=1}^n f_{ii}^{(k)} P_{ii}^{(n-k)} e^{kt} e^{(n-k)t} \\
&= P_{ii}^{(0)} + \sum_{k=1}^\infty f_{ii}^{(k)} e^{kt} \sum_{n=k}^\infty P_{ii}^{(n-k)} e^{(n-k)t} \\
&= 1 + P_i(t) F_i(t).
\end{aligned}
$$

所以
$$
P_i(t) = \frac{1}{1 - F_i(t)}
$$

$$
\mu_i = \sum_{n=1}^\infty n f_{ii}^{(n)} = F_i'(0) \\
P_i(t)/e^{kt} = \sum_{n=0}^\infty P_{ii}^{(n)} e^{(n-k)t} 
