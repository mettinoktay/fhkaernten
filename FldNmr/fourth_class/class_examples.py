"""
FOURTH CLASS
Tue May 16 2023
ST - Seminarraum 11

"""

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import colormaps as cm

# fig1 = plt.figure(figsize=(9, 5))

#######################
# FIRST PART OF CLASS #
#######################

# def field(Ibar, pos):
#     '''
#     This is the magnetic field of the wire
#     '''
    
#     x, y, z = pos
#     r = np.sqrt(x**2 + y**2)
#     vec = np.array((-y, x, 0))
#     return Ibar*vec/r**2

# def path1(t):
#     '''
#     First closed path around Z-axis
#     '''

#     return np.array([np.sin(t), np.cos(t), 0])

# def path2(t):
#     '''
#     Closed path 2 not around Z-axis
#     '''

#     return np.array([10 + np.sin(t), np.cos(t), 0])

# def dpath(t):
#     '''
#     derivative of both paths
#     '''

#     return np.array([np.cos(t), -np.sin(t), 0])

# Ibar = 1
# N = 10000 # step size
# ts = np.linspace(0, 2*np.pi, N)
# dt = 2*np.pi/N

# result1, result2 = 0, 0

# for t in ts:
#     # position r
#     pos1 = path1(t)
#     pos2 = path2(t)

#     # field at this position
#     field_val1 = field(Ibar, pos1)
#     field_val2 = field(Ibar, pos2)

#     # derivate r'
#     v = dpath(t)

#     # add field(r)*r*dt
#     result1 += np.sum(field_val1*v)*dt
#     result2 += np.sum(field_val2*v)*dt

# print(f"Result 1 is {result1}")
# print(f"Result 2 is {result2}")

########################
# SECOND PART OF CLASS #
########################

# def f(x):
#     return np.sin(10*x)*np.exp(-x**2)

# def df(x):
#     return (10*np.cos(10*x) + np.sin(10*x)*(-2*x))*np.exp(-x**2)

# xs = np.linspace(-3, 3, 1000)
# plt.plot(xs, f(xs), color='k', label='f')
# plt.plot(xs, df(xs), color='r', label='df')

# for x in np.linspace(-3, 3, 10):
#     eps = 0.0001
#     plt.plot([x], [(f(x+eps) - f(x))/eps], marker='o', color='b')

# plt.gca().legend()
# plt.gca().grid()
# plt.show()

########################
# THIRD PART OF CLASS #
########################


def fun(x, y):
    return np.sin(x)*np.cos(y)*np.exp(-x**2 - y**2)

def grad_fun(x0, y0):
    eps = 1e-6
    gradx = (fun(x0+eps, y0) - fun(x0, y0))/eps
    grady = (fun(x0, y0+eps) - fun(x0, y0))/eps
    return np.array((gradx, grady))

xs = ys = np.arange(-2.0, 2.0, 0.05)
X, Y = np.meshgrid(xs, ys)
plt.contourf(X, Y, fun(X, Y), 100, cmap='coolwarm')
plt.contour(X, Y, fun(X, Y), 15, color='k', linewidth=0.5)

xs = ys = np.linspace(-1.5, 1.5, 15)
X, Y = np.meshgrid(xs, ys)
grad = np.array([grad_fun(x, y) for y in ys for x in xs]).T
g_len = np.linalg.norm(grad, axis=0)
g_norm = grad/g_len
cmap = cm.get_cmap('seismic')
plt.quiver(np.ravel(X), np.ravel(Y), g_norm[0], g_norm[1], color=cmap(g_len))
plt.show()

here are some changes

#################
#  END OF CLASS #
#################
