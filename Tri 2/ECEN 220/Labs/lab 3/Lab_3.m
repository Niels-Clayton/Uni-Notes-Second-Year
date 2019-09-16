%% Question 1
clc, clear

Fs = 100;
f = 1/10;
w = (2.*pi).*f;


t = 0:1/Fs:10;
t(max) = 0;
x = cos(w.*t);
X = fftshift(fft(x));

figure(1)

subplot(3,1,1);
plot(t,x);
title("x(t) = cos(w_0t)")

subplot(3,1,2);
plot(t,abs(X));
title("Magnitude of X(w)")

subplot(3,1,3);
plot(t,rad2deg(angle(X)));
title("Phase of X(w)")

%% Question 2
clc
clear

t1 = 0:0.01:10;
t2 = -5:0.01:5;
x = (t1>=0);
X = fftshift(fft(x));

subplot(2,1,1);
plot(t2,abs(X));
title("Magnitude of X(w)")

subplot(2,1,2);

plot(t2,rad2deg(angle(X)));
title("Phase of X(w)")

