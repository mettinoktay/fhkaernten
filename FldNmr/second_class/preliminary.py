import numpy as np
import matplotlib.pyplot as plt

fig, [ax1, ax2] = plt.subplots(2, 1)

# generate data
xs = np.linspace(0, 4*np.pi, 100);
ys1 = np.cos(xs);
ys2 = np.sin(xs) * xs;

# plotting 
ax1.plot(xs, ys1, lw=3, ls='--', color='r')
ax1.set(title='Hello there babe', 
        xlabel='Angle',
        ylabel='Value',
        xlim=(-1, 4*np.pi-1))
ax1.grid(lw=0.5, color='0.85')
ax1.legend()

ax2.plot(xs, ys2, lw=3, ls='--', color='b')
ax2.set(title='$\chi: i\hbar\partial_t\psi=H\psi$',
        xlabel='Angle', ylabel='Value',
        xlim=(-1, 4*np.pi-1))
ax2.grid(lw=0.5, color='0.85')
ax2.legend()

plt.tight_layout()
plt.show()

