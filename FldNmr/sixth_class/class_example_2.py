import numpy as np
import matplotlib.pyplot as plt

def A(x, y, z):
    '''some vector potential'''
    
    r = np.sqrt(x**2 + y**2)
    return np.array((0, 0, -np.log(r)))


def curl_fd(f, eps, x, y, z):
    '''fd computation curl'''
    
    dx = (f(x+eps, y, z) - f(x-eps, y, z))/(2*eps)
    dy = (f(x, y+eps, z) - f(x, y-eps, z))/(2*eps)
    dz = (f(x, y, z+eps) - f(x, y, z-eps))/(2*eps)
    
    return np.array([dy[2]-dz[1], dz[0]-dx[2], dx[1]-dy[0]])

# compute fields
ts = np.linspace(-2, 2, 12)

# position
pos = np.array([(x, y, z) for x in ts for y in ts for z in [0]]).T

#potential
pot = np.array([A(p[0], p[1], p[2]) for p in pos.T]).T

curl = np.array([curl_fd(A, 1e-6, x, y, z) for x in ts for y in ts for z in [0]]).T/10

# plot fields
fig = plt.figure()
ax = fig.add_subplot(projection='3d')

ax.quiver(pos[0], pos[1], pos[2], pot[0], pot[1], pot[2], color='r')
ax.quiver(pos[0], pos[1], pos[2], curl[0], curl[1], curl[2], color='k')
ax.plot([0, 0], [0, 0], [-6, 6], lw=1, color='g')
plt.show()
