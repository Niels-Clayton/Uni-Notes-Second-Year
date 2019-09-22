
import numpy as np
import matplotlib.pyplot as plt
from decimal import Decimal


def der_central(f, x, h):
    return (f(x+h)-f(x-h))/(2*h)


def der_forwards(f, x, h):
    return (f(x + h) - f(x)) / h


def der_backwards(f, x, h):
    return (f(x) - f(x-h)) / h


f = lambda x: np.exp(x)
df = lambda x: np.exp(x)
x = 100
h_step = [0.2, 0.1, 0.05, 0.01, 0.005, 0.001, 0.0005, 0.0001]
central_error = []
backward_error = []
forward_error = []

for h in h_step:
    central_error.append(np.abs(df(x) - der_central(f, x, h)))
    backward_error.append(np.abs(df(x) - der_backwards(f, x, h)))
    forward_error.append(np.abs(df(x) - der_forwards(f, x, h)))


plt.plot(h_step, central_error, 'r', label='$Central$')
plt.plot(h_step, forward_error, 'g', label='$Forward$')
plt.plot(h_step, backward_error, 'b', label='$Backward$')
plt.legend()
plt.title("Error for central, forwards, and backwards differentiation")
plt.xlabel("Step size of h")
plt.ylabel("Error size")
plt.show()



# f = lambda x:1/(1+x**2)
# int_f = 2*np.arctan(5)
#
# def midpointquad(func, a, b, N):
#     x = np.linspace(a, b, N)
#     total = 0
#     for k in range(0, len(x)-1):
#         total += ((x[k+1]-x[k])*func((x[k]+x[k+1])/2))
#     return total


# print("{:5s} {:5s} {:17s} {:15s}".format("N","h", "Midpoint", "Error"))
# for n in (11, 101, 1001, 10001):
#     mid = midpointquad(f, -5, 5, n)
#     print("{:5d} {:.3f} {:.15f} {:.2E}".format(n, (10 / (n - 1)), mid, np.abs(int_f-mid)))



# func1 = midpointquad(lambda x: 1     , 0, 1, 2)
# func2 = midpointquad(lambda x: 2*x   , 0, 1, 2)
# func3 = midpointquad(lambda x: 3*x**2, 0, 1, 2)
# func4 = midpointquad(lambda x: 4*x**3, 0, 1, 2)
#
# print("{:5s} {:8s} {:15s}".format("func", "Midpoint", "Error"))
# print("{:5s} {:.6f} {:.2f}".format("1",    func1, np.abs(1 - func1)))
# print("{:5s} {:.6f} {:.2f}".format("2x",   func2, np.abs(1 - func2)))
# print("{:5s} {:.6f} {:.2f}".format("3x^2", func3, np.abs(1 - func3)))
# print("{:5s} {:.6f} {:.2f}".format("4x^3", func4, np.abs(1 - func4)))

# def trapezoid(func, a, b, N):
#     x = np.linspace(a, b, N)
#     total = 0
#     h = np.abs(b-a)/(N-1)
#
#
#     for k in range(0, len(x)-1):
#         x1 = func(x[k])
#         x2 = func(x[k+1])
#
#         total += ((x1 + x2)/2) * h
#     return total


# print("{:5s} {:5s} {:17s} {:15s}".format("N","h", "Midpoint", "Error"))
# for n in (11, 101, 1001, 10001):
#     mid = trapezoid(f, -5, 5, n)
#     print("{:5d} {:.3f} {:.15f} {:.2E}".format(n, (10 / (n - 1)), mid, np.abs(int_f-mid)))
#
#
#
# func1 = trapezoid(lambda x: 1     , 0, 1, 2)
# func2 = trapezoid(lambda x: 2*x   , 0, 1, 2)
# func3 = trapezoid(lambda x: 3*x**2, 0, 1, 2)
# func4 = trapezoid(lambda x: 4*x**3, 0, 1, 2)
#
#
# print("{:5s} {:8s} {:15s}".format("func", "Midpoint", "Error"))
# print("{:5s} {:.6f} {:.2f}".format("1",    func1, np.abs(1 - func1)))
# print("{:5s} {:.6f} {:.2f}".format("2x",   func2, np.abs(1 - func2)))
# print("{:5s} {:.6f} {:.2f}".format("3x^2", func3, np.abs(1 - func3)))
# print("{:5s} {:.6f} {:.2f}".format("4x^3", func4, np.abs(1 - func4)))
#
# def GaussQuadrature(func, a, b, N):
#     x, w = np.polynomial.legendre.leggauss(N)
#     total = 0
#
#     for n in range(N):
#         total += (w[n] * func( (((b-a)/2) * x[n]) + ((a+b)/2) ) )
#
#     return (total*((b-a)/2))

# func1 = GaussQuadrature(lambda x: 3*x**2, 0, 1, 2)
# func2 = GaussQuadrature(lambda x: 4*x**3, 0, 1, 2)
# func3 = GaussQuadrature(lambda x: 5*x**4, 0, 1, 2)
# func4 = GaussQuadrature(lambda x: 6*x**5, 0, 1, 2)
# func5 = GaussQuadrature(lambda x: 7*x**6, 0, 1, 2)
#
# func6 = GaussQuadrature(lambda x: 3*x**2, 0, 1, 3)
# func7 = GaussQuadrature(lambda x: 4*x**3, 0, 1, 3)
# func8 = GaussQuadrature(lambda x: 5*x**4, 0, 1, 3)
# func9 = GaussQuadrature(lambda x: 6*x**5, 0, 1, 3)
# func10 = GaussQuadrature(lambda x: 7*x**6, 0, 1, 3)
#
# print("{:5s} {:8s} {:15s}".format("func", "Error N = 2", "Error N = 3"))
# print("{:5s} {:.6f}    {:.4f}".format("3x^2", np.abs(1 - func1), np.abs(1-func6)))
# print("{:5s} {:.6f}    {:.4f}".format("4x^3", np.abs(1 - func2), np.abs(1-func7)))
# print("{:5s} {:.6f}    {:.4f}".format("5x^4", np.abs(1 - func3), np.abs(1-func8)))
# print("{:5s} {:.6f}    {:.4f}".format("6x^5", np.abs(1 - func4), np.abs(1-func9)))
# print("{:5s} {:.6f}    {:.4f}".format("7x^6", np.abs(1 - func5), np.abs(1-func10)))

#
# f = lambda x:1/(1+x**2)
# int_f = 2*np.arctan(5)
#
# print("{:5s} {:17s} {:15s}".format("N","Gauss-Lehendre", "Error"))
# for n in (3, 7, 11, 15):
#     mid = GaussQuadrature(f, -5, 5, n)
#     print("{:5d} {:.15f} {:.10f}".format(n, mid, np.abs(int_f-mid)))