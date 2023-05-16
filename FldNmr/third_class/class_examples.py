"""
THIRD CLASS
Thu Apr 27 2023
ST - Seminarraum 3B

Note: On exam, there will probably be a coordinate transformation question
"""

import numpy as np
import matplotlib.pyplot as plt

fig1 = plt.figure(figsize=(9, 5))
ax1 = fig1.add_subplot(121)
ax2 = fig1.add_subplot(122)

#######################
# FIRST PART OF CLASS #
#######################

# define the fields in their natural coordinate systems
def efield_charge(Qbar, r):
    '''Electric field of a point charge in origin'''

    return Qbar/r**2

def bfield_wire(Ibar, r):
    '''Magnetic field of a wire on Z axis'''

    return Ibar/r

# compute and plot the fields

rs = np.linspace(0.001, 1000, 100)

for Qbar in [1, 2, 3, 4, 5]:
    ax1.plot(rs, efield_charge(Qbar, rs), label=str(Qbar))
# rs is already a vector. therefore Qbar is introduced as a list
# and is iterated with a for loop

for Ibar in [1, 2, 3, 4, 5]:
    ax2.plot(rs, bfield_wire(Ibar, rs), label=str(Ibar))

ax1.set(title='Electric Field of A Point Charge', xlabel='distance [m]')
ax2.set(title='Magnetic Field of A Thin Wire', xlabel='distance [m]')

for ax in [ax1, ax2]:
    ax.set(xscale='log')
    ax.set(yscale='log')
    ax.grid(color='0.8')

ax1.legend(title='Qbar')
ax2.legend(title='Ibar')

plt.tight_layout()
plt.show()

########################
# SECOND PART OF CLASS #
########################

plt.close()
fig2 = plt.figure(figsize=(9, 5))
ax3 = fig2.add_subplot(111, projection='3d')

def spiral(t):
    '''Spiral Path, input type must be ndarray'''

    xs = 2*np.cos(t)
    ys = 2*np.sin(t)
    zs = t/10
    path = np.array([xs, ys, zs]).T
    return np.squeeze(path)

def d_spiral(t):
    '''derivative of spiral path, input type must be ndarray'''

    dxs = -2*np.sin(t)
    dys = 2*np.cos(t)
    dz = np.array([1/10]*len(t))
    dpath = np.array([dxs, dys, dz]).T
    return np.squeeze(dpath)

# compute and plot path
ts = np.linspace(0, 20, 100)
path = spiral(ts)
ax3.plot(path[:, 0], path[:, 1], path[:, 2])
ax3.plot(path[0, 0], path[0, 1], path[0, 2], marker='o')

t = np.array([4, 5, 6, 7, 8, 9, 10])
path_pos = spiral(t)
path_dev = d_spiral(t)
ax3.quiver(path_pos[:, 0], path_pos[:, 1], path_pos[:, 2],
           path_dev[:, 0], path_dev[:, 1], path_dev[:, 2], color='k')

plt.show()

#################
#  END OF CLASS #
#################
