%% a
clear
clc

T = 7;
n = 0:1:6
w = 2.*pi./T;
magnitude = [];             % Array of magnitudes
phase = [];                 % Array of phases

x_n = 0;

for k = (0:6) 
    ak = (1/T.*((1-exp(-5j.*k.*w))./(1 - exp(-1j.*k.*w))));
    
    
    if k == 0
        x_n = x_n + (5/7).*exp(1j.*k.*w.*n);
        magnitude = [magnitude, abs(5/7)];
        phase = [phase, rad2deg(angle(5/7))];
    end
    
    if k ~= 0 
        x_n = x_n + (ak .* exp(1j.*k.*w.*n));
        magnitude = [magnitude, abs(ak)];
        phase = [phase, rad2deg(angle(ak))];
    end
end

figure(1)
stem(n,x_n);

figure(2)
subplot(2,1,[1 2]);
% Plot magnitudes
p2 = subplot(2,1,1);
k10 = 0:6;
stem(k10, magnitude);
xlabel(p2,'k');
ylabel(p2,'Magnitude');
legend(p2,'Magnitudes of a_k')

% Plot phases 
p3 = subplot(2,1,2);
k10 = 0:6;
stem(k10, phase);
xlabel(p3,'k');
ylabel(p3,'phase [deg]');
legend(p3,'Phases of a_k');

%% b
clear
clc

T = 6;
n = 0:1:5
w = 2.*pi./T;
magnitude = [];             % Array of magnitudes
phase = [];                 % Array of phases

x_n = 0;

for k = (0:5) 
    ak = (1/T.*((1-exp(-4j.*k.*w))./(1 - exp(-1j.*k.*w))));
    
    
    if k == 0
        x_n = x_n + (4/6).*exp(1j.*k.*w.*n);
        magnitude = [magnitude, abs(4/6)];
        phase = [phase, rad2deg(angle(4/6))];
    end
    
    if k ~= 0 
        x_n = x_n + (ak .* exp(1j.*k.*w.*n));
        magnitude = [magnitude, abs(ak)];
        phase = [phase, rad2deg(angle(ak))];
    end
end

figure(1)
stem(n,x_n);

figure(2)
subplot(2,1,[1 2]);
% Plot magnitudes
p2 = subplot(2,1,1);
k10 = 0:5;
stem(k10, magnitude);
xlabel(p2,'k');
ylabel(p2,'Magnitude');
legend(p2,'Magnitudes of a_k')

% Plot phases 
p3 = subplot(2,1,2);
k10 = 0:5;
stem(k10, phase);
xlabel(p3,'k');
ylabel(p3,'phase [deg]');
legend(p3,'Phases of a_k');

%% c
clear
clc

T = 6;
n = -2:1:3
w = 2.*pi./T;
magnitude = [];             % Array of magnitudes
phase = [];                 % Array of phases

x_n = 0;

for k = (-2:3) 
    ak = (1/T.*((-2.*cos((2.*pi.*k)./3))+(4.*cos((pi.*k)./3))+1));
    
    x_n = x_n + (ak .* exp(1j.*k.*w.*n));
    magnitude = [magnitude, abs(ak)];
    phase = [phase, rad2deg(angle(ak))];

end

figure(1)
stem(n,x_n);
% hold on 
% for k = (1:4)
%     f = n+(k.*T);
%     stem(f,x_n);
% end
% hold off

figure(2)
subplot(2,1,[1 2]);
% Plot magnitudes
p2 = subplot(2,1,1);
k10 = -2:3;
stem(k10, magnitude);
xlabel(p2,'k');
ylabel(p2,'Magnitude');
legend(p2,'Magnitudes of a_k')

% Plot phases 
p3 = subplot(2,1,2);
k10 = -2:3;
stem(k10, phase);
xlabel(p3,'k');
ylabel(p3,'phase [deg]');
legend(p3,'Phases of a_k');

%% Q3
clear
clc

T = 8;
n = 0:1:7
w = 2.*pi./T;
magnitude = [];             % Array of magnitudes
phase = [];                 % Array of phases

x_n = 0;

for k = (0:7) 
    ak = ((cos((k.*pi)./4)+sin((3.*k.*pi)./4)));

    x_n = x_n + (ak .* exp(1j.*k.*w.*n));
    magnitude = [magnitude, abs(ak)];
    phase = [phase, rad2deg(angle(ak))];

end

figure(1)
stem(n,x_n);

figure(2)
subplot(2,1,[1 2]);
% Plot magnitudes
p2 = subplot(2,1,1);
k10 = 0:7;
stem(k10, magnitude);
xlabel(p2,'k');
ylabel(p2,'Magnitude');
legend(p2,'Magnitudes of a_k')

% Plot phases 
p3 = subplot(2,1,2);
k10 = 0:7;
stem(k10, phase);
xlabel(p3,'k');
ylabel(p3,'phase [deg]');
legend(p3,'Phases of a_k');