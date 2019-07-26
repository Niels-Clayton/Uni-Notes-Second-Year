%%%%%% Excercise 2.1 %%%%%%

s =5; 
log((s^2)-(2*s*cos(pi/5))+1); % returns 2.8853

s =0.95; 
log((s^2)-(2*s*cos(pi/5))+1); % returns -1.0069

s =1; 
log((s^2)-(2*s*cos(pi/5))+1); % returns -0.9624

%%%%%% Excercise 2.2 %%%%%%

x = 2 + 3i ; y = 1 - 1i;
z1 = x - y;   % returns 1.0000 + 4.0000i
z2 = x * y;   % returns 5.0000 + 1.0000i
z3 = x / y;   % returns -0.5000 + 2.5000i

%%%%%% Excercise 4.1 %%%%%%

A = [ 1 2 -1
    -2 -6 4 
    -1 -3 3 ];

b = [1; -2; 1];
x = A\b; % returns [-1; 2; 2]
A*x; % A*x retuens b
b;
A*x-b; % returns [0; 0; 0]

%%%%%% Excercise 4.2 %%%%%%

A = [1 2 3 4 
    1 4 9 16 
    1 8 27 64 
    1 16 81 256 ];
det(A); %returns 288
eig(A); % 277.9265 *
        %           [8.9315
        %           .1127
        %           1.0292]
        
inv(A);%    4.0000   -4.3333    1.5000   -0.1667
       %   -3.0000    4.7500   -2.0000    0.2500
       %    1.3333   -2.3333    1.1667   -0.1667
       %   -0.2500    0.4583   -0.2500    0.0417

%%%%%% Excercise 4.2.1 %%%%%%

det(A(1:3,1:3)); %returns 12

B = [1 1 0 0
    0 2 1 0
    0 0 3 1
    0 0 0 4];
c = [1;0;0;-1];

5*B; %   5     5     0     0
     %   0    10     5     0
     %   0     0    15     5
     %   0     0     0    20
     
B*c; % [1;0;-1;-4]

A*B; %   1           5          11          19
     %   1           9          31          73
     %   1          17          89         283
     %   1          33         259        1105
B*A;

%%%%%% Excercise 4.4 %%%%%%

b = [1 0 0 1]';
x = inv(A)*b; 
A*x; b; %they are equal

A = [1 1/2 1/3
    1/2 1/3 1/4
    1/3 1/4 1/5];
b = [1/4; 1/5; 1/6];
x = A\b;
A*x-b; %solution does satisfy the equations

A = rand(700);
b = rand(700,1);
ti = cputime();
x = A\b;size(x);
compute_time = cputime() - ti;
%total time to compute was 0.0156s


A = rand(700);
b = rand(700,1);
ti = cputime();
x = inv(A)*b;size(x);
compute_time = cputime() - ti;
%total time to compute was 0.0625s

%%%%%% Excercise 5 %%%%%%

A = [-8 3 5
    3 -12 4
    5 4 -12]; 
b = [-5; 0;0];
x = A\b; %   1.2903
    	 %   0.5645
         %   0.7258
         % this is the same as in the slides
        
A = [-8 3 5
    3 -12 4
    5 4 -12]; 
b = [-12; 0;0];
x = A\b; % When replacing the 5v voltage source with 12v
         %   3.0968
         %   1.3548
         %   1.7419
         
%%% Crammers rule %%%

A = [-8 3 5
    3 -12 4
    5 4 -12]; 
b = [-5; 0;0];

A1 = A;
A1(1:3, 1) = b;
I1 = det(A1)/det(A); % Returns 1.2903

A2 = A;
A2(1:3, 2) = b;
I2 = det(A2)/det(A); % Returns 0.5645

A3 = A;
A3(1:3, 3) = b;
I3 = det(A3)/det(A); % Returns 0.7258

%%% My 4 equations are:
%%% -13.7I1  +4.7I2 + 2.2I3  +0 = -6
%%%  4.7I1   -15I2  +0       +8.2I4 = 6
%%%  2.2I1   +0     -25.4I3  +22I4 = -5
%%%  0       +8.2I2 +22I3    -31.3I4 = 9

A = [-13700 4700 2200 0
    4700 -15000 0 8200
    2200 0 -25400 22000
    0 8200 22000 -31300];
b = [6; -6; 5; -9];
x = A\b;

% Outputs 0.0031
%         0.9618
%         0.6920
%         1.0259




















