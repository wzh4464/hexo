---
title: Kolmogorov’s extension theorem
---
# Kolmogorov’s extension theorem

For all $t_1, \ldots, t_k \in T, k \in \mathbf{N}$ let $\nu_{t_1, \ldots, t_k}$ be probability measures on $\mathbf{R}^{n k}$ s.t.
$$
\nu_{t_{\sigma(1)}, \cdots, t_{\sigma(k)}}\left(F_1 \times \cdots \times F_k\right)=\nu_{t_1, \cdots, t_k}\left(F_{\sigma^{-1}(1)} \times \cdots \times F_{\sigma^{-1}(k)}\right)
$$
for all permutations $\sigma$ on $\{1,2, \ldots, k\}$ and
$$
\nu_{t_1, \ldots, t_k}\left(F_1 \times \cdots \times F_k\right)=\nu_{t_1, \ldots, t_k, t_{k+1}, \ldots, t_{k+m}}\left(F_1 \times \cdots \times F_k \times \mathbf{R}^n \times \cdots \times \mathbf{R}^n\right)
$$
for all $m \in \mathbf{N}$, where (of course) the set on the right hand side has a total of $k+m$ factors.

Then there exists a probability space $(\Omega, \mathcal{F}, P)$ and a stochastic process $\left\{X_t\right\}$ on $\Omega, X_t: \Omega \rightarrow \mathbf{R}^n$, s.t.
$$
\nu_{t_1, \ldots, t_k}\left(F_1 \times \cdots \times F_k\right)=P\left[X_{t_1} \in F_1, \cdots, X_{t_k} \in F_k\right],
$$
for all $t_i \in T, k \in \mathbf{N}$ and all Borel sets $F_i$.

Kolmogorov的延拓定理解决了在给定各个坐标空间上的概率测度的情况下，如何构造一个概率测度来描述乘积空间的问题。
简单来说，Kolmogorov的延拓定理允许我们为定义在不同空间上的一组随机变量构造一个联合概率测度。
它提供了一种将概率测度从有限维空间延拓到无限维乘积空间的方法。

Kolmogorov的延拓定理要求满足以下条件：完全一致性条件（完全可测性）：给定一组可测空间和其上的概率测度，这些测度必须满足完全一致性条件。
即，对于任意的有限个可测集合，它们的乘积集合在每个坐标空间上的投影集合的概率测度必须与已知的概率测度一致。
Kohlrausch条件（无信息传递性）：该条件要求当从一个坐标空间的可测集合推断到另一个坐标空间时，概率测度是一致的。
换句话说，如果两个可测集合的投影集合在某个坐标空间上的概率已知，则这两个可测集合的乘积集合在其他坐标空间上的概率也应该是一致的。
满足这些条件，就可以使用Kolmogorov的延拓定理构造一个满足一致性要求的概率测度。


<!-- add a wiki url -->
[Wikipedia for Kolmogorov 延拓定理](https://en.wikipedia.org/wiki/Kolmogorov_extension_theorem)

Let $T$ denote some Interval (thought of as "time"), and let $n \in \mathbb{N}$. For each $k \in \mathbb{N}$ and finite sequence of distinct times $t_{1}, \dots, t_{k} \in T$, let $\nu_{t_{1} \dots t_{k}}$ be a probability measure on $(\mathbb{R}^{n})^{k}$. Suppose that these measures satisfy two consistency conditions:

1. for all permutations $\pi$ of $\{ 1, \dots, k \}$ and measurable sets $F_{i} \subseteq \mathbb{R}^{n}$: 
   $$\nu_{t_{\pi (1)} \dots t_{\pi (k)}} \left( F_{\pi (1)} \times \dots \times F_{ \pi(k)} \right) = \nu_{t_{1} \dots t_{k}} \left( F_{1} \times \dots \times F_{k} \right);$$测度改变顺序后不变
2. for all measurable sets $F_{i} \subseteq \mathbb{R}^{n}$,$m \in \mathbb{N}$ :
   $$\nu_{t_{1} \dots t_{k}} \left( F_{1} \times \dots \times F_{k} \right) = \nu_{t_{1} \dots t_{k}, t_{k + 1}, \dots , t_{k+m}} \left( F_{1} \times \dots \times F_{k} \times \underbrace{\mathbb{R}^{n} \times \dots \times \mathbb{R}^{n}}_{m}  \right).$$
   可扩展？

Then there exists a probability space $(\Omega, \mathcal{F}, \mathbb{P})$ and a stochastic process $X : T \times \Omega \to \mathbb{R}^{n}$ such that
:$\nu_{t_{1} \dots t_{k}} \left( F_{1} \times \dots \times F_{k} \right) = \mathbb{P} \left( X_{t_{1}} \in F_{1}, \dots, X_{t_{k}} \in F_{k} \right)$
for all $t_{i} \in T$, $k \in \mathbb{N}$ and measurable sets $F_{i} \subseteq \mathbb{R}^{n}$, i.e. $X$ has $\nu_{t_{1} \dots t_{k}}$ as its finite-dimensional distributions relative to times $t_{1} \dots t_{k}$.

In fact, it is always possible to take as the underlying probability space $\Omega = (\mathbb{R}^n)^T$ and to take for $X$ the canonical process $X\colon (t,Y) \mapsto Y_t$. Therefore, an alternative way of stating Kolmogorov's extension theorem is that, provided that the above consistency conditions hold, there exists a (unique) measure $\nu$ on $(\mathbb{R}^n)^T$ with marginals $\nu_{t_{1} \dots t_{k}}$ for any finite collection of times $t_{1} \dots t_{k}$. Kolmogorov's extension theorem applies when $T$ is uncountable, but the price to pay
for this level of generality is that the measure $\nu$ is only defined on the product σ-algebra of $(\mathbb{R}^n)^T$, which is not very rich.

# Brownian Motion

## Definition

A stochastic process $\left\{B_t\right\}_{t \geq 0}$ is called a Brownian motion if it can be constructed as follows:

Fix $x \in \mathbb{R}^n$ and define 

$$
p(t, x, y) = \frac{1}{(2 \pi t)^{n/2}} \exp \left(-\frac{\|x-y\|^2}{2t}\right)
$$

Then if $0 \geq t_1 < t_2 < \cdots < t_k$ define a measure $\mu_{t_1, \cdots, t_k}$ on $\mathbb{R}^{nk}$ by

$$
\mu_{t_1, \cdots, t_k} (F_1 \times \cdots \times F_k) = \int_{F_1 \times \cdots \times F_k} p(t_1, x_0, x_1) p(t_2 - t_1, x_1, x_2) \cdots p(t_k - t_{k-1}, x_{k-1}, x_k) dx_1 \cdots dx_k
$$

where $F_i \in \mathcal{B}(\mathbb{R}^n)$.

Then $\mu_{t_1, \cdots, t_k}$ is a probability measure on $\mathbb{R}^{nk}$ and the finite dimensional distributions of $\left\{B_t\right\}_{t \geq 0}$ are given by

$$
P^x(B_{t_1} \in F_1, \cdots, B_{t_k} \in F_k) = \mu_{t_1, \cdots, t_k} (F_1 \times \cdots \times F_k).
$$

We state some basic properties of Brownian motion:

1. $B_t$ is a Gaussian process.
2. $B_t$ has independent increments.
3. 