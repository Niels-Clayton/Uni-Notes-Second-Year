
import numpy as np
import matplotlib.pyplot as plt
import scipy.interpolate as sci


def coefs(x, y):

    n = x.size
    a = []
    for i in range(n):
        a.append(y[i])

    for k in range(1, n):

        for i in range(0, k):

            a[k] = ((a[k]-a[i])/(x[k]-x[i]))
    return np.array(a)


def evalp(a, x, z):

    n = a.size-1
    s = a[n]

    for i in range(n-1, -1, -1):
        s = a[i]+((z - x[i])*s)

    return s


def newtinterp(x, y, z):
    coef = coefs(x,y)
    print(coef)
    return evalp(coef, x, z)




#
# x = np.linspace(0, 2*np.pi, 60)
# y = np.sin(x)
# z = np.linspace(0, 2*np.pi, 101)
# y1 = newtinterp(x, y, z)
#
#
#
# # original function
# plt.plot(z, np.sin(z), label='$sin(x)$')
# plt.plot(z, y1, label='coefs & evalp functions')
# plt.legend()
# plt.show()
#
#
# # polyfit
#
# y = np.sin(x)
# coefficients = np.polyfit(x, y, 5)
# print(coefficients)
# y2 = np.polyval(coefficients, z)
# plt.plot(z, np.sin(z), label='$sin(x)$')
# plt.plot(z, y2, label='Polyfit function')
# plt.legend()
# plt.show()
#
#
#
# # cubic spline
#
#
# polynomial = sci.CubicSpline(x,y)
# y3 = polynomial(z)
# plt.plot(z, np.sin(z), label='$sin(x)$')
# plt.plot(z, y3, label='CubicSpline Function')
# plt.legend()
# plt.show()


# t = np.array([1991, 1996, 2001, 2006, 2011, 2016])
# y = np.array([3516000, 3762300, 3916200, 4209100, 4399400, 4747200])
# z = np.linspace(1991, 2016, 1000)
#
# plt.plot(t, y, 'bo', label='Original data')
# y1 = newtinterp(t,y,z)
# plt.plot(z, y1,label='coefs() & evalp()')
# plt.title('Interpolation with coefs() & evalp()')
# plt.show()
#
#
# # run with cubic spline
#
# polynomial = sci.CubicSpline(t,y)
# y2 = polynomial(z)
# plt.plot(t, y, 'bo', label='Original data')
# plt.plot(z, y2,label='CubicSpline()')
# plt.plot(z, y1,label='coefs() & evalp()')
# plt.legend()
# plt.title('Interpolation with CubicSpline() vs coefs() & evalp()')
# plt.show()
#
#
# #axroximate 2018-2034
# t = np.array([1991, 1996, 2001, 2006, 2011, 2016])
# y = np.array([3516000, 3762300, 3916200, 4209100, 4399400, 4747200])
# z = np.linspace(2018, 2034, 1000)
# y3 = newtinterp(t,y,z)
# plt.plot(z, y3)
# plt.title('Aproximation with coefs() & evalp()')
# plt.show()

f = lambda x: 1/(1+25*(x**2))

z = np.linspace(-1, 1, 201)
for n in (5,10,20,100):
    x = np.linspace(-1, 1, n+1)
    y = f(x)
    a = newtinterp(x, y, z)
    plt.plot(z, a,label='Points of $f(x)$')
    plt.plot(x, f(x), 'bo', label='order = {}'.format(n))
    plt.legend()
    plt.show()

z = np.linspace(-1, 1, 201)
for n in (5,10,20,100):
    x = np.linspace(-1, 1, n+1)
    y = f(x)
    function = sci.CubicSpline(x, y)
    plt.plot(z, function(z), label='order = {}'.format(n))
    plt.plot(x, f(x), 'bo', label='Points of $f(x)$')
    plt.legend()
    plt.show()

