---
title: Joblib and multiprocessing
---
# Joblib and multiprocessing

## Joblib

```python
from joblib import Parallel, delayed
import numpy as np

def square(x):
    """Return the square of a number."""
    return x ** 2

if __name__ == '__main__':
    # Create an array of numbers
    numbers = np.arange(10)
    # use all available cores
    n_jobs = -1
    jobs = len(numbers)

    # Use joblib to parallelize the square function
    tasks = (delayed(square)(i) for i in numbers)
    batch_size = max(1, (jobs + n_jobs - 1) // n_jobs)
    results = Parallel(n_jobs=n_jobs, batch_size=batch_size)(tasks)

    print(results)
```

这里的`batch_size`是指每个任务的大小. 如果任务太少, 那么`batch_size`至少为1, 如果任务太多, 那么`batch_size`就是任务数除以核数, 向上取整.

## Multiprocessing

```python
import multiprocessing as mp
import numpy as np

def square(x):
    """Return the square of a number."""
    return x ** 2

if __name__ == '__main__':
    # Create an array of numbers
    numbers = np.arange(10)
    # use all available cores
    n_jobs = -1
    jobs = len(numbers)

    # Use multiprocessing to parallelize the square function
    pool = mp.Pool(processes=n_jobs)
    results = pool.map(square, numbers)

    print(results)
```

用pool.map来并行化任务.
