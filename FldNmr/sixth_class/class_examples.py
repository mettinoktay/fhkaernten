"""
SIXTH CLASS
Tue June 15 2023
ST - Seminarraum 11
"""

import numpy as np

def f1(x):
    return x**2


def f2(x):
    return x**3


def f3(x, y):
    return x**2 + y**2


def f4(x, y, z):
    return x**2 + y**2 + z**3


def integration_1d(f, a, b, N):
    ts = np.linspace(a, b, N)
    delta_x = (b - a) / N

    # non vectorized
    result = 0.0

    for x in ts:
        result += f(x)
    
    # vectorized
    result = np.sum(f(ts))

    return result * delta_x


def integration_2d(f, a, b, c, d, N1, N2):
    xs = np.linspace(a, b, N1)
    delta_x = (b - a) / N1

    ys = np.linspace(c, d, N2)
    delta_y = (d - c) / N2

    # non vectorized
    result = 0.0
    for x in xs:
        for y in ys:
            result += f(x, y)

    return result * delta_x * delta_y


def integration_3d(fn, a, b, c, d, e, f, N1, N2, N3):
    xs = np.linspace(a, b, N1)
    delta_x = (b - a) / N1

    ys = np.linspace(c, d, N2)
    delta_y = (d - c) / N2

    zs = np.linspace(e, f, N3)
    delta_z = (f - e) / N3

    # non vectorized
    result = 0.0
    for x in xs:
        for y in ys:
            for z in zs:
                result += fn(x, y, z)

    return result * delta_x * delta_y * delta_z

