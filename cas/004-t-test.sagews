# Student's t-test

# Use `%display latex` in jupyter
# Use `latex(x)` to get latex code

from sage.all import *

# Define Symbols

alpha = var('alpha')
beta = var('beta')
sigmax = var('sigma_x')
sigma2x = var(sigmax**2)
sigmae = var('sigma_epsilon')
sigma2e = var(sigmae**2)
mux = var('mu_x')

# Define Matrices

A = matrix(
    [
        [0, beta, 1],
        [0, 0, 0],
        [0, 0, 0]
    ]
)

S = matrix(
    [
        [0, 0, 0],
        [0, sigma2x, 0],
        [0, 0, sigma2e]
    ]
)

u = matrix(
    [
        [alpha],
        [mux],
        [0]
    ]
)

F = matrix(
    [
        [1, 0, 0],
        [0, 1, 0]
    ]
)

I = matrix(
    [
        [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1]
    ]
)

E = (I - A).inverse()

C = E * S * E.transpose()

M = F * C * F.transpose()

v = E * u

g = F * v
