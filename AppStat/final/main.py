import matplotlib.pyplot as plt

first = [218112, 0, 0, -208536, 
             431818, 199766, 234546, 0, 
             146907, -371739, -339285, -822115, 
             423267, -172379, -131944, -777272]
second = [223821, 0, 0, -142500,
              415048, 218112, 188325, 0,
              165057, -347560, -356250, -890625,
              328846, -175204, -145408, -737068]

diff = []

for index in range(0, 16):
    try:
        diff.append(
            100 * (second[index] - first[index]) / second[index])
    except ZeroDivisionError:
        diff.append(0)


plt.plot(diff, linestyle='--', marker='o', color='b')
plt.ylim([-50, 50])
plt.xlabel('Run Number', fontsize=16)
plt.xticks(fontsize = 16)
plt.ylabel('Difference in per cent', fontsize=16)
plt.yticks(fontsize = 16)
plt.show()
