%% Question 1
clear variables; clc;
syms x k;

t = linspace(0,3,3000);
period = 3;
omega = 2*pi/period;
x_t = exp(-t);


%a_func = x_t.*exp(i*k*omega*t)

%a_k = 1/period.*(integral(a_func,0,3));

figure(1);
plot(t,x_t)


%% ooof
clear variables; clc;

hold on
t = linspace(0, 1, 1000); % Continuous time sampleing
f_0 = 8;                  % Frequency 
x = sin(2*pi*f_0*t);      % Function

figure(1);
plot(t,x)
title('$x(t)=\sin(2\pi ft)$','interpreter','latex')
xlabel('t','interpreter','latex')

n = 0:1:64; % Discrete time sampling 
x_1 = sin(2*pi*n/8);
stem(n/64, x_1);

n = 0:1:20; % Discrete time sampling 
x_1 = sin(4*pi*n/5);
stem(n/20, x_1);
legend('$x(t)=\sin(2\pi ft)$','$x[n]=\sin(2\pi \frac{n}{8})$','$x[n]=\sin(4\pi \frac{n}{5})$','interpreter','latex')
hold off