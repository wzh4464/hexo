---
title: Response
---
# Response

## Comments from the reviewer

评审员指出，在回应2中，作者提到“实际上，无论是细胞表面还是凸包，在计算机上我们处理的都是它们的离散点。”评审员接着解释，有限点集的凸包是多面体（有界多面体），其边界是非光滑的。此外，手稿中写道：“凸包为进一步分析提供了两个重要信息：包含整个细胞表面的最小凸多面体...”，因此在这一点上作者和评审员似乎是一致的。

作者在回应中继续说：“换句话说，我们可以理解这些离散点是其真实连续光滑函数上的采样值。”评审员提出假设，将M和N（细胞表面和其凸包的真实边界）视为光滑流形。然后，他们将计算机上找到的离散点的凸包边界称为Q。这不是一个光滑流形。因此，即使可以将第3.1、3.3和3.4节的理论直接应用于M和N，但不能应用于Q。换句话说，Q只是N的多面体近似。任何近似都伴随着近似误差和其他在手稿中被忽视的问题。评审员建议在手稿中添加有关这个问题的评论。

此外，评审员指出，先前章节的理论和第3.6节中描述的实现之间存在明显差距。顺便说一下，第3.6节非常简短，且在算法1的子程序中隐藏了许多重要的实现细节。也许这就是为什么作者不得不在回应3和4中向评审员解释这些细节。但这些细节应该包含在手稿中！

## Response to the comments

谢谢评审员的建议！的确，在进行实际计算时候，细胞表面是离散点构成的三角网格，而凸包是由这些离散点构成的多面体，所以理论分析部分不能直接用于实际计算。我们决定通过remark 3.1来解释这个问题，因为虽然实际参与计算的细胞表面和凸包都不是光滑流形，但是他们却是真实的细胞表面流形和凸包流形的近似。再根据映射的连续性，我们可以得到实际计算中的细胞表面和凸包的近似误差。我们在remark 3.1中给出了这个误差的上界。

<!-- Remark 3.1: Suppose that the surface of a cell is a smooth manifold $M$ and its convex hull is a smooth manifold $N$. Let $P$ be the discrete surface of the cell and $Q$ be the discrete convex hull of the cell.  -->

<!-- Consider the map $f_\theta: M \rightarrow P$ and $g_{\theta}: N \rightarrow Q$ which map the smooth manifolds to their discrete approximations, where $\theta$ and $\theta'$ are the parameters of the discrete approximation. 

In this procedure, because of the property of discrete approximation, $\forall \epsilon > 0$, $\exists \theta > 0$, such that $\forall x_1 \in M$ and $x -->

Denote the cateogry of $3$-dimensional manifolds as $\mathcal{M}$, and the convex-hull morphism $f$ is defined as
$$
\begin{aligned}
f: \mathcal{M} &\rightarrow \mathcal{M} \\
M &\mapsto N
\end{aligned}
$$ where $N$ is the convex hull of $M$. Then $f$ is a smooth morphism/diffeomorphism.

Consider the discrete approximation of any $M \in \mathcal{M}$, denoted as $P$. Regardless how $d$ is concretely define, as far as $d$ is a distance on $\mathcal{M}$, then given a manifold $M$, $\forall \epsilon > 0$, there exists a $g_\theta$ such that $d(M, g_\theta(M)) < \epsilon$, where $g_\theta$ is the discrete approximation and $\theta$ is the parameter of the discrete approximation.

Now suppose that the surface of a cell is a smooth manifold $M$ and its convex hull is a smooth manifold $N$. Let $P$ be the discrete surface of the cell and $Q$ be the discrete convex hull of the cell.

$\forall \epsilon_1 > 0$, $\exists \theta > 0$, such that $d(M, P) < \epsilon_1$, where $P = g_\theta(M)$ and $g_\theta$ is the discrete approximation of $M$.

And denote the discrete approximation of $N$ as $Q' = g_{\theta}(N)$, then also for the given $\epsilon_2 > 0$, there exists an $\delta > 0$, such that $d(N, Q') < \epsilon_2$. As far as $\epsilon_1 < \delta$, then $d(M, P) < \epsilon_1 < \delta$, and $d(N, Q') < \epsilon_2$. Then we have $d(P, Q') < \epsilon_2$.

And for the other way, since $Q = f(P)$, then $d(Q, Q') < \epsilon_3$

$$
\begin{aligned}
