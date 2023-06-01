"""
    FH KAERNTEN
    SYSTEMS DESIGN MASTER

    2023 SPRING SEMESTER

    FIELD NUMERICS
    FOURTH HOMEWORK
    METİN OKTAY YILMAZ
"""

import numpy as np
import matplotlib.pyplot as plt
from matplotlib import colormaps as cm

def fun(x, y):
    return np.arctan(x**2 + y**2)

def grad_fun(x0, y0):
    eps = 1e-6
    gradx = (fun(x0+eps, y0) - fun(x0, y0))/eps
    grady = (fun(x0, y0+eps) - fun(x0, y0))/eps
    return np.array((gradx, grady))

xs = ys = np.linspace(-1.5, 1.5, 30)
X, Y = np.meshgrid(xs, ys)
grad = np.array([grad_fun(x, y) for y in ys for x in xs]).T
g_len = np.linalg.norm(grad, axis=0)
g_norm = grad/g_len

cmap = cm.get_cmap('coolwarm')
plt.quiver(X, Y, g_norm[0], g_norm[1], color=cmap(g_len))
plt.show()
