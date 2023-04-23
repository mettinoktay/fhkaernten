#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Apr 18 18:12:47 2023

@author: metti
"""

import numpy as np
import matplotlib.pyplot as plt

# fig = plt.figure()
# ax = fig.add_subplot(projection='3d')
nu = 4*np.pi*10**-7
angle = []

# X = np.arange(-1, 1.01, 0.2)
# Y = np.arange(-1, 1.01, 0.2)
# Z = np.arange(-1, 1.01, 0.2)

X, Y, Z = np.meshgrid(
    np.arange(-1, 1.01, 0.2),
    np.arange(-1, 1.01, 0.2),
    np.arange(-1, 1.01, 0.2)
    )


def E_cable(x, y, z):
    '''
    Returns the direction of an electric field of a thin wire
    '''

    # r_vec = np.array((x, y)) # vector origin
    # r = nu*I / (2*np.pi*np.sqrt(x**2 + y**2)) # vector length

    for pointZ in z:
        for pointY in y:
            for pointX in x:
                angle.append(np.arctan2(pointY, pointX) + np.pi/2)

    # r = nu*I / (2*np.pi*np.sqrt(x**2 + y**2)) # vector length

    return np.array(angle)


# U, V, W = E_pointcharge(1, X, Y, Z)
U = E_cable(X, Y, Z)
print(U)


# ax.quiver(X, Y, Z, U, 0, 0, length=0.12, normalize=True)
# plt.plot([0], [0], marker='o', color='b')
# plt.show()
