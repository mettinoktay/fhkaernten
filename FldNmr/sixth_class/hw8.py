"""
Systems Desing Master's
Fleld Numerics Homework 8



Metin Oktay Yilmaz
2210528013
"""

import numpy as np
from scipy.special import ellipk, ellipe
import matplotlib.pyplot as plt


def A(x, y, z):
    r0 = 1
    r = np.sqrt(x**2 + y**2 * z**2)
    k2 = 4*r/(z**2 + (r + r0)**2)
    k = np.sqrt(k2)
    
    pot = ((2-k2)*ellipk(k2) - 2*ellipe(k2))*r0/(np.pi*k*np.sqrt(r))

    return np.array([pot, 0, 0])


def curl_num(potential, x, y, z):
    eps = 1e-6
    
    dxf = (potential(x+eps, y, z) - potential(x-eps, y, z))/(2*eps)
    dyf = (potential(x, y+eps, z) - potential(x, y-eps, z))/(2*eps)
    dzf = (potential(x, y, z+eps) - potential(x, y, z-eps))/(2*eps)
    
    return np.array((dyf[2]-dzf[1], dzf[0]-dxf[2], dxf[1]-dyf[0]))

ts = np.linspace(-2, 2, 12)
pos = np.array([[x, y, z] for x in ts for y in ts for z in ts]).T
pot = np.array([A(p[0],  p[1], p[2]) for p in pos.T]).T
curl = np.array([curl_num(A, x, y, z) for x in ts for y in ts for z in ts]).T

fig = plt.figure()
ax = fig.add_subplot(121, projection='3d')

# plot of vector potential
ax.quiver(pos[0], pos[1], pos[2], pot[0], pot[1], pot[2], color='r')

# plot of magnetic field
ax = fig.add_subplot(122, projection='3d')
ax.quiver(pos[0], pos[1], pos[2], curl[0], curl[1], curl[2], color='b')

ax.plot([0, 0], [0, 0], [-6, 6], lw=1, color='g')

plt.show()
