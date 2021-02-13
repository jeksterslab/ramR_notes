# Student's t-test

# Use `%display latex` in jupyter

from sympy import *

# Define symbols

alpha, beta, sigma2x, sigma2e, mux = symbols(
    '\\alpha, \\beta, \\sigma_{x}^{2}, \\sigma_{\\varepsilon}^{2}, \\mu_{x}'
)

# Define Matrices

A = Matrix(
    [
        [0, beta, 1],
        [0, 0, 0],
        [0, 0, 0]
    ]
)

S = Matrix(
    [
        [0, 0, 0],
        [0, sigma2x, 0],
        [0, 0, sigma2e]
    ]
)

u = Matrix(
    [
        [alpha],
        [mux],
        [0]
    ]
)

F = Matrix(
    [
        [1, 0, 0],
        [0, 1, 0]
    ]
)

I = Matrix(
    [
        [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1]
    ]
)

E = (I - A) ** -1

C = E * S * E.T

M = F * C * F.T

v = E * u

g = F * v
