"""
Systems Desing Master's
Fleld Numerics Homework 6

Use all three methods to show that divergence of field y, -x, 0 is zero at origin and 10 random points.

Metin Oktay Yilmaz
2210528013
"""

import numpy as np


def field(x, y, z):
    r = np.sqrt(x**2 + y**2 + z**2)
    return np.array((y, -x, 0))/r


def div_ana(x, y, z):
    """
    div v = dv_x/dx + dv_y/dy + dv_z/dz
    
    For the field (y, -x, 0) the divergance should be as follows with regard to this definition:
    
    dv_x/dx  dy/dx = 0
    dv_y/dy -dx/dy = 0
    dv_z/dz  d0/dz = 0
    
    div v = 0
    """
    
    return 0


def div_num(field, x, y, z):
    eps = 1e-6
    dx_fx = (field(x+eps, y, z)[0] - field(x, y, z)[0])/eps
    dy_fy = (field(x, y+eps, z)[0] - field(x, y, z)[0])/eps
    dz_fz = (field(x, y, z+eps)[0] - field(x, y, z)[0])/eps
    return dx_fx + dy_fy + dz_fz


def div_surf(field, x0, y0, z0):
    eps = 1e-6
    n = 100
    ts = np.linspace(-eps, eps, n)
    result = sum([ field(x0+eps, y0+y, z0+z)[0] for y in ts for z in ts])
    + sum([-field(x0-eps, y0+y, z0+z)[0] for y in ts for z in ts])
    + sum([ field(x0+x, y0+eps, z0+z)[1] for x in ts for z in ts])
    + sum([-field(x0+x, y0-eps, z0+z)[1] for x in ts for z in ts])
    + sum([ field(x0+x, y0+y, z0+eps)[2] for x in ts for y in ts])
    + sum([-field(x0+x, y0+y, z0-eps)[0] for x in ts for y in ts])
    
    return result/n**2/(2*eps)


print("\nDivergence at origin:")
print(f"Analytical calculation: {div_ana(0, 0, 0)}")
print(f"FD calculation: {div_num(field, 0, 0, 0)}")
print(f"Surface integral: {div_surf(field, 0, 0, 0)}")

# Calculating divergenec at 10 random points

for _ in range(0, 10):
    x = np.random.rand()
    y = np.random.rand()
    z = np.random.rand()
    
    print(f"\nDivergence at point: x: {x}, y: {y}, z: {z}")
    print(f"Analytical calculation: {div_ana(x, y, z)}")
    print(f"FD calculation: {div_num(field, x, y, z)}")
    print(f"Surface integral: {div_surf(field, x, y, z)}")

print("\n")
