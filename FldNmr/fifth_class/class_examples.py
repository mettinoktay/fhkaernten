"""
FİFTH CLASS
Tue June 6 2023
ST - Seminarraum 11
"""

import numpy as np

def fun(x, y, z):
    '''
    some random fuction
    '''
    return np.array((x*y, y*np.sin(z), z**2))

def div_ana(x, y, z):
    '''
    Analytical divergence of fun()
    '''

    return y + np.sin(z) + 2*z

def div_num(f, x, y, z):
    '''
    compute divergence for vector field f using FD (finite differences)
    '''
    eps = 1e-5
    dx_fx = (f(x+eps,y,z)[0] - f(x,y,z)[0])/eps
    dy_fy = (f(x,y+eps,z)[1] - f(x,y,z)[1])/eps
    dz_fz = (f(x,y,z+eps)[2] - f(x,y,z)[2])/eps
    return dx_fx + dy_fy + dz_fz

def div_surf(f, x0, y0, z0):
    '''
    compute divergence of vector field f through surface integral
    '''
    a = 1e-6
    n = 100
    ts = np.linspace(-a, a, n)
    result  = (sum([f(x0+a, y0+y, z0+z)[0] for y in ts for z in ts])
    + sum([-f(x0-a, y0+y, z0+z)[0] for y in ts for z in ts])
    + sum([f(x0+x, y0+a, z0+z)[1] for x in ts for z in ts])
    + sum([-f(x0+x, y0-a, z0+z)[1] for x in ts for z in ts])
    + sum([f(x0+x, y0+y, z0+a)[2] for x in ts for y in ts])
    + sum([-f(x0+x, y0+y, z0-a)[2] for x in ts for y in ts]))
    # scale result with length of normal vector and volume
    return result/n**2/(2*a)

print(div_ana(1,2,3))
print(div_num(fun, 1, 2, 3))
print(div_surf(fun, 1, 2, 3))