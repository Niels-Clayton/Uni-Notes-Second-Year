
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
            λ = min(k + p + 1 , n)
            A[j:λ, j] = A[j:λ, j] - A[j, k] * A[j:λ, k]

        λ = min(j + p + 1, n)
        A[j:λ, j] = A[j:λ, j] / np.sqrt(abs(A[j, j]))

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
        λ = min(j + (p + 1) , n)
        b[j] = b[j]/A[j,j]
        b[j+1:λ] -= A[j+1:λ,j]*b[j]
    return b



def backward_sub(A, b, p):
    n = len(A)

    for j in range(n-1, -1, -1):
        λ = max(0, j - (p + 1))
        b[j] = b[j] / A[j, j]
        b[λ:j] -= A[j,λ:j]*b[j]
    return b


def band_solve(A1, b1, p):
    A = A1.copy()
    b = b1.copy()

    forward_sub(A, b, p)
    backward_sub(A, b, p)
    return b


def band_storage(A, p):
    n = len(A)
    B = np.zeros((p+1, n))

    for j in range(n):
        for i in range(j, min(n,j+p+1)):
            B[i-j, j] = A[i,j]
    return B



def compressed_band_cholesky(A1, p):
    A = A1.copy()
    n = len(A[0])

    for j in range(n):

        for k in range(max(0, j - p), j):

            λ = min(k + 1 + p, n)
            A[0:λ -j, j] = A[0:λ -j, j] - (A[j - k, k] * A[j-k:λ-k, k])

        λ = min(j + 1 + p, n)
        A[0:λ -j, j] = A[0:λ - j, j] / np.sqrt(abs(A[0, j]))


    return A


def compressed_forward_sub(A1, b1, p):
    b = b1.copy()
    n = len(b)
    A = A1.copy()

    for j in range(n):
        λ = min(j + (p + 1) , n)
        b[j] = b[j]/A[0,j]
        b[j+1:λ] = b[j+1:λ] - A[1:λ-j,j]*b[j]
    return b


def compressed_backward_sub(A1, b1, p):
    b = b1.copy()
    n = len(b)
    A = A1.copy()

    for j in range(n-1, -1, -1):
        b[j] = b[j] / A[0, j]

        λ = max(0, j - p + 1)
        for i in range(λ, j):
            b[i] = b[i] - (A[j-i,i] *b[j])

    return b


def compressed_band_solve(A1, b1, p):
    A = A1.copy()
    b = b1.copy()

    b = compressed_forward_sub(A, b, p)
    b = compressed_backward_sub(A, b, p)
    return b




# A = load()
# b = matrix_solution(A)
#
# L = band_cholesky(A, 48)
# L_b = band_storage(L, 48)
#
# g = backward_sub(L, b.copy(), 48)
# h = compressed_backward_sub(L_b, b.copy(), 48)
#
# print(g[3:6])
# print(h[3:6])


A = load()
b = matrix_solution(A)

A_b = band_storage(A, 48)
plt.spy(A_b)
plt.show()

L_b = compressed_band_cholesky(A_b, 48)
plt.spy(L_b)
plt.show()

x = compressed_band_solve(L_b, b, 48)
print(x)



# A = np.array([[4.0, -1.0, 1.0],
#               [-1.0, 4.25, 2.75],
#               [1.0, 2.75, 3.5]])
#
# b = np.array([4.0, 6.0, 7.25])
#
# A_b = band_storage(A, 2)
# L_b = compressed_band_cholesky(A_b, 2)
# x = compressed_band_solve(L_b, b, 2)
#
# print(x)

