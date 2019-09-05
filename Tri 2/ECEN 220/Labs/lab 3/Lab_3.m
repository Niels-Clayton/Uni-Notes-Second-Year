%% Question 1
clc, clear

w = (2.*pi)./10;
t = linspace(0, 10, 1000);
t1 = linspace(-1,1,1000);
x = cos(w.*t);
X = fft(x);


figure(1)

subplot(3,1,1);
plot(t,x);
title("x(t) = cos(w_0t)")

subplot(3,1,2);
plot(t1,abs(X));
title("Magnitude of X(w)")

subplot(3,1,3);
plot(t1,rad2deg(angle(X)));
title("Phase of X(w)")

%% Question 2
clc
clear

t1 = 0:0.01:10;
x = (t1>=0);
X = fft(x);

subplot(2,1,1);
plot(t1,abs(X));
title("Magnitude of X(w)")

subplot(2,1,2);
plot(t1,rad2deg(angle(X)));
title("Phase of X(w)")

