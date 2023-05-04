import numpy as np
import matplotlib.pyplot as plt

ts = np.linspace(-5, 5, 10)
pos, field = [], []

for x in ts:
    for y in ts:
        for z in ts:
            # cartesian position
            pos.append((x, y, z))
            # cartesian field
            field.append((-y, x, 0))
            # cylindirical position
            # r = np.sqrt(x**2 + y**2)
            # phi = np.arctan2(y, x)
            # posC_new = (r, phi, z)
            # posC.append(posC_new)
            # # cylindrical field
            # fieldC_new = (0, r, 0)
            # fieldC.append(fieldC_new)

pos = np.array(pos).T
field = np.array(field).T
amp = np.linalg.norm(field, axis=0)
fieldn = field/amp

# posC = np.array(posC).T
# fieldC = np.array(fieldC).T
# ampC = np.linalg.norm(fieldC, axis=0)
# fieldnC = fieldC/ampC

# create figure

fig = plt.figure()

ax1 = fig.add_subplot(projection='3d')
ax1.quiver(pos[0], pos[1], pos[2], fieldn[0], fieldn[1], fieldn[2])

# ax1 = fig.add_subplot(122, projection='3d')
# ax1.quiver(posC[0], posC[1], posC[2], fieldnC[0], fieldnC[1], fieldnC[2])

plt.show()
