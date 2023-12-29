"""
Systems Desing Master's
Fleld Numerics Homework 7_2

Use the path integral formulation to show that the curl of the magnetic field of an infinitely long wire on the z-axis
diverges at the position (0,0,3). Show that it is zero or that it converges towards 0 at the position (1,2,3).

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

def line(z):
    
    I = 100
    eps = 0.1
    nu = 4*np.pi*10e-7
    
    z = np.arange(-z, z, eps)
    x = np.arange(-1, 1, eps)
    y = np.arange(-1, 1, eps)
    pos = []
    fld = []
    
    for z_pos in z:
        for x_pos in x:
            for y_pos in y:        
                B = nu*I/(2*np.pi*np.sqrt(x_pos**2 + y_pos**2))
                pos.append(np.array((x_pos, y_pos, z_pos)))
                fld.append(B*np.array((y_pos, -x_pos, z_pos)))
                
    return(pos, fld)


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
