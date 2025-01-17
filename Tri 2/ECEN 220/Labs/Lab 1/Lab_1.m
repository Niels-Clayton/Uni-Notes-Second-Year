%% Question 1
clear variables; clc;

hold on
t = linspace(0, 1, 1000); % Continuous time sampleing
f_0 = 4;                  % Frequency 
x = sin(2*pi*f_0*t);      % Function

figure(1);
plot(t,x)
title('$x(t)=\sin(2\pi ft)$','interpreter','latex')
xlabel('t','interpreter','latex')

n = 0:1:32; % Discrete time sampling 
x_1 = sin(2*pi*n/8);
stem(n/32, x_1);

n = 0:1:10; % Discrete time sampling 
x_1 = sin(4*pi*n/5);
stem(n/10, x_1);
legend('$x(t)=\sin(2\pi ft)$','$x[n]=\sin(2\pi \frac{n}{8})$','$x[n]=\sin(4\pi \frac{n}{5})$','interpreter','latex')
hold off


%% Question 2
clear variables; clc;

n = 0:1:5
x_1 = power(0.8, n);
x_2 = cos(n);
y_1 = power(2, x_1);
y_2 = power(2, x_2);
y_out_1 = y_1+y_2;

x_3 = x_1+x_2;
y_out_2 = power(2, x_3);

figure(2);
hold on
title('Test for liniarity of $y[n]=2^{x[n]}$','interpreter','latex')
stem(n,y_out_1)
stem(n,y_out_2)
hold off

y_1 = n.*x_1;
y_2 = n.*x_2;
y_out_1 = y_1+y_2;
y_out_2 = n.*x_3;
figure(3)
hold on
title('Test for liniarity of $y[n]=nx[n]$','interpreter','latex')
stem(n,y_out_1)
stem(n,y_out_2)
hold off

%% Question 3

clear variables; clc;

n = [0:1:10];
n2 = [0:1:3];
n3 = [0:1:13];
h = power(0.7, n)
x = (n2>=0) - ((n2-4)>=0);

y = conv(h,x);

figure(4)
stem(n2,x)
xlabel("n")
axis([0 11 0 1.5])
title('Function $x[n] = u[n] - u[n-4]$ before convolution','interpreter','latex')

figure(5)
stem(n,h)
xlabel("n")
axis([0 11 0 1.5])
title('Function $h[n] = 0.7^n$ before convolution','interpreter','latex')


figure(6)
stem(n3,y)
title('Convolution of $h[n] = 0.7^n$ and $x[n] = u[n] - u[n-4]$','interpreter','latex')
xlabel('n')

figure(7)


syms n_2
y_hand = piecewise(0<=n_2<=3, (1-0.7.^(n_2+1))/0.3, 3<n_2<=10, ((0.7.^(n_2-3))-0.7.^(n_2+1))/0.3, 10<n_2<=13,((0.7.^(n_2-3))-0.7.^(n_2+11))/0.3)


n_3 = 0:1:13
y_hand_2 = subs(y_hand, n_2, n_3)
stem(n_3, y_hand_2)
title('Convolution of $h[n] = 0.7^n$ and $x[n] = u[n] - u[n-4]$ by hand','interpreter','latex')





