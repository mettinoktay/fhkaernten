import magpylib as magpy
import matplotlib.pyplot as plt

src1 = magpy.magnet.Sphere((1,1,1), 1, [(0,0,0), (0,0,3)])
src2 = magpy.magnet.Sphere((1,1,1), 1, [(1,0,0), (1,0,3)], style_path_show=False)
magpy.defaults.display.style.magnet.magnetization.size = 2
src1.style.magnetization.size = 1
magpy.show(src1, src2, style_color='r')

my_axis = plt.axes(projection='3d')
magnet = magpy.magnet.Cuboid(magnetization=(1,1,1), dimension=(1,2,3))
sens = magpy.Sensor(position=(0,0,3))
magpy.show(magnet, sens, canvas=my_axis, zoom=1)
plt.show()
        