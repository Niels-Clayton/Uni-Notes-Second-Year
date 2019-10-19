
import numpy as np
import matplotlib.pyplot as plt
import scipy.io as sci


def load():
    return sci.mmread("matrix1.mtx").toarray()


def cholesky(A1):
    A = A1.copy()
    n = len(A)

    for i in range(n):

        try:
            A[i, i] = np.sqrt(A[i, i] - np.dot(A[i, 0:i], A[i, 0:i]))
        except ValueError:
            error.err('Matrix is not positive definite')


        for j in range(i + 1, n):
            A[j, i] = (A[j, i] - np.dot(A[j, 0:i], A[i, 0:i])) / A[i, i]

    for k in range(1, n):
        A[0:k, k] = 0.0

    return A


def band_cholesky(A1, p):
    A = A1.copy()
    n = len(A)

    for j in range(n):


        for k in range( max(0, j-p), j):
            lam = min(k+p, n-1)
            A[j:lam+1, j] = A[j:lam+1, j] - np.dot(A[j, k], A[j:lam+1, k])

        lam = min(j+p, n-1)
        A[j:lam+1, j] = A[j:lam+1, j] / np.sqrt(abs(A[j,j]))

    for k in range(1, n):
        A[0:k, k] = 0.0

    return A


def inverse_cholesky(L1):
    L = L1.copy()
    L_T = np.transpose(L)
    return np.matmul(L, L_T)

A = load()


L1 = cholesky(A)
L2 = band_cholesky(A,48)
L3 = np.linalg.cholesky(A)

plt.spy(L1)
plt.title("Implemented cholesky algorithim")
plt.show()

plt.spy(L2)
plt.title("Implemented band_cholesky algorithim")
plt.show()

plt.spy(L3)
plt.title("numpy.linalg cholesky algorithim")
plt.show()

L1_inverse = inverse_cholesky(L1)
L2_inverse = inverse_cholesky(L2)
L3_inverse = inverse_cholesky(L3)

plt.spy(L1_inverse)
plt.title("Inverse of Implemented cholesky algorithim")
plt.show()
error = abs(np.sum(A))-abs(np.sum(L1_inverse))
print("error relative to original matrix: {}".format(error))

plt.spy(L2_inverse)
plt.title("Inverse of Implemented band_cholesky algorithim")
plt.show()
error = abs(np.sum(A))-abs(np.sum(L2_inverse))
print("error relative to original matrix: {}".format(error))

plt.spy(L3_inverse)
plt.title("Inverse of numpt.linalg algorithim")
plt.show()
error = abs(np.sum(A))-abs(np.sum(L3_inverse))
print("error relative to original matrix: {}".format(error))
