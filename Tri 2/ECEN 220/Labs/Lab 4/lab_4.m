%% 1: dtft
clc, clear

M = 1000;
k = (0 : M)';
omega_0 = -2*pi;
omega_M = 2*pi;
omega = omega_0 + (omega_M-omega_0)*(k/M);

x = [-3,2,6,6,4]';
n = (0:length(x)-1)'-pi;
X = dtft( x, n, omega);

subplot(3, 1, 1);
stem(n, x);
title('x[n]')
xlabel('n')
ylabel('x')

subplot(3,1,2);
plot(omega,abs(X));
title("Magnitude of X(w)")
xlabel('Frequency')
ylabel('Magnitude')

subplot(3,1,3);
plot(omega,angle(X));
title("Phase of X(w)")
xlabel('Frequency')
ylabel('Phase')

%% 2: Inverse dtft
clc

x1 = invdtft(X, n, omega)
stem(n, x1);
title('x[n] after inverse dtft')
xlabel('n')
ylabel('x')


%% 3a: dtft of Temperature data
clc, clear

data = importdata('Temperature.txt');
n = data(:, 1);
x = data(:, 2);

omega_0 = -pi;
omega_M = pi;
M = 1000;
k = (0 : M)';
omega = omega_0 + (omega_M-omega_0)*(k/M);

X = dtft( x, n, omega);

subplot(3, 1, 1);
stem(n, x);
title("Temperature data")
xlabel('n')
ylabel('x')

subplot(3,1,2);
plot(omega,abs(X));
title("Magnitude of X(w)")
xlabel('Frequency')
ylabel('Magnitude')

subplot(3,1,3);
plot(omega,angle(X));
title("Phase of X(w)")
xlabel('w')
ylabel('X(w)')



%% 3: moving average filter

m = 10;
Hav = ((1/m).*exp(-1j.*omega.*((m-1)./2)).*((sin(omega.*m./2))./(sin(omega./2))));
Hav((M/2) +1) = 1;

Y = Hav.*X;
y = invdtft(Y, n, omega);

figure(1)
plot(n,x, n,y)
title("x[n] after filtering with m = 10")
xlabel('n')
ylabel('x')
legend('x[n] no filter', 'x[n] filtered');

figure(2)

subplot(2,1,1);
plot(omega,abs(X));
title("Magnitude of X(w) - not filtered")
xlabel('Frequency','interpreter','latex')
ylabel('Magnitude','interpreter','latex')

subplot(2,1,2);
plot(omega,abs(Y));
title("Magnitude of X(w) - filtered")
xlabel('Frequency','interpreter','latex')
ylabel('Magnitude','interpreter','latex')


%% extra
clc 

wc = pi/2;
high_filter = (abs(omega) > wc);

Y = high_filter.*X;
y = invdtft(Y, n, omega);

figure(1)
plot(n,x, n,y)
title("x[n] with high pass filter")
xlabel('n')
ylabel('x')
legend('x[n]', 'x[n] high pass');

wc = pi/8;
low_filter = (abs(omega) < wc);
Y = low_filter.*X;
y = invdtft(Y, n, omega);

figure(2)
plot(n,x, n,y)
title("x[n] with low pass filter")
xlabel('n')
ylabel('x')
legend('x[n]', 'x[n] low pass');





