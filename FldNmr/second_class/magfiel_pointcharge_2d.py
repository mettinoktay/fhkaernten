import numpy as np
import matplotlib.pyplot as plt
from matplotlib import colormaps as cm

def E_pointcharge(Qbar, x, y, z):
    '''
    Electric field of a point charge located in the origin
    '''
    
    r_vec = np.array((x, y, z))
    r = np.sqrt(x**2 + y**2 + z**2)
    return Qbar * r_vec / r**3

def E_pointcharge_direc(x, y, z):
    '''
    finds the direction of the point
    '''
    r_vec = np.array((x, y, z))
    r = np.sqrt(x**2 + y**2 + z**2)
    return r_vec / r

N = 32
xs = np.linspace(-3, 3, N)
ys = np.linspace(-3, 3, N)
X, Y = np.meshgrid(xs, ys)
Z = np.zeros((N, N))

field = E_pointcharge(1, X, Y, Z)
field_amp = np.linalg.norm(field, axis=0)

field = E_pointcharge_direc(X, Y, Z)

plt.quiver(X, Y, field[0], field[1], np.log(field_amp))
plt.plot([0], [0], marker='o', color='b')
plt.show()