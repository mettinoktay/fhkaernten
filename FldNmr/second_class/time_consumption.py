import numpy as np
import time

# create an array of random numbers
xs = np.random.rand(100000);

# time the vectorized operation
T0 = time.perf_counter()
ys = np.sin(xs);
T1 = time.perf_counter()

print(T1 - T0)

# time the vectorized operation
T0 = time.perf_counter()
ys = [np.sin(x) for x in xs]
T1 = time.perf_counter()

print(T1 - T0)
