# numpy -numerical python
"""
It stands for numerical python
it is a library. it consist of multi dimensional array object  and a group of routines for processing those array
numpy can be used to perform mathematical and logical operations on arrays.
"""
import numpy as np

num1 = np.array([1,2,3])
print(num1)

# more than one dimension  #syntax np.array([[],[]])
a = np.array([[1,2,3],[4,5,6]])
print(a)

#minimum dimension
aa = np.array([1,2,3,4,5])
ndim = 2
print(aa)

import numpy as np
arr2 = np.array([1,2,3],dtype = complex)
print(arr2)

""" NUMPY - array attributes"""
'''
Ndarray.shape : it returns a tuple containing array dimensions. it is used to resize array.
'''
import numpy as np
a = np.array([[1,2,3]])
print(a.shape)

b = np.array([[1,2,3],[4,5,6]])
print(b.shape)

#this resize the ndarray
a = np.array([[2,3,4],[6,7,8]])
a.shape=(3,2)
print(a)

#reshape function
#it provide a reshape function to reshape a array
kk = np.array([[11,222,34],[22,344,556]])
print(kk.shape)
print(kk)

ka = kk.reshape(3,2)
print(ka)

import numpy as np
X = np.array([[45,6,7],[67,8,9]])
H = X.reshape(3,2)
print(H)
print(H,ndim)

#NDARRAY.DIM
""" THIS ARRAY ATTRIBUTES RETURN THE NUMBER OF ARRAY DIMENSIONS"""
av = np.arange(24)
print(av)
sa = av.reshape(2,3,4)
print(sa)

print(av.ndim)
print(np.arange(10))
