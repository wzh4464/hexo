---
title: Construction of Ito Intergration
---
# Construction of Ito Intergration

## 1. Idea

Just like the construction of Lebesgue integral, we first define the integral for *elementary* (simple functions), then extend it to the class of where the integral is well-defined.

### Elementary Functions

For a given partition $P = \{t_0, t_1, \cdots, t_n\}$ of $[0, T]$, we define the elementary function $\phi$ as

$$
\phi = \sum_{i=0}^{n-1} e_i(\omega) \chi_{[t_{i}, t_{i+1})}(\omega)
$$

where $e_i$ is a $\mathcal{F}_{t_{i}}$-measurable random variable.

## 2. Ito Isometry

For $\phi$ is an elementary function, we define the Ito integral of $\phi$ as

$$
\int_{S}^{T} \phi(t, \omega) \mathrm{d}B_t = \sum_{i=0}^{n-1} e_i(\omega) (B_{t_{i+1}} - B_{t_{i}})
$$

The Ito isometry states that

$$
\mathbb{E} \left[ \left( \int_{S}^{T} \phi(t, \omega) \mathrm{d}B_t \right)^2 \right] = \mathbb{E} \left[ \int_{S}^{T} \phi^2(t, \omega) \mathrm{d}t \right]
$$

## 3. Ito Integral

### $\mathcal{V}$

Denote the class we want to define the integral as $\mathcal{V}$. Let $\mathcal{V} = \mathcal{V}(S, T)$ be the class of all functions $f(t, \omega): [0, \infty) \times \Omega \rightarrow \mathbb{R}$ such that

1. $f(t, \omega)$ is $\mathcal{B} \times \mathcal{F}$-measurable, where $\mathcal{B}$ is the Borel $\sigma$-algebra on $[0, \infty)$.

2. $f(t, \omega): \omega \mapsto f(t, \omega)$ is $\mathcal{F}_t$-measurable for each $t \geq 0$.

3. $\mathbb{E} \left[ \int_{0}^{\infty} f^2(t, \omega) \mathrm{d}t \right] < \infty$.

### Step 1

<span style="color:red">Handle the **bounded** and **continuous** case.</span>

*Bounded and continuous functions in $\mathcal{V}$ can be approximated by elementary functions.*

**Lemma 1.** If $g \in \mathcal{V}$ is bounded and continuous, then there exists a sequence of elementary functions $\phi_n \in \mathcal{V}$ such that

$$
\mathbb{E} \left[ \int_{S}^{T} (g(t, \omega) - \phi_n(t, \omega))^2 \mathrm{d}t \right] \rightarrow 0
$$

as $n \rightarrow \infty$.

Here bounded convergence theorem is used.

> **Theorem 1.** (Bounded Convergence Theorem) Let $f_n$ be a sequence of bounded measurable functions that are supported on a set $E$ of finite measure. If $f_n \rightarrow f$ pointwise a.e. on $E$, then
>
> $$
> \lim_{n \rightarrow \infty} \int_{E} |f_n - f| \mathrm{d}\mu = 0
> $$
> Consequently,
> $$
> \lim_{n \rightarrow \infty} \int_{E} f_n \mathrm{d}\mu = \int_{E} f d\mu
> $$

<details>
<summary>Proof of Lemma 1.</summary>

Define $\phi_n$ as

$$
\phi_n(t, \omega) = \sum_{i=0}^{n-1} g(t_i, \omega) \chi_{[t_{i}, t_{i+1})}(t)
$$
thus $\phi_n$ is an elementary function.

$$
\int_S^T (g-\phi_n)^2 \mathrm{d}t \rightarrow 0， \text{as } n \rightarrow \infty \tag{1}
$$
since $g$ is continuous and $[S, T]$ is compact.
<details>
<summary>Proof of (1)</summary>

