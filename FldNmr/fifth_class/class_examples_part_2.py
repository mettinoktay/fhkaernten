'''
FİFTH CLASS - PART 2
Tue June 6 2023
ST - Seminarraum 11
'''

import numpy as np

def fcharge(x, y, z):
    '''
    field of point charge
    '''

    r2 = x**2 + y**2 + z**2

    return np.array((x, y, z))/r2**(3/2)

def div_num(f, x, y, z):
    '''
    compute divergence for vector field f using FD
    '''

    eps = 1e-12
    dx_fx = (f(x+eps,y,z)[0] - f(x-eps,y,z)[0])/(2*eps)
    dy_fy = (f(x,y+eps,z)[1] - f(x,y-eps,z)[1])/(2*eps)
    dz_fz = (f(x,y,z+eps)[2] - f(x,y,z-eps)[2])/(2*eps)

    return dx_fx + dy_fy + dz_fz

def div_surf(f, a, x0, y0, z0):
    '''
    compute div of vectorfield f through surface integral
    '''

    n = 100
    ts = np.linspace(-a, a, n)
    result = sum([f(x0+a, t, s)[0] - f(x0-a, t, s)[0] for t in ts+y0 for s in ts+z0]
        + [f(t, y0+a, s)[1] - f(x0-a, t, s)[1] for t in ts+x0 for s in ts+z0]
        + [f(t, s, z0+a)[2] - f(x0-a, t, s)[2] for t in ts+x0 for s in ts+y0]
        )

    # scale result with length of normal vector and volume
    
    return result/n**2/(2*a)

print(f"div_num(0, 0, 0) = {div_num(fcharge, 0, 0, 0)}")
print(f"div_num(1, 2, 3) = {div_num(fcharge, 1, 2, 3)}")
print(f"\nSurface integral method:\n ")

print(f"div_surf at origin: ")
for a in [1, 0.1, 0.01, 0.001]:
    print(f"a = {a} -> div_surf = {div_surf(fcharge, a, 0, 0, 0)}")

print("\ndiv_surf at (x, y, z) = (1, 2, 3)")
for a in [1, 0.1, 0.01, 0.001]:
    print(f"a = {a} -> div_surf = {div_surf(fcharge, a, 1, 2, 3)}")

