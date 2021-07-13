---
title: 5 Numerical Approximation of DAEs
linktitle: 5 Numerical Approximation of DAEs
toc: true
type: docs
date: "2021-05-05T00:00:00+01:00"
draft: false
math: true
menu:
  ovgu-daes:
    parent: Overview
    weight: 5

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4
---

# Numerical Approximation of ODEs {#50}

## Contents
 * Basic Ideas
 * One Step Methods
 * Consistency / Stability / Convergence
 * Runge-Kutta Methods

## Lecture 5-0

 * [Whiteboard Notes](../files/lecture-50.jpg)

{{< youtube FjRclqZLatw >}}

## Little Coding Exercise

Use your favorite programming language to 

1. Write an implementation of the `explicit Euler` scheme like

```python
def explicit_euler(f, x0, timegrid):
    # f -- the right hand side in `x' = f(t, x)`
    # x0 -- the initial value
    # timegrid -- somehow specify the stepsize and the endpoint

    # integrate the ODE with explicit Euler 

    return xN
```

2. Test it with the ODE
\begin{equation}
\begin{bmatrix}
\dot x \\\\ \dot y
\end{bmatrix}
=
\begin{bmatrix}
e^t y \\\\ -e^t x 
\end{bmatrix},
\quad
\begin{bmatrix}
x(0) \\\\ y(0)
\end{bmatrix}
=
\begin{bmatrix}
\sin (1) \\\\ \cos(1)
\end{bmatrix}
\end{equation}
on $[0, 3]$ with number of time steps 
$$N\in\{2^{8}, 2^{10}, 2^{14}, 2^{18}\}$$
by comparing the computed value of $x_N\approx x(3)$ to the actual value $x(3)=\sin (e^3)$.
3. Implement any Runge-Kutta method of higher-order[^1] and repeat this numerical study.

# Basics of Numerical Approximation of DAEs {#51}

## Contents

 * Notions and Notations of RKM
 * How to apply an RKM to $E\dot x = Ax+f(t)$
 * Explicit Euler fails, Implicit Euler works
 * RKM and System Transformations
 * Analysis via the Kronecker Normal Form

## Lecture 5-1

 * [Whiteboard Notes](../files/lecture-51.jpg)

{{< youtube wd97VkjHz9U >}}

# Consistency und Convergence for DAEs with Constant Coefficients {#52}

 * Consistency error -- will depend on the $\nu$-**index**
 * Convergence -- need extra stability condition
 * **Stiffly accurate** schemes -- exact for index-1 DAE parts

## Lecture 5-2

 * [Chapter 5.2 in the script](https://www.janheiland.de/script-daes/numerical-approximation-of-daes.html#runge-kutta-methods-for-linear-daes-with-constant-coefficients)
 * [Whiteboard Notes](../files/lecture-52.jpg)

{{< youtube hvk0XTOMfoE >}}

## Exercise 4

 * Python Script for the "$\kappa$"s: [`dae-butcher.py`](../files/dae-butcher.py)
 * Implicit Euler for time-varying DAEs: [python file](../files/4c2.py) [Jupyter Notebook](../files/4c2.ipynb)


# RKM for (Nonlinear) Semi-explicit DAEs of Index 1

 * [Whiteboard Notes](../files/lecture-53.jpg)

# RKM/BDF for (Nonlinear) Semi-explicit DAEs of Index 1/2

 * [Whiteboard Notes](../files/RKM-index-2-BDF.pdf)
 * [Link to the list of Theorems and Software](https://www.janheiland.de/script-daes/numerical-analysis-and-software-overview.html)

# Numerical Methods for Index Reduction

 1. For unstructured systems -- use the derivative array but compute the projections *on the fly*.
 2. For structured systems like multibody systems (like the [pendulum](https://www.janheiland.de/script-daes/introduction.html#the-pendulum) -- differentiate the relevant parts, add these equations to the system, and make the system square again by introducing new variables.

 * [Whiteboard Notes](../files/Numerical-Index-Reduction.pdf)

[^1]: feel free to use an explicit method of a not so high order.
