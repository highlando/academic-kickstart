---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Optimal Control Formulas from Wikipedia by Pontryagin"
subtitle: "Exemplified by the Single Pendulum"
summary: ""
authors: ["Jan Heiland"]
tags: []
categories: []
date: 2019-08-06T17:34:51+02:00
lastmod: 2019-08-06T17:34:51+02:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

math: true

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

# Introduction

While it seems common knowledge how to formulate *necessary optimality* conditions backed by the famous *Pontryagin's Maximum Principle*, the direct derivation from the **very general** original formulations is not obvious. Sometimes, authors like me^[my diss] provide some plausibility like *obviously this term has to vanish*, refer to other sources that miss the derivation too, or attach the complete book by Pontryagin to a specific formula^[Ober-Bloebaum].


# The Model

Idea: The pendulum is subjected to a potential force that can be adjusted. That is, instead of the gravity 
$$G:= 
\begin{bmatrix}
0\\ -9.81
\end{bmatrix},
$$
we consider a force field 
$$G:= 
\begin{bmatrix}
g_1\\  g_2
\end{bmatrix},
$$
with scalars $g_1$, $g_2$ that can act as a control. 

With mass $m$, length $L$, and angle $\theta$ (see the picture), we define the momentum as 

$$
p = mL^2\dot \theta.
$$

This gives the Hamiltonian
\begin{align*}
H(\theta, p) &= \frac{p^2}{2mL^2} + m 
\begin{bmatrix}
g_1 &g_2
\end{bmatrix}
\begin{bmatrix}
L \sin \theta \\ -L \cos \theta
\end{bmatrix}, \\
&= \frac{p^2}{2mL^2} + mg_1 L \sin \theta - mg_2 \cos \theta ,
\end{align*}

and the equations of motion as 

\begin{align*}
	\dot \theta &= \frac{p}{mL^2},\\
	\dot p &= -mg_1L\cos \theta - mg_2L\sin \theta.
\end{align*}

