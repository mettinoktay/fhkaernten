"""
Systems Desing Master's
Fleld Numerics Homework 7_1

Use all three methods to show that curl of point charge is zero at origin and any 10 random points.

Metin Oktay Yilmaz
2210528013
"""

import numpy as np


def charge(x, y, z):
    """
    Point charge
    """
    
    r2 = x**2 + y**2 + z**2
    return np.array((x, y, z))/(r2**1.5)


def curl_ana(x, y, z):
    """
    Analytical curl of a point charge
    """
    
    """
    This function took the biggest effort. 
    
    How did I figure out which indice to choose and which axis to consider?
    
    dy_vz = (charge(x, y, z+eps)[1] - charge(x, y, z-eps)[1])/(2*eps) means:
    
    change axis Z infinitesimally small -> charge(x, y, z+eps), charge(x, y, z-eps)
    then
    check the change in axis Y -> (charge(x, y, z+eps)[1] - charge(x, y, z-eps)[1])/(2*eps)
                                                       ^----indicates Y axis----^ 
                                                       
    And same procedure goes for the rest of the calculations.
    
    """

    eps = 1e-6

    dy_vz = (charge(x, y, z+eps)[1] - charge(x, y, z-eps)[1])/(2*eps)
    dz_vy = (charge(x, y+eps, z)[2] - charge(x, y-eps, z)[2])/(2*eps)
    
    dz_vx = (charge(x+eps, y, z)[2] - charge(x-eps, y, z)[2])/(2*eps)
    dx_vz = (charge(x, y, z+eps)[0] - charge(x, y, z-eps)[0])/(2*eps)
    
    dx_vy = (charge(x, y+eps, z)[0] - charge(x, y-eps, z)[0])/(2*eps)
    dy_vx = (charge(x+eps, y, z)[1] - charge(x-eps, y, z)[1])/(2*eps)
    
    return np.array((dy_vz - dz_vy, dz_vx - dx_vz, dx_vy - dy_vx))


def curl_num(charge, x, y, z):
    eps = 1e-6
    
    dxf = (charge(x+eps, y, z) - charge(x-eps, y, z))/(2*eps)
    dyf = (charge(x, y+eps, z) - charge(x, y-eps, z))/(2*eps)
    dzf = (charge(x, y, z+eps) - charge(x, y, z-eps))/(2*eps)
    
    return np.array((dyf[2] - dzf[1], dzf[0] - dxf[2], dxf[1]-dyf[0]))


def curl_surf(charge, x0, y0, z0):
    eps = 1e-6
    n = 100
    ts = np.linspace(-eps, eps, n)
    
    cx = sum([ charge(x0, y0+eps, z0+t)[2] - charge(x0, y0-eps, z0-t)[2]]
             - charge(x0, y0-t, z0+eps)[1] + charge(x0, y0+t, z0-eps)[1] for t in ts)
    
    
    cy = sum([-charge(x0+eps, y0, z0-t)[2] + charge(x0-eps, y0, z0+t)[2]]
             + charge(x0-t, y0, z0+eps)[0] - charge(x0+t, y0, z0-eps)[0] for t in ts)
    
    cz = sum([ charge(x0+eps, y0-t, z0)[1] - charge(x0-eps, y0+t, z0)[1]]
             - charge(x0-t, y0+eps, z0)[0] + charge(x0+t, y0-eps, z0)[0] for t in ts)

    return np.array((cx, cy, cz))/n/(2*eps)


print("\nCurl at origin:")
print(f"Analytical calculation: {curl_ana(0, 0, 0)}")
print(f"FD calculation: {curl_num(charge, 0, 0, 0)}")
print(f"Surface integral: {curl_surf(charge, 0, 0, 0)}")

# Calculating divergenec at 10 random points

for _ in range(0, 10):
    x = np.random.rand()
    y = np.random.rand()
    z = np.random.rand()
    
    print(f"\nCurl at point: x: {x}, y: {y}, z: {z}")
    print(f"Analytical calculation: {curl_ana(x, y, z)}")
    print(f"FD calculation: {curl_num(charge, x, y, z)}")
    print(f"Surface integral: {curl_surf(charge, x, y, z)}")

print("\n")

"""
The results are not zero. However, they are infinitesimally small, so practically they can be assumed zero. I hope this is enough.
"""