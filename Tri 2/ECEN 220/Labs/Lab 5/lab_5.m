%% 1
clc, clear;
syms q t

f_0 = 100;
M = 4;
func = (sin(2.*pi.*(2.*q + 1).* f_0.*t))./(2.*q +1);
x(t) = symsum(func, q, 0, 2) .*(4/pi);

sample_f = 2000;
upsample_f = M*sample_f;

T = 1/sample_f;
T1 = 1/upsample_f;

t = (0:sample_f-1).*T;
t1 = (0:upsample_f-1).*T1;

y = double(x(t));
y1 = upsample(y, M);

subplot(2,1,1);
stem(t, y)
xlim([30e-3 40e-3])
title("x(t)")
xlabel('t')
ylabel('y')

subplot(2,1,2);
stem(t1, y1)
xlim([30e-3 40e-3])
title("upsampled x(t)")
xlabel('t')
ylabel('y')

%% 2
clc
%generate sinc function
L = 100;
[h, n] = lowpass(L, M);
[H, W] = freqz(h, 1, 500);

subplot(2,1,1);
plot(n, h)
title("Low Pass Filter (Time)")
xlabel('t')
ylabel('y')


subplot(2,1,2);
plot(W, abs(H))
title("Low Pass Filter (Frequency)")
xlabel('w')
ylabel('y')

%% 3
clc

filtered = filter(h, 1, y1);

%% 4

subplot(2,1,1);
stem(t, y)
xlim([30e-3 40e-3])
title("x(t)")
xlabel('t')
ylabel('y')

subplot(2,1,2);
stem(t1, filtered)
xlim([30e-3 40e-3])
title("upsampled and low pass filtered x(t)")
xlabel('t')
ylabel('y')

%% 5
clc

delay_filter = zeros(1,L+1);
delay_filter(L+1) = -1;

delayed = filter(delay_filter, 1, filtered);


subplot(2,1,1);
stem(t1, y1)
xlim([30e-3 40e-3])
title("x(t)")
xlabel('t')
ylabel('y')

subplot(2,1,2);
stem(t1, delayed)
xlim([30e-3 40e-3])
title("Upsampled and low pass filtered x(t) with time shift")
xlabel('t')
ylabel('y')
