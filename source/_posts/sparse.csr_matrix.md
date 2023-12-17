---
title: sparse.csr_matrix
---
# sparse.csr_matrix

```python
from scipy import sparse
data = np.array([1, 2, 3, 4, 5, 6])         #所有非零数值
indices = np.array([0, 2, 2, 0, 1, 2])      #所有值的列索引
indptr = np.array([0, 2, 3, 6])             #每行的非零数据 data[i：i+1]
mtx = sparse.csr_matrix((data,indices,indptr),shape=(3,3))
mtx.todense()
```

```python
        matrix([[1, 0, 2],
                [0, 0, 3],
                [4, 5, 6]])
```

- `data`：所有非零数值
- `indptr`：每行的非零数据 data[i：i+1] : 相当于每行的非零数值的个数, 把`data`的值做分组, 每组的开头结尾索引
- `indices`：所有值的列索引
