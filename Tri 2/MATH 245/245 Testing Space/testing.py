
import numpy as np
import matplotlib.pyplot as plt
import scipy.io as sci


def load():
    return sci.mmread("matrix1.mtx").toarray()


def cholesky(A1):
    A = A1.copy()
    n = len(A)

    for i in range(n):

        for j in range(i + 1, n):
            A[j, i] = (A[j, i] - np.dot(A[j, 0:i], A[i, 0:i])) / A[i, i]

    for k in range(1, n):
        A[0:k, k] = 0.0

    return A


def band_cholesky(A1, p):
    A = A1.copy()
    n = len(A)

    for j in range(n):

        for k in range(max(0, j - p), j):
            λ = min(k + p, n - 1)
            z = A[j:λ + 1, j] - np.dot(A[j, k], A[j:λ + 1, k])
            A[j:λ + 1, j] = z

        λ = min(j + p, n - 1)
        A[j:λ + 1, j] = A[j:λ + 1, j] / np.sqrt(abs(A[j, j]))

    for k in range(1, n):
        A[0:k, k] = 0.0

    return A


def inverse_cholesky(l1):
    l = l1.copy()
    l_t = np.transpose(l)
    return np.matmul(l, l_t)



def matrix_solution(a1):
    n = len(a1)
    b = []
    a = a1.copy()

    for i in range(n):
        b.append(sum(a[i]))
    return np.asarray(b)


def findError(b):
    n = len(b)
    exact = np.ones(n)
    print(np.linalg.norm(b-exact))



def solve(l, b):
    n = len(b)

    # solution of ly=b

    for k in range(n):
        b[k] = (b[k] - np.dot(l[k, 0:k], b[0:k])) / l[k, k]

    # solution of l^t x =y

    for k in range(n - 1, -1, -1):
        b[k] = (b[k] - np.dot(l[k + 1:n, k], b[k + 1:n])) / l[k, k]

    return b


def forward_sub(A, b, p):
    n = len(A)

    for j in range(n):
        λ = min(j + p , n)
        b[j] = b[j]/A[j,j]
        b[j+1:λ] = b[j+1:λ] - A[j+1:λ,j]*b[j]
    return b



def backward_sub(A1, b, p):
    n = len(b)
    A = A1.copy()

    for j in range(n-1, -1, -1):
        λ = max(0, j - p)
        b[j] = b[j] / A[j, j]
        b[λ:j] = b[λ:j] - (np.transpose(A[j,λ:j])*b[j])
    return b


def band_solve(A1, b1, p):
    A = A1.copy()
    b = b1.copy()

    forward_sub(A, b, p)
    backward_sub(A, b, p)
    return b


def band_storage(A, p):
    n = len(A)
    B = np.zeros((p, n))

    for j in range(n):
        for i in range(j, min(n,j+p)):
            B[i-j, j] = A[i,j]
    return B

A = load()
A_b = band_storage(A, 48)
L1 = band_cholesky(A, 48)


plt.spy(A_b)
plt.show()

