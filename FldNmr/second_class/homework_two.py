import numpy as np
import matplotlib.pyplot as plt

fig = plt.figure()
XYZ =  np.arange(5, -5.01, -1)
loc = []
drc = []

for x in XYZ:
    for y in XYZ:
       for z in XYZ:
           loc.append([x, y, z])
           drc.append([-y, x, 0])

loc = np.array(loc).T
drc = np.array(drc).T
amp = np.linalg.norm(drc, axis=0)**2
drc = drc/amp

ax = fig.add_subplot(projection='3d')
ax.quiver(loc[0], loc[1], loc[2], drc[0], drc[1], drc[2])
plt.show()