![pendulum, taken from [scholarpedia](http://www.scholarpedia.org/article/File:Pendulum.png)](Pendulum.png)

# Control Setups

With fixed endpoint:

> Fix a time $t_1$, start with $\theta(t_0)=\pi$ and $p(t_0)=0$ (i.e. pendulum standing up-side-down) and set $\theta(t_1)=0$ and $p(t_1)=0$ (i.e. pendulum hanging down) as target with a minimal control effort $$\mathcal J:= \frac{1}{2}\int_{t_0}^1 g_1^2 + g_2^2 \;dt \to \min$$

Or as an optimization problem:

> Fix a time $t_1$, start with $\theta(t_0)=\pi$ and $p(t_0)=0$ (i.e. pendulum standing up-side-down) and find a control that targets $\theta(t_1)=0$ and $p(t_1)=0$ (i.e. pendulum hanging down) while the control effort is minimal too: 
$$\frac{1}{2}(\theta(t_1)^2 + p(t_1)^2) +\frac{1}{2}\int_{t_0}^1 g_1^2 + g_2^2 \;dt \to \min$$

## Plain Maximum Principle 

Classically, as treated in [Pontryagin, Ch. I.2] and [Bloch, Ch. 7.2], one seeks the minimum over all $u=(g_1, g_2)$ that *a-priori* ensure that $\theta(t_1)=0$ and $p(t_1)=0$. 

Not sure if there are equations for this in closed form (unless the controls are parametrized properly).

## Maximum Principle with Variable Endpoints

One can (partially) abandon the end conditions, see [Pontryagin, Ch. I.7]. Still, I see only difficulties in finding a closed-form expression for the optimization problem or trivial useless solutions (if the end conditions are omitted altogether).

## The Wikipedia Case

Commonly used and illustrated on wikipedia^[[wikipedia:Pontryagin's maximum principle](https://en.wikipedia.org/wiki/Pontryagin%27s_maximum_principle#Formal_statement_of_necessary_conditions_for_minimization_problem)]
-- the form that leaves the controls free but penalizes the endpoint. Here, I'm missing the understanding of the control Hamiltonian.

## Way to go

Derive the *Wikipedia* case from the *Maximum Principle with Variable Endpoints* using transformations with the Mayer term.

1. Transform^[see [Enc. of Math.: Bolza problem](https://www.encyclopediaofmath.org/index.php/Bolza_problem)] from *Mayer form* to *Lagrange form*.

2. Put the resulting system into the form of *Pontryagin*.

3. Apply the maximum principle with completely free endpoints.

Then the optimal control problem

$$\frac{1}{2}(\theta(t_1)^2 + p(t_1)^2) +\frac{1}{2}\int_{t_0}^1 g_1^2 + g_2^2 \;dt \to \min$$

subject to
\begin{align*}
	\dot \theta &= \frac{p}{mL^2},\\
	\dot p &= -mg_1L\cos \theta - mg_2L\sin \theta.
\end{align*}
with boundary conditions
$$
\theta(t_0)=\pi, \quad p(t_0)=0
$$
becomes in

### 1. Lagrange form

$$
\int_{t_0}^{t_1} \tilde x + \frac{1}{2}(g_1^2+g_2^2) \;dt \to \min
$$
subject to
\begin{align*}
	\dot {\tilde x} &= 0, \\
	\dot \theta &= \frac{p}{mL^2},\\
	\dot p &= -mg_1L\cos \theta - mg_2L\sin \theta.
\end{align*}
with boundary conditions
$$
\tilde x(t_1) = \frac{1}{2(t_1-t_0)}(\theta(t_1)^2+p(t_1)^2), \quad \theta(t_0)=\pi, \quad p(t_0)=0
$$

which reads in

### 2. Pontryagin's terms

$$
x^0(t_1) \to \min
$$
subject to
\begin{subequations}
\begin{align}
	\dot x^0 &= \tilde x + \frac{1}{2}(g_1^2+g_2^2), \\
	\dot {\tilde x} &= 0, \\
	\dot \theta &= \frac{p}{mL^2},\\
	\dot p &= -mg_1L\cos \theta - mg_2L\sin \theta.
\end{align}
\end{subequations}
with boundary conditions
\begin{equation}
x^0(t_0)=0, \quad \tilde x(t_1) = \frac{1}{2(t_1-t_0)}(\theta(t_1)^2+p(t_1)^2), \quad \theta(t_0)=\pi, \quad p(t_0)=0
\end{equation}

The corresponding adjoint system for the $\psi$ reads^[Pontryagin et al., Theorem 1]
\begin{subequations}
\begin{align}
	\dot \psi_0 &= 0, \\
	\dot \psi_1 &= -\psi_0, \\
	\dot \psi_2 &= -(mg_1L\sin\theta - mg_2L\cos\theta) \psi_3, \\
	\dot \psi_4 &= -\frac{1}{mL^2}\psi_2.
\end{align}
	\end{subequations}

This $\psi$ defines the control Hamiltonian as

$$
\bigl(\psi, f(x;G) \bigl ) =
\bigl(\psi, 
	\begin{bmatrix}
	 \tilde x + \frac{1}{2}(g_1^2+g_2^2) \\
	 0 \\
	 \frac{p}{mL^2}\\
	 -mg_1L\cos \theta - mg_2L\sin \theta
		 \end{bmatrix}
	\bigl )
$$

### 3. Pontryagin with variable endpoints

If we let the state $(\tilde x, \theta, p)$ at $t_1$ take on an arbitrary value then it will belong to the hypersurface 

$$
S_1 = \{(\frac{1}{2(t_1-t_0)}(\theta^2 + p^2), \theta, p)\} \subset \mathbb R^3
$$

Then the *transversality condition*^[see Pontryagin et al., Ch. I.7] that $\psi(t_1)$ has to be *orthogonal* to the tangent plane to $S_1$ at $(\tilde x(t_1), \theta(t_1), p(t_1))$ gives the following boundary conditions for $\psi$:

\begin{equation}
\frac{1}{t_1-t_0}p(t_1)\psi_1(t_1) - \psi_3(t_1) = 0, \quad \frac{1}{t_1-t_0}\theta(t_1)\psi_1(t_1) - \psi_2(t_1) = 0.
\end{equation}

Note that these particular end conditions were derived from the particular basis 
$$
\bigl \{
	\begin{bmatrix} 
		\frac{1}{t_1-t_0}p \\ 0 \\ 1
	\end{bmatrix}, 
	\begin{bmatrix} 
		\frac{1}{t_1-t_0}\theta \\ 1 \\ 0
	\end{bmatrix}
\bigr\}
$$
of the tangent space and note that any other basis can be taken, or equivalently, any linear combination of the boundary conditions are feasible.
	
