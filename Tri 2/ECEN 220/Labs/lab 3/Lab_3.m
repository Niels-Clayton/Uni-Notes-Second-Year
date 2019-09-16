%% Question 1
clc, clear

Fs = 100;
f = 1/10;
w = (2.*pi).*f;


t = 0:1/Fs:10;
t(max) = 0;
x = cos(w.*t);
X = fftshift(fft(x));

F_s = 10;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 10;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(0, T-Ts, N);   % Values of t to sample at

w_0 = 2*pi/T;
x = cos(w_0*t);

subplot(3, 1, 1);
plot(t, x);
title('One period of $$x(t)=cos(\frac{\pi t}{5})$$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x


subplot(3,1,2);
stem(t,abs(X/N)*2);
title("Magnitude of X(w)",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')


%% Question 2 sin(x)
clc, clear

% generate one period of the signal

F_s = 10;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 10;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(0, T-Ts, N);   % Values of t to sample at

w_0 = 2*pi/T;
x = sin(w_0*t);

subplot(3, 1, 1);
plot(t, x);
title('One period of $x(t)=sin(\frac{\pi t}{5})$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x


subplot(3,1,2);
stem(t,abs(X));
title("Magnitude of $$X(jw)=\frac{\pi}{j}[\delta(w-w_0)-\delta(w+w_0)]$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')

%% Question 2 exponental
clc, clear

% generate one period of the signal

F_s = 10;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 10;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(0, T-Ts, N);   % Values of t to sample at

w_0 = 2*pi/T;
x = exp(1i.*w_0.*t);

subplot(3, 1, 1);
plot(t, x);
title('One period of $x(t)=e^{w_0 t}$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x


subplot(3,1,2);
stem(t,abs(X));
title("Magnitude of $$X(jw)=2\pi \delta[w-w_0]$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')

%% Question 2 delta
clc, clear

% generate one period of the signal

F_s = 101;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 5;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(-5, T, N);   % Values of t to sample at

x = (t==0);

subplot(3, 1, 1);
stem(t, x);
title('One period of $x(t)= \delta (t)$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x


subplot(3,1,2);
plot(t,abs(X));
title("Magnitude of $$X(jw)=1$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')

%% Question 2 Unit step
clc, clear

% generate one period of the signal

F_s = 100;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 5;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(-5, T-Ts, N);   % Values of t to sample at

w_0 = 2*pi/T;
x = (t>=0);

subplot(3, 1, 1);
plot(t, x);
title('One period of $x(t)= u(t)$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x


subplot(3,1,2);
stem(t,abs(X/N)*2);
title("Magnitude of $$X(jw)=\frac{1}{jw}+\pi \delta(w)$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')

%% Question 2 delta shifted
clc, clear

% generate one period of the signal

F_s = 10;                   % Sample rate
T = 10;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(-5, 5, 101);   % Values of t to sample at

x = (t==1);

subplot(3, 1, 1);
stem(t, x);
title('One period of $x(t)= \delta (t - t_0)$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x

subplot(3,1,2);
plot(t,abs(X));
title("Magnitude of $$X(jw)=e^{-jw}$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')

%% Question 2 exp
clc, clear

% generate one period of the signal

F_s = 20;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 5;                     % period of the signal

N = T.*F_s;                 % Number of samples total
t = linspace(-5, T-Ts, N);   % Values of t to sample at
a = 2;

x = exp(-(a.*t)).*(t>=0);

subplot(3, 1, 1);
stem(t, x);
title('One period of $x(t)= \delta (t - t_0)$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x

subplot(3,1,2);
plot(t,abs(X/N)*2);
title("Magnitude of $$X(jw)=\frac{1}{2+jw}$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')


%% Question 2 piece wise
clc, clear

% generate one period of the signal

F_s = 20;                   % Sample rate
Ts = 1/F_s;                 % Period of a sample
T = 5;                     % period of the signal
T1 = 1;

N = T.*F_s;                 % Number of samples total
t = linspace(-5, T-Ts, N);   % Values of t to sample at


x = (abs(t) < T1) - (abs(t) < T1/2);

subplot(3, 1, 1);
stem(t, x);
title('$x(t) = 1$ if $|t| < T_1$ \& $x(t) = 0$ if $T_1 < |t| < \frac{T}{2}$','interpreter','latex')
xlabel('$$t$$','interpreter','latex')
ylabel('$$x(t)$$','interpreter','latex')

w = (-N/2:N/2-1)*(F_s/N);   % The range on which the frequency will be plotted
X = fftshift(fft(x));       % Compute the fourier transform of x

subplot(3,1,2);
stem(t,abs(X/N)*2);
title("Magnitude of $$X(jw)=\frac{sin(kw_o)}{k\pi}$$",'interpreter','latex')
xlabel('Frequency $(Hz)$','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(3,1,3);
stem(t,angle(X/N));
title("Phase of X(w)",'interpreter','latex')
xlabel('$$w$$','interpreter','latex')
ylabel('$$X(w)$$','interpreter','latex')
