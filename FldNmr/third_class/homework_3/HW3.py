"""
    FH KAERNTEN
    SYSTEMS DESIGN MASTER

    2023 SPRING SEMESTER

    FIELD NUMERICS
    THIRD HOMEWORK
    METİN OKTAY YILMAZ
"""

from numpy import sin, cos, pi, array, linspace, meshgrid
import matplotlib.pyplot as plt

def vector_field(x, y, z):
    return array([1, 1, 1])

range_r = linspace(0, 1, 10)
range_phi = linspace(0, 2*pi, 10)
range_theta = linspace(0, 2*pi, 10)

r, phi, theta = meshgrid(range_r, range_phi, range_theta)
x, y, z = r * sin(theta) * cos(phi), sin(theta) * sin(phi), r * cos(theta)
u, v, w = vector_field(x, y, z)

ax = plt.figure().add_subplot(projection='3d')
ax.quiver(x, y, z, u, v, w, length=0.12, normalize=True)

ax.set_xlabel('r')
ax.set_ylabel('phi')
ax.set_zlabel('theta')

plt.show()
