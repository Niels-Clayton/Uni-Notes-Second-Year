
import numpy as np
import matplotlib.pyplot as plt
import scipy.interpolate as sci


def coefs(x, y):

    a = y
    for k in range(1, x.size):

        for i in range(0, k):

            a[k] = ((a[k]-a[i])/(x[k]-x[i]))

    return a


def evalp(a, x, z):

    n = a.size-1
    s = a[n]

    for i in range(n-1, -1, -1):
        s = a[i]+((z - x[i])*s)

    return s


def newtinterp(x, y, z):

    return evalp(coefs(x,y), x, z)





x = np.linspace(0, 2*np.pi, 6)
y = np.sin(x)

z = np.linspace(0, 2*np.pi, 101)
y1 = newtinterp(x, y, z)



# original function
plt.plot(z, np.sin(z))

# My function
plt.plot(z, y1)
plt.show()

# original function




# polyfit

y = np.sin(x)

coefficients = np.polyfit(x, y, 6)
y2 = np.polyval(coefficients, z)
plt.plot(z, np.sin(z))
plt.plot(z, y2)
plt.show()


# cubic spline


polynomial = sci.CubicSpline(x,y)
y3 = polynomial(z)
plt.plot(z, np.sin(z))
plt.plot(z, y3)
plt.show()






