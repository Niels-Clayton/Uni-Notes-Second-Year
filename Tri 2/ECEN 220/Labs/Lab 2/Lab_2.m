%% Question 1
clear
clc

T = 3;                      % Time period of the signal
t = 0:0.001:T;              % Sampeling rate in the time domain
w = (2.*pi)./T;             % Omega (angular frequency)
K = [1 5 10 30];            % Array of different k ranges to sum over

magnitude = [];             % Array of magnitudes
phase = [];                 % Array of phases

subplot(4,1,[1 2]);

x = exp(-t);                % Original function
plot(t,x);                  % Plot the original x(t) function

hold on;

for n = 1 : length(K)                         % For each element in the K array
    hat = 0;
    for k = (-K(n) : K(n))                    % From the n-th element in K, go from -K to K
        F = @(t)(exp(-t).*exp(-1j.*k.*w.*t)); % Function to be integrateded to calcualte ak 
        ak = 1/T.*integral(F,0,T);            % Definition of ak
        hat = hat + (ak .* exp(1j.*k.*w.*t)); % Compute the fourier series
       
        if K(n) == 10                         % Store the magnitude and phase when k = 10
            magnitude = [magnitude, abs(ak)];
            phase = [phase, rad2deg(angle(ak))];
        end
    end
    plot(t,hat);
end

xlabel('t');
ylabel('x(t)');
legend('CT', 'K=1','K=5','K=10','K=30')
hold off;

% Plot magnitudes
p2 = subplot(4,1,3);
k10 = -10:10;
stem(k10, magnitude);
xlabel(p2,'k');
ylabel(p2,'Magnitude');
legend(p2,'Magnitudes of a_k')

% Plot phases 
p3 = subplot(4,1,4);
k10 = -10:10;
stem(k10, phase);
xlabel(p3,'k');
ylabel(p3,'phase [deg]');
legend(p3,'Phases of a_k');

