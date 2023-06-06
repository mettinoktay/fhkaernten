'''
FİFTH CLASS - PART 3
CURL OF A FUNCTION
Tue June 6 2023
ST - Seminarraum 11
'''

import numpy as np

def field(x, y, z):
    '''
    some random field
    '''

    return np.array((x*y**2, x*y*z, x*z**2))

def curl_ana(x, y, z):
    '''
    analytical curl of the "some" function
    '''

    return np.array((-x*y, -z**2, y*z - 2*x*y))

def curl_num(f, eps, x, y, z):
    '''
    compute curl for vector field f using FD (central diff)
    '''

    dxf = (f(x+eps, y, z) - f(x-eps, y, z))/(2*eps)
    dyf = (f(x, y+eps, z) - f(x, y-eps, z))/(2*eps)
    dzf = (f(x, y, z+eps) - f(x, y, z-eps))/(2*eps)

    return np.array((dyf[2] - dzf[1], dzf[0]-dxf[2], dxf[1]-dyf[0]))
    
def curl_path(f, a, n, x0, y0, z0):
    '''
    compute the curl of a vector field f through surface integral
    '''

    ts = np.linspace(-a, a, n)

    cx = sum([f(x0, y0+a, z0+t)[2] - f(x0, y0-a, z0-t)[2] 
              - f(x0, y0-t, z0+a)[1] + f(x0, y0+t, z0-a)[1] for t in ts])
    
    cy = sum([-f(x0+a, y0+a, z0-t)[2] + f(x0-a, y0, z0+t)[2] 
              + f(x0-t, y0, z0+a)[1] - f(x0+t, y0, z0-a)[0] for t in ts])

    cz = sum([f(x0+a, y0-t, z0)[1] - f(x0-a, y0+t, z0)[2] 
              - f(x0-t, y0+a, z0)[1] + f(x0+t, y0-a, z0)[0] for t in ts])
    
    # scale result (tangent vector 2a/n, surface (2a)**2)
    return np.array((cx, cy, cz))/n/(2*a)

print(f"Analytical curl of 2,2,3 = {curl_ana(2,2,3)}")
print(f"Numerical curl = {curl_num(field, 1e-6, 2, 2, 3)}")
print(f"Surface integral curl = {curl_path(field, 1e-6, 100, -4, 2, 3)}")