Given $\omega$, $\forall \epsilon > 0$, $\exists \delta > 0$ such that
$\forall t, t' \in [S, T]$ with $|t - t'| < \delta$, we have $|g(t, \omega) - g(t', \omega)| < \sqrt{\frac{\epsilon}{T-S}}$. Choose $n$ such that $\frac{1}{n} < \frac{\delta}{2}$, then
$$
|g(t, \omega) - \phi_n(t, \omega)|^2 = |g(t, \omega) - g(t_i, \omega)|^2 < \frac{\epsilon}{T-S}
$$
since $|t - t_i| < \frac{2}{n} < \delta$.

Thus we have
$$
\int_S^T (g-\phi_n)^2 \mathrm{d}t < \frac{\epsilon}{T-S} \int_S^T \mathrm{d}t = \epsilon
$$

</details>

Denote $I_n(\omega) = \int_S^T (g-\phi_n)^2 \mathrm{d}t$, Eq.(1) suggests that $I_n(\omega) \rightarrow 0$ pointwisely respect to $\omega$.

Here we just need to verify that $I_n(\omega)$ is bounded and measurable, then we can apply the bounded convergence theorem.

- Boundedness: $I_n(\omega) \leq \int_S^T g^2 \mathrm{d}t < M^2 (T-S)$, where $M$ is the bound of $g$.
- Measurability: $I_n(\omega)$ is measurable since $g$ is measurable according to Fubini's theorem.

</details>

### Step 2

<span style="color:red">Handle the **bounded** (but not necessarily continuous) case.</span>

Bounded functions in $\mathcal{V}$ can be approximated by bounded and continuous functions.

**Lemma 2.** If $h \in \mathcal{V}$ is bounded, then $\exists$ bounded and continuous functions $g_n$ such that 
$$
\mathbb{E} \left[ \int_{S}^{T} (h - g_n)^2 \mathrm{d}t \right] \rightarrow 0, \text{as } n \rightarrow \infty
$$

<details>
<summary>Proof of Lemma 2.</summary>

Suppose $h$ is bounded by $M$, first $\phi_n : \mathbb{R} \rightarrow \mathbb{R}$ is constructed as follows:

1. $\phi_n(x) =0 $ for $x \le -\cfrac{1}{n}$ and $x \ge 0$.
2. $\int_{-\infty}^{\infty} \phi_n(x) \mathrm{d}x = 1$.

Then define $g_n$ as

$$
g_n(t, \omega) = \int_{-\infty}^{\infty} \phi_n(t-s) h(s, \omega) \mathrm{d}s
$$

Then $g_n$ is bounded and continuous for each $\omega$. And $g_n$ is $\mathcal{F}_t$-measurable for each $t$ since $h$ is $\mathcal{F}_t$-measurable. Also $\phi_n$ and $g_n$ are seleted for 
$$
\int_{S}^{T} (h - g_n)^2 \mathrm{d}t \rightarrow 0, \text{as } n \rightarrow \infty
$$

- $\phi_n$: 
<img src="ito_phi.png" width="300">
- $h$:
<img src="ito_h.png" width="300">
- $g_n$ ($n=5$):
<img src="ito_g.png" width="300">

</details>

### Step 3

<span style="color:red">Handle the **general** case.</span>

Every function in $\mathcal{V}$ can be approximated by bounded functions.

**Lemma 3.** If $f \in \mathcal{V}$, then there exists a sequence of bounded functions $h_n \in \mathcal{V}$ such that

$$
\mathbb{E} \left[ \int_{S}^{T} (f - h_n)^2 \mathrm{d}t \right] \rightarrow 0, \text{as } n \rightarrow \infty
$$

<details>
<summary>Proof of Lemma 3.</summary>

For each $n$, let $h_n$ satisfy
$$
h_n(t, \omega) = \begin{cases}
f(t, \omega), & |f(t, \omega)| \le n \\
n, & f(t, \omega) > n \\
-n, & f(t, \omega) < -n
\end{cases}
$$

By **Dominated Convergence Theorem**, we have the desired result.

</details>

### Definition of Ito Integral

**Definition 1.** If $f \in \mathcal{V}$, one can find  a sequence of elementary functions $\phi_n \in \mathcal{V}$ such that

$$
\mathbb{E} \left[ \int_{S}^{T} (f - \phi_n)^2 \mathrm{d}t \right] \rightarrow 0, \text{as } n \rightarrow \infty
$$

Then we define the Ito integral of $f$ as

$$
\int_{S}^{T} f(t, \omega) \mathrm{d}B_t = \lim_{n \rightarrow \infty} \int_{S}^{T} \phi_n(t, \omega) \mathrm{d}B_t
$$

The limit exists in $L^2(\Omega)$ since $L^2(\Omega)$ is complete and 

Denote $J_n(\omega) = \int_{S}^{T} \phi_n(t, \omega) \mathrm{d}B_t$, then

$$
J_{n+k}(\omega) - J_n(\omega) = \int_{S}^{T} (\phi_{n+k} - \phi_n) \mathrm{d}B_t
$$