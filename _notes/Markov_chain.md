---
layout: note
permalink: /Markov_chain
title: Markov chain
---

- Is an instance of a [[Stochastic process]](./Stochastic_process.md)
- A **finite** Markov chain has a finite state space $$S=\{0,1,...,N\}$$.
- A **chain** is a realised sequence in a stochastic process, with probability given by $$P(x_0=i_0, x_1=i_1, ..., x_n=i_n)$$. By the [chain rule of probability](https://en.wikipedia.org/wiki/Chain_rule_(probability)), we condition the present on the past and get:  
$$
P(x_0=i_0, x_1=i_1, ..., x_n=i_n) = P(x_0=i_0)\cdot P(x_1=i_1|x_0=i_0)\cdot ... P(x_n=i_n|x_0=i+0, x_1=i_1, ...)
$$
- A chain is **Markov** if we make the assumption that the conditional probability of the next state depends only on the present state (and not how we goo the present state), i.e.
$$
\Pr (x_n=i_n|x_0=i_0, ..., x_{n-1}=i_{n-1})=\Pr (x_n=i_n|x_{n-1}=i_{n-1})
$$

- The **time-homogenous** assumption says that $$\Pr(x_n=j|x_{n-1}=i) = \Pr(x_1=j|x_0=i)$$

The **time-homogenous** assumption says that $$\Pr(x_n=j|x_{n-1}=i) = \Pr(x_1=j|x_0=i)$$
For the rest of these notes, we'll assue that our Markov chians are finite and time-homogenous. And now, for some notation:

- Let $$\phi_t$$ be the probability vector at time $$t$$, and $$\phi_t(i)=\Pr(x_t=i)$$

- Let $$p(i,j)=\Pr(x_1=j|x_0=i)$$, and $$p_n(i,j)=\Pr(x_n=j|x_0=i)$$

- Let $$P=[p(i,j)]$$ be the transition matrix



Then some basic facts:

-  $$p_n(i,j) = P^n_{ij}$$
- $$\phi_n = \phi_0 P^n$$. Note here that the vectors used are the transposes.



Examples:

- Random walk on line
- Random walk on graph
  - $$p(x,y)=\frac{1}{\deg(x)}$$
