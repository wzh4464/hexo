---
title: SO(3)
---
# SO(3)

## Quaternion

### Quaternion basics

Denote the space of quaternions by $\mathbb{H}$, which is a 4-dimensional vector space over $\mathbb{R}$ with basis $\{\mathbf{1}, \mathbf{i}, \mathbf{j}, \mathbf{k}\}$.

$$
q = \left(\begin{matrix} a + id &  -b-ic \\ b-ic & a-id  \end{matrix}\right) = a \mathbf{1} + b \mathbf{i} + c \mathbf{j} + d \mathbf{k}
$$

$$
\det q = a^2 + b^2 + c^2 + d^2 = |q|^2
$$

$$
\bar{q} = a \mathbf{1} - b \mathbf{i} - c \mathbf{j} - d \mathbf{k}
|q|^2 = q \bar{q} = \bar{q} q
$$

## Quaternion and rotation

### Pure quaternion

$$
p = b \mathbf{i} + c \mathbf{j} + d \mathbf{k} \in \mathbb{R}^3
$$

$$
uv = -u \cdot v + u \times v
$$

### Unit quaternion

$$
q = \cos \frac{\theta}{2} + \sin \frac{\theta}{2} \mathbf{u} \in \mathbb{S}^3
$$

<details>
<summary>whose norm is 1</summary>

$$
\begin{align}
q \bar{q} &= (\cos \frac{\theta}{2} + \sin \frac{\theta}{2} \mathbf{u})(\cos \frac{\theta}{2} - \sin \frac{\theta}{2} \mathbf{u}) \\
&= \cos^2 \frac{\theta}{2} - \sin^2 \frac{\theta}{2} \mathbf{u}^2 \\
&= \cos^2 \frac{\theta}{2} + \sin^2 \frac{\theta}{2} \mathbf{u} \cdot \mathbf{u} \\
&= 1
\end{align}
$$

</details>

where $\mathbf{u}$ is a unit vector.

$$
\begin{align}
q^{-1} &= \bar{q}/|q|^2 \\
&= \cos \frac{\theta}{2} - \sin \frac{\theta}{2} \mathbf{u} \\
&= \bar{q}
\end{align}
$$

### Rotation by conjugation

$$
\begin{align*}
t: \mathbb{R}^3 &\to \mathbb{R}^3 \\
u &\mapsto v=t^{-1} u t
\end{align*}
$$

where $t \in \mathbb{S}^3 \subset \mathbb{H}$.

Thus a coresponding is induced

$$
\begin{align*}
T: \mathbb{S}^3 &\to \mathrm{SO}(3) \\
t &\mapsto T_t(\cdot ) = t^{-1} (\cdot) t
\end{align*}
$$

where $T(t)$ is a rotation matrix.

Notice that $T_t = T_{-t}$, and

$$
\begin{align*}
T: \mathbb{S}^3 \ \mathrm{mod} \ \{\pm 1\} &\to \mathrm{SO}(3) \\
\{\pm t\} &\mapsto T_t(\cdot ) = t^{-1} (\cdot) t
\end{align*}
$$

is a isomorphism.

In short,

$$
\mathrm{SO}(3) \cong \mathbb{S}^3 \ \mathrm{mod} \ \{\pm 1\} \cong \mathbb{R}\mathbb{P}^3
$$

### SO(3) is simple

Conjugation can move any vector to any other vector.

### Maximal torus

$ \mathbb{T}^1 $ is a maximal torus of $ \mathrm{SO}(3) $.

Since torus has deep connection with diagonalization, maximal torus is also seen as a invariant subspace.